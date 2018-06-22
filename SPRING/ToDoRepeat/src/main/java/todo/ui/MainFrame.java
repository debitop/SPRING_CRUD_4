package todo.ui;

import javax.annotation.PostConstruct;
import javax.swing.*;
import java.awt.*;

public class MainFrame extends JFrame {
//@PostConstruct
    public void init(){
        setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        setSize(new Dimension(600, 400));

        setVisible(true);
        setState(Frame.NORMAL);
        show();
    }
}
