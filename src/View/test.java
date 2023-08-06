package View;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class test {

    public static void main(String[] args) {
        JFrame frame = new JFrame("Date Input Example");
        JTextField dateTextField = new JTextField(10);
        JButton extractButton = new JButton("Extract Day");

        extractButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String dateString = dateTextField.getText();
                try {
                    // Định dạng ngày tháng
                    DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                    LocalDate localDate = LocalDate.parse(dateString, dateFormatter);

                    // Lấy phần ngày
                    int day = localDate.getDayOfMonth();

                    JOptionPane.showMessageDialog(frame, "Ngày: " + day, "Kết quả", JOptionPane.INFORMATION_MESSAGE);
                } catch (Exception ex) {
                    JOptionPane.showMessageDialog(frame, "Không thể phân tích chuỗi ngày!", "Lỗi",
                            JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        JPanel panel = new JPanel();
        panel.add(new JLabel("Nhập ngày (yyyy-MM-dd): "));
        panel.add(dateTextField);
        panel.add(extractButton);

        frame.add(panel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }

}
