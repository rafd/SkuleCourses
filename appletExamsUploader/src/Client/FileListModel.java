// Created May 26, 2009 by Jimmy Lu
// This class implements the model necessary to display the files and subdirectories
// associated with a given folder

package Client;

import java.util.Vector;
import javax.swing.ListModel;
import javax.swing.event.ListDataListener;

public class FileListModel implements ListModel{

    private Vector<FileNode> _children;
    private int _childCount;
    private FileNode _parent;
    
    public FileListModel(FileNode parent){
        _childCount = parent.getFileCount();
        _children = parent.getFiles();
        _parent = parent;
    }
    
    public FileNode getParent(){
        return _parent;
    }
    
    public int getSize() {
        return _childCount;
    }

    public Object getElementAt(int index) {
        return _children.elementAt(index);
    }

    public void addListDataListener(ListDataListener l) {}
    public void removeListDataListener(ListDataListener l) {}
    
}
