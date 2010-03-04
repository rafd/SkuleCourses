// Created February 11, 2010 by Jimmy Lu
// Implements a ListCellRenderer for the JList in appletExamsUploader

package Client;

import javax.swing.JCheckBox;
import javax.swing.JList;
import javax.swing.ListCellRenderer;
import java.awt.*;

public class FileListCellRenderer implements ListCellRenderer {

    private JList _parentList;
    
    public FileListCellRenderer(JList parentList){
        this._parentList = parentList;
    }
    
    public Component getListCellRendererComponent(JList list, Object value, int index, boolean isSelected, boolean cellHasFocus) {
        FileNode node = (FileNode)value;
        JCheckBox checkbox = new JCheckBox();
        checkbox.setText(node.toString());
        checkbox.setBackground(this._parentList.getBackground());
        checkbox.setSelected(node.isSelected());
        return checkbox;
    }

}
