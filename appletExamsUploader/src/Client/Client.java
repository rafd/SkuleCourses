/*
 * BulkExamsUploader client
 * Client.java
 *
 * Created on August 27, 2009, 10:27 PM
 */

package Client;

import java.applet.AppletContext;
import java.awt.Container;
import java.awt.GridLayout;
import java.net.URL;
import javax.swing.JApplet;
import javax.swing.SwingUtilities;

/**
 *
 * @author  Jimmy
 */
public class Client extends JApplet {

    private AppletPane pane;
    
    // init components, GUI and everything
    @Override
    public void init() {
        //Execute a job on the event-dispatching thread:
        //creating this applet's GUI.
        try {
            SwingUtilities.invokeAndWait(new Runnable() {
                public void run() {
                    Container cp = getContentPane();
                    cp.setLayout(new GridLayout(1,1));
                    String username = getParameter("username");
                    String password = getParameter("password");
                    String handlerPath = getParameter("handlerPath");
                    String registrationPath = getParameter("registrationPath");
                    String year = getParameter("year");
                    String redirectPath = getParameter("url");
                    
                    URL url;
                    AppletContext ac = getAppletContext();
                    try {
                        url = new URL(redirectPath);
                        if (username!=null && password !=null && handlerPath!=null && year!=null) 
                            pane = new AppletPane(ac, url, handlerPath, registrationPath, username, password, year); 
                        cp.add(pane);
                    } catch (java.net.MalformedURLException e){
                        System.out.println("Cannot parse redirect info");
                    }
                }
            });
        } catch (Exception e) {
            System.err.println("GUI wasn't successfully created!");
            e.printStackTrace();
        }
    }
    
    //  perform cleanup
    @Override
    public void destroy() {
        try {
            SwingUtilities.invokeAndWait(new Runnable() {
                public void run() {
                    getContentPane().removeAll();
                }
            });
        } catch (Exception e) {
            System.err.println("Destroy wasn't successfully completed!");
            e.printStackTrace();
        } finally {
            pane = null;
        }
    }

}
