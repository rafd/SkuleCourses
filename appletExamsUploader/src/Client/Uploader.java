/* Created May 18, 2009 by Jimmy Lu */

package Client;

import java.io.*;
import java.util.Vector;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.swing.*;

public class Uploader {

    private final String username;
    private final String password;
    private String phpHandlerPath;
    private String registrationPath;
    private Vector<File> filesVector;
    private boolean isUploading;
    private String metadata;
    private String year;

    private JTextArea txtStatus;
    private JProgressBar barProgress;

    // constructor
    public Uploader(String un, String pw, String handlerPath, String registrationPath, String year){
        this.username = un;
        this.password = pw;
        this.phpHandlerPath = handlerPath;
        this.registrationPath = registrationPath;
        this.year = year;
        isUploading = false;
    }

    public void setMetadata (String md){
        metadata = md;
    }

    // parse in the files to be uploaded
    public void setFiles(Vector<File> files){
        filesVector = files;
    }

    // these info are necessary for the successful creation
    // of album directories
    public void setYear(String year){
        this.year = year;
    }

    // optionally set display elements
    public void setDisplays(JTextArea stats, JProgressBar prog){
        txtStatus = stats;
        barProgress = prog;
    }

    public boolean isUploading(){
        return isUploading;
    }

    // begin upload
    public void uploadFiles()
    {
      isUploading = true;

      // http connection
      HttpURLConnection.setFollowRedirects(false);
      HttpURLConnection conn = null;

      // authorization
      String authHash = null;
      if ( username != null && password != null )
      {
          String s = username + ":" + password;
          //authHash = new sun.misc.BASE64Encoder().encode(s.getBytes());
          authHash = Base64Coder.encodeString(s);
      }

      //-- make an upload request for each file

      int len = filesVector.size();
      for (int i = 0; i < len; i++ )
      {

        // check for interrupt
        if ( Thread.currentThread().isInterrupted() ) continue;

        File f = (File) filesVector.get(i);
        String fileName = f.getName();
        int fileSize = (int) Math.floor(  (double) f.length() / 1024 );
        String statsMsg = "Uploading " + fileName + " (" + fileSize + "kB)";

        // refresh display elements
        if (txtStatus != null){
            writeToStatus(statsMsg);
        }
        if (barProgress != null){
            barProgress.setMaximum(len);
            barProgress.setValue(i+1);
            SwingUtilities.invokeLater( new Runnable(){
              public void run()
              {
                barProgress.revalidate();
              }
            });
        }

        try
        {
          conn = (HttpURLConnection) new URL(phpHandlerPath).openConnection();

          // authorize the connection to script
          if ( authHash != null )
          {
            conn.setDoInput( true );
            conn.setRequestProperty( "Authorization", "Basic " + authHash );
            conn.connect();
            conn.disconnect();
          }

          // POST data to script
          conn.setRequestMethod("POST");

          // http boundary string to encapsulate the multipart data
          String boundary = "boundary220394209402349823";

          //tail string
          String tail    = "\r\n--" + boundary + "--\r\n";

          // set content type to multipart
          conn.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary );

          conn.setDoOutput(true);

          // create metadata
          String metadataPart = "--" + boundary + "\r\n"
            + "Content-Disposition: form-data; name=\"metadata\"\r\n\r\n"
            + metadata + "\r\n";

          // create file data header
          String fileHeader1 = "--" + boundary + "\r\n"
            + "Content-Disposition: form-data; name=\"uploadfile\"; filename=\"" + fileName + "\"\r\n"
            + "Content-Type: application/octet-stream\r\n"
            + "Content-Transfer-Encoding: binary\r\n";

          long   fileLength  = f.length() + tail.length();
          String fileHeader2 = "Content-length: " + fileLength + "\r\n";
          String fileHeader  = fileHeader1 + fileHeader2 + "\r\n";

          // non-binar part of the message
          String stringData = metadataPart + fileHeader;
          String yearData=null;

          // write out album info data if applicable
          if (year != null){
            fileHeader1 = "--" + boundary + "\r\n"
                + "Content-Disposition: form-data; name=\"year\"\r\n"
                + "Content-Type: text/plain; charset=UTF-8\r\n"
                + "Content-Transfer-Encoding: 8bit\r\n";

            fileLength  = year.length() + tail.length();
            fileHeader2 = "Content-length: " + fileLength + "\r\n";
            fileHeader  = fileHeader1 + fileHeader2 + "\r\n";

            yearData = fileHeader + year + tail;
          }

          // request length
          long requestLength = stringData.length() + f.length() + tail.length();
          if (yearData != null) requestLength += yearData.length();
          conn.setRequestProperty("Content-length", "" + requestLength );

          // upload fresh data without buffering
          conn.setFixedLengthStreamingMode((int) requestLength );

          // server connection
          conn.connect();
          DataOutputStream out = new DataOutputStream( conn.getOutputStream() );
          out.writeBytes(stringData);
          out.flush();

          // write out main data
          int bytesRead = 0;
          byte b[] = new byte[1024];
          BufferedInputStream bufin = new BufferedInputStream(new FileInputStream(f));
          while ((bytesRead = bufin.read(b)) != -1)
          {
            if ( Thread.currentThread().isInterrupted() )
            {
              // todo : graceful abort
            }
            out.write(b, 0, bytesRead);
            out.flush();
          }

          // write closing boundary
          out.writeBytes(tail);
          out.flush();

          // write id and year info if applicable
          if (yearData != null){
            out.writeBytes(yearData);
            out.flush();
          }

          // close data output stream
          out.close();

          // get server response
          BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
          String line;
          String res = "";
          while ((line = rd.readLine()) != null)
          {
            final String l = line;
            res += l+"  ";
          }
          System.out.println(res+"\n");
          writeToStatus(res);

          try
          {
            /*
             * If we got a 401 (unauthorized), we can't get that data. We will
             * get an IOException. This makes no sense since a 401 does not
             * consitute an IOException, it just says we need to provide the
             * username again.
             */
            int responseCode        = conn.getResponseCode();
            String responseMessage  = conn.getResponseMessage();
            System.out.println("conn.getResponseCode(): " + responseCode);
            System.out.println("conn.getResponseMessage(): " + responseMessage);
          }
          catch (IOException ioe)
          {
              System.out.println(ioe.getMessage());
          }

        }
        catch (Exception e)
        {
            System.out.println("ERROR WITH UPLOADING");
            writeToStatus("ERROR WITH UPLOADING");
            e.printStackTrace();
        }
        finally
        {
          // close connection
          if (conn != null) conn.disconnect();
        }
      }

      //-- call exam registration script

      // refresh display elements
      if (txtStatus != null){
          writeToStatus("\nRegistering exams with the database...");
      }
      if (barProgress != null){
          barProgress.setIndeterminate(true);
          SwingUtilities.invokeLater( new Runnable(){
            public void run()
            {
              barProgress.revalidate();
            }
          });
      }

      // call script
      try
        {
          conn = (HttpURLConnection) new URL(registrationPath).openConnection();

          // authorize the connection to script
          if ( authHash != null )
          {
            conn.setDoInput( true );
            conn.setRequestProperty( "Authorization", "Basic " + authHash );
            conn.connect();
            conn.disconnect();
          }

          // POST data to script
          conn.setRequestMethod("POST");

          // http boundary string to encapsulate the multipart data
          String boundary = "boundary220394209402349823";

          //tail string
          String tail    = "\r\n--" + boundary + "--\r\n";

          // set content type to multipart
          conn.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary );

          conn.setDoOutput(true);

          // year
          String yearData=null;
          if (year != null){
            String header1 = "--" + boundary + "\r\n"
                + "Content-Disposition: form-data; name=\"year\"\r\n"
                + "Content-Type: text/plain; charset=UTF-8\r\n"
                + "Content-Transfer-Encoding: 8bit\r\n";

            long length  = year.length() + tail.length();
            String header2 = "Content-length: " + length + "\r\n";
            String header  = header1 + header2 + "\r\n";

            yearData = header + year + tail;
          }

          // request length
          long requestLength = 0;
          if (yearData != null) requestLength += yearData.length();
          conn.setRequestProperty("Content-length", "" + requestLength );

          // upload fresh data without buffering
          conn.setFixedLengthStreamingMode((int) requestLength );

          // server connection
          conn.connect();
          DataOutputStream out = new DataOutputStream( conn.getOutputStream() );

          // write directory and year info if applicable
          if (yearData != null){
            out.writeBytes(yearData);
            out.flush();
          }

          // close data output stream
          out.close();

          // get server response
          BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
          String line;
          String res = "";
          while ((line = rd.readLine()) != null)
          {
            final String l = line;
            res += l+"  ";
          }
          System.out.println(res+"\n");
          writeToStatus(res);

          try
          {
            /*
             * If we got a 401 (unauthorized), we can't get that data. We will
             * get an IOException. This makes no sense since a 401 does not
             * consitute an IOException, it just says we need to provide the
             * username again.
             */
            int responseCode        = conn.getResponseCode();
            String responseMessage  = conn.getResponseMessage();
            System.out.println("conn.getResponseCode(): " + responseCode);
            System.out.println("conn.getResponseMessage(): " + responseMessage);
          }
          catch (IOException ioe)
          {
              System.out.println(ioe.getMessage());
          }

        }
        catch (Exception e)
        {
            System.out.println("IMPORT FAILED");
            writeToStatus("IMPORT FAILED");
            e.printStackTrace();
        }
        finally
        {
          // close connection
          if (conn != null) conn.disconnect();
        }

      //-- all finished

      isUploading = false;
    }

    private void writeToStatus(String msg){
        txtStatus.setText(txtStatus.getText()+msg+"\n");
        txtStatus.setCaretPosition(txtStatus.getDocument().getLength());
    }
}
