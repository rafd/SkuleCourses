// Created May 24, 2009 by Jimmy Lu
// A wrapper around File class
// Children = subdirectories of this node
// Files = subdirectories + files of this node

package Client;

import java.io.File;
import java.io.FileFilter;
import java.util.Vector;

public class FileNode{

    private int _childCount;
    private File _file;
    private Vector<FileNode> _children;
    private Vector<FileNode> _fileList;
    
    // gets only non hidden directories
    public static FileFilter directoryFilter = new FileFilter(){
        public boolean accept(File file){
            return (file.isDirectory() && !file.isHidden());
        }
    };
    
    // gets all non hidden files + directories
    public static FileFilter fileFilter = new FileFilter() {
        public boolean accept(File file){
            return (!file.isDirectory() && !file.isHidden());
        }
    };
    
    public FileNode(File f){
        _file = f;
        _children = new Vector<FileNode>();
        _childCount = 1;    // bogus
    }
  
    public FileNode getChildAtIndex(int index){
        return _children.elementAt(index);
    }
    
    public int getIndexOfChild(FileNode child){
        return _children.indexOf(child);
    }
    
    public int getChildCount(){
        return _childCount;
    }
    
    public void setChildren(){
        _children.clear();
        File[] f = _file.listFiles(directoryFilter);
        if (f==null){
            _childCount = 0;
        } else {
            _childCount = f.length;
            for (int i=0;i<_childCount;i++){
                _children.add(new FileNode(f[i]));
            }
        }
    }
    
    // get the underlying File object
    public File getUnderlyingFile(){
        return _file;
    }
    
    // get all the files and subdirectories associated with this node
    public Vector<FileNode> getFiles(){
        return _fileList;
    }
    
    public void setFiles(){
        File[] f = _file.listFiles(fileFilter);
        if (f==null) return;
        if (_fileList==null) _fileList = new Vector<FileNode>();
        else _fileList.clear();
        //_fileList.addAll(_children);
        int len = f.length;
        for (int i=0; i<len; i++){
            _fileList.add(new FileNode(f[i]));
        }
    }
    
    public int getFileCount(){
        if (_fileList != null) return _fileList.size();
        else return 0;
    }
    
    public void addFiles(FileNode[] fileNodeArray){
        if (_fileList == null) _fileList = new Vector<FileNode>();
        
        int len = fileNodeArray.length;
        for (int i=0; i<len; i++){
            _fileList.add(fileNodeArray[i]);
        }
    }
    
    public void addFile(FileNode fileNode){
        if (_fileList == null) _fileList = new Vector<FileNode>();
        
        _fileList.add(fileNode);
    }
    
    public void removeFile(FileNode fileNode){
        if (_fileList != null) {
            _fileList.remove(fileNode);
        }
    }
    
    // overrides the default toString() to return a more user-friendly directory
    // description
    @Override
    public String toString(){
        String n = _file.getName();
        if (n==null || n.equals("")) return _file.getPath();
        else return n;
    }
}
