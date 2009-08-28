// Created May 24 2009 by Jimmy Lu
// Model used to display file system tree

package Client;

import javax.swing.event.TreeModelListener;
import javax.swing.tree.TreeModel;
import javax.swing.tree.TreePath;

public class FileTreeModel implements TreeModel{

    private FileNode _root;
    
    public FileTreeModel(FileNode root){
        _root = root;
    }
    
    public Object getRoot() {
        return _root;
    }

    public Object getChild(Object parent, int index) {
        return ((FileNode)parent).getChildAtIndex(index);
    }

    public int getChildCount(Object parent) {
        return ((FileNode)parent).getChildCount();
    }

    public boolean isLeaf(Object node) {
        return ((FileNode)node).getChildCount()==0? true:false;
    }

    public int getIndexOfChild(Object parent, Object child) {
        return ((FileNode)parent).getIndexOfChild((FileNode)child);
    }
    
    // TODO: must deal with directory changes
    public void valueForPathChanged(TreePath path, Object newValue) {}
    public void addTreeModelListener(TreeModelListener l) {}
    public void removeTreeModelListener(TreeModelListener l) {}

}
