package View;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;

public class test {
    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> createAndShowGUI());
    }

    private static void createAndShowGUI() {
        JFrame frame = new JFrame("Enter Key Example");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JTextField textField = new JTextField(20);
        JLabel resultLabel = new JLabel();

        textField.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                submitAction(textField, resultLabel); // Thực hiện hành động khi Enter được nhấn
            }
        });

        frame.getContentPane().add(textField);
        frame.getContentPane().add(resultLabel);

        frame.setLayout(new BoxLayout(frame.getContentPane(), BoxLayout.PAGE_AXIS));
        frame.pack();
        frame.setVisible(true);
    }

    private static void submitAction(JTextField textField, JLabel resultLabel) {
        String inputText = textField.getText();
        resultLabel.setText("You entered: " + inputText);
        textField.setText(""); // Xóa nội dung sau khi nhập
    }
}
