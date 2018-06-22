package todo.ui.button;

import java.awt.event.ActionEvent;

public class AddNewButtonActionListener extends ListTableActionListener {
    @Override
    public void actionPerformed(ActionEvent e) {
        list.add("New item");
        table.revalidate();
    }
}
