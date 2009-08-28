// Created May 26, 2009
// This class implements the model necessary to display the local file system roots

package Client;

import java.util.Vector;
import javax.swing.ComboBoxModel;
import javax.swing.event.ListDataListener;

public class ComboDriverModel implements ComboBoxModel{
    private Vector<FileNode> _roots;
    private FileNode _selectedItem;
    private int _size;
    
    public ComboDriverModel(Vector<FileNode> roots){
        _roots = roots;
        _size = roots.size();
    }

    public void setSelectedItem(Object anItem) {
        _selectedItem = (FileNode)anItem;
    }

    public Object getSelectedItem() {
        return _selectedItem;
    }

    public int getSize() {
        return _size;
    }

    public Object getElementAt(int index) {
        return _roots.elementAt(index);
    }

    public void addListDataListener(ListDataListener l) {}
    public void removeListDataListener(ListDataListener l) {}
}
