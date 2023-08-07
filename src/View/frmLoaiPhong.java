/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package View;

import Model.clssLoaiPhong;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author ADMIN
 */
public class frmLoaiPhong extends javax.swing.JFrame {

    public frmLoaiPhong() {
        initComponents();
        HienThiDSPhong();
        HienThiDSThongKe();
    }

    public void HienThiDSPhong() {
        Vector<clssLoaiPhong> ds = new Vector<clssLoaiPhong>();

        int ketqua = CSDL.tbPhong.DSPhong(ds);
        if (ketqua == -1) {
            JOptionPane.showMessageDialog(this, "Loi ket noi sql");
            return;
        } else if (ketqua == -2) {
            JOptionPane.showMessageDialog(this, "Loi sql");
            return;
        } else {
            DefaultTableModel dtm = (DefaultTableModel) this.tblPhong.getModel();
            dtm.setRowCount(0);
            for (clssLoaiPhong dss : ds)
                dtm.addRow(new Object[] { dss.getSTT(), dss.getLoaiPhong(), dss.getDonGia() });
        }
    }

    private boolean isFilterByMonth = false;

    public void HienThiDSThongKe() {
        Connection conn = CSDL.Database.ConnectDatabase();
        if (conn == null) {
            JOptionPane.showMessageDialog(this, "Loi ket noi");
            return;
        }
        String sql = "select * from thong_ke";

        try {
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            DefaultTableModel dtm = (DefaultTableModel) this.tbThongKe.getModel();
            dtm.setNumRows(0);
            int dem = 0;
            while (rs.next()) {
                dem++;
                int getID = rs.getInt("ID");
                String loaiPhong = rs.getString("loaiphong");
                float donGia = rs.getFloat("donGia");
                int soGio = rs.getInt("soGio");
                String hoaDon = rs.getString("hoaDon");
                String ngayNhan = rs.getString("ngayNhan");
                String ngayTra = rs.getString("ngayTra");
                int maHD = rs.getInt("maHoaDon");
                String tenKhacHang = rs.getString("tenKhachHang");
                String ngayLapHD = rs.getString("ngayLapHoaDon");
                float thanhTien = rs.getFloat("thanhtien");
                int tinhSoNgayO = rs.getInt("soNgayO");

                dtm.addRow(new Object[] { Integer.toString(getID), loaiPhong, Float.toString(donGia),
                        Integer.toString(soGio),
                        hoaDon, ngayNhan, ngayTra, Integer.toString(maHD),
                        tenKhacHang, ngayLapHD, Float.toString(thanhTien), tinhSoNgayO });
            }

            if (dem == 0) {
                JOptionPane.showMessageDialog(this,
                        "ch\u01B0a c\u00F3 ph\u00F2ng n\u00E0o \u0111\u01B0\u1EE3c thanh to\u00E1n");
            }
        } catch (SQLException ex) {
            Logger.getLogger(frmDKPhong.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(this, "Loi sql " + ex.getMessage());
            return;
        }
    }

    public void HienThiDSThongKeByThang() {
        Connection conn = CSDL.Database.ConnectDatabase();
        if (conn == null) {
            JOptionPane.showMessageDialog(this, "Loi ket noi");
            return;
        }
        String sql = "select * from thong_ke";

        try {
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            DefaultTableModel dtm = (DefaultTableModel) this.tbThongKe.getModel();
            dtm.setNumRows(0);
            int dem = 0;
            while (rs.next()) {
                dem++;
                int getID = rs.getInt("ID");
                String loaiPhong = rs.getString("loaiphong");
                float donGia = rs.getFloat("donGia");
                int soGio = rs.getInt("soGio");
                String hoaDon = rs.getString("hoaDon");
                String ngayNhan = rs.getString("ngayNhan");
                String ngayTra = rs.getString("ngayTra");
                int maHD = rs.getInt("maHoaDon");
                String tenKhacHang = rs.getString("tenKhachHang");
                String ngayLapHD = rs.getString("ngayLapHoaDon");
                float thanhTien = rs.getFloat("thanhtien");
                int tinhSoNgayO = rs.getInt("soNgayO");

                DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                LocalDate setThang = LocalDate.parse(ngayLapHD, dateTimeFormatter);

                int getThang = setThang.getMonthValue();
                String getMonthFromUser = txtSearch.getText();
                int UserMonthInt = Integer.parseInt(getMonthFromUser);

                if (getThang == UserMonthInt) {
                    dtm.addRow(new Object[] { Integer.toString(getID), loaiPhong, Float.toString(donGia),
                            Integer.toString(soGio),
                            hoaDon, ngayNhan, ngayTra, Integer.toString(maHD),
                            tenKhacHang, ngayLapHD, Float.toString(thanhTien), tinhSoNgayO });
                }
            }

            if (dem == 0) {
                JOptionPane.showMessageDialog(this,
                        "ch\u01B0a c\u00F3 ph\u00F2ng n\u00E0o \u0111\u01B0\u1EE3c thanh to\u00E1n");
            }
        } catch (SQLException ex) {
            Logger.getLogger(frmDKPhong.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(this, "Loi sql " + ex.getMessage());
            return;
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated
    // <editor-fold defaultstate="collapsed" desc="Generated
    // <editor-fold defaultstate="collapsed" desc="Generated
    // <editor-fold defaultstate="collapsed" desc="Generated
    // <editor-fold defaultstate="collapsed" desc="Generated
    // <editor-fold defaultstate="collapsed" desc="Generated
    // Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        btnThem = new javax.swing.JButton();
        btnSua = new javax.swing.JButton();
        btnXoa = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblPhong = new javax.swing.JTable();
        jPanel3 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        tbThongKe = new javax.swing.JTable();
        btnTongtien = new javax.swing.JButton();
        btnLamMoiDS = new javax.swing.JButton();
        txtSearch = new javax.swing.JTextField();
        jMenuBar2 = new javax.swing.JMenuBar();
        jMenu3 = new javax.swing.JMenu();
        jMenuItem1 = new javax.swing.JMenuItem();
        jMenuItem2 = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 51, 51));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Loại Phòng");

        btnThem.setText("Thêm");
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });

        btnSua.setText("Sửa");
        btnSua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSuaActionPerformed(evt);
            }
        });

        btnXoa.setText("Xóa");
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaActionPerformed(evt);
            }
        });

        tblPhong.setModel(new javax.swing.table.DefaultTableModel(
                new Object[][] {

                },
                new String[] {
                        "ID", "Loại phòng", "Đơn giá"
                }));
        jScrollPane1.setViewportView(tblPhong);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
                jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(jPanel1Layout.createSequentialGroup()
                                                .addGap(30, 30, 30)
                                                .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 98,
                                                        javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGap(18, 18, 18)
                                                .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, 88,
                                                        javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGap(18, 18, 18)
                                                .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, 94,
                                                        javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGap(0, 0, Short.MAX_VALUE))
                                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING,
                                                jPanel1Layout.createSequentialGroup()
                                                        .addContainerGap()
                                                        .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE,
                                                                javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                        .addGroup(jPanel1Layout.createSequentialGroup()
                                                .addContainerGap()
                                                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 1196,
                                                        Short.MAX_VALUE)))
                                .addContainerGap()));
        jPanel1Layout.setVerticalGroup(
                jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(jPanel1Layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel1)
                                .addGap(27, 27, 27)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 40,
                                                javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, 40,
                                                javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(btnXoa, javax.swing.GroupLayout.DEFAULT_SIZE,
                                                javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 318,
                                        javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addContainerGap(27, Short.MAX_VALUE)));

        jTabbedPane1.addTab("Loại phòng", jPanel1);

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 51, 51));
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("Thống kê");

        tbThongKe.setModel(new javax.swing.table.DefaultTableModel(
                new Object[][] {

                },
                new String[] {
                        "ID", "Tên", "Đơn giá", "S\u1ED1 gi\u1EDD s\u1EED d\u1EE5ng",
                        "Lo\u1EA1i ho\u00E1 \u0111\u01A1n",
                        "Ng\u00E0y nh\u1EADn ph\u00F2ng",
                        "Ng\u00E0y tr\u1EA3 ph\u00F2ng",
                        "M\u00E3 ho\u00E1 \u0111\u01A1n", "T\u00EAn kh\u00E1ch h\u00E0ng",
                        "Ng\u00E0y l\u1EADp ho\u00E1 \u0111\u01A1n",
                        "T\u1ED5ng ti\u1EC1n", "S\u1ED1 ng\u00E0y \u1EDF l\u1EA1i"
                }));
        jScrollPane3.setViewportView(tbThongKe);

        btnTongtien.setText("T\u00EDnh trung b\u00ECnh");
        btnTongtien.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnTongtienActionPerformed(evt);
            }
        });

        btnLamMoiDS.setText("Làm mới danh sách");
        btnLamMoiDS.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLamMoiDSActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
                jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(jPanel3Layout.createSequentialGroup()
                                .addContainerGap()
                                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE,
                                                javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addGroup(jPanel3Layout.createSequentialGroup()
                                                .addComponent(btnTongtien)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                .addComponent(txtSearch, javax.swing.GroupLayout.DEFAULT_SIZE, 958,
                                                        Short.MAX_VALUE)
                                                .addGap(18, 18, 18)
                                                .addComponent(btnLamMoiDS))
                                        .addComponent(jScrollPane3))
                                .addContainerGap()));
        jPanel3Layout.setVerticalGroup(
                jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(jPanel3Layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel3)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 319,
                                        javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(btnTongtien)
                                        .addComponent(txtSearch, javax.swing.GroupLayout.PREFERRED_SIZE,
                                                javax.swing.GroupLayout.DEFAULT_SIZE,
                                                javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(btnLamMoiDS))
                                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)));

        jTabbedPane1.addTab("Thống kê", jPanel3);

        jMenu3.setText("Hệ thống");

        jMenuItem1.setText("Đăng xuất");
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem1);

        jMenuItem2.setText("Thoát");
        jMenuItem2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem2ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem2);

        jMenuBar2.add(jMenu3);

        setJMenuBar(jMenuBar2);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(jTabbedPane1));
        layout.setVerticalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 496,
                                        javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jMenuItem2ActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_jMenuItem2ActionPerformed

        this.dispose();
    }// GEN-LAST:event_jMenuItem2ActionPerformed

    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_jMenuItem1ActionPerformed

        frmLuaChonNguoiDung chon = new frmLuaChonNguoiDung();
        chon.setVisible(true);
        this.dispose();
    }// GEN-LAST:event_jMenuItem1ActionPerformed

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_btnThemActionPerformed

        frmThemLoaiPhong them = new frmThemLoaiPhong();
        them.csLoaiPhong = this;
        them.setVisible(true);
    }// GEN-LAST:event_btnThemActionPerformed

    private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {

        int i = this.tblPhong.getSelectedRow();
        if (i < 0) {
            JOptionPane.showMessageDialog(this, "Chưa chọn phòng");
            return;
        }
        int hoi = JOptionPane.showConfirmDialog(this, "Chắc chắn xóa ??", "Thông báo !!!", JOptionPane.YES_NO_OPTION);
        if (hoi == JOptionPane.YES_OPTION) {
            int id = (int) this.tblPhong.getValueAt(i, 0);
            int ketqua = CSDL.tbPhong.xoaPhong(id);
            if (ketqua == -1) {
                JOptionPane.showMessageDialog(this, "Loi ket noi sql");
                return;
            } else if (ketqua == -2) {
                JOptionPane.showMessageDialog(this, "Loi sql");
                return;
            } else {
                JOptionPane.showMessageDialog(this, "Xóa thành công");
                HienThiDSPhong();
            }
        }
    }

    private void btnSuaActionPerformed(java.awt.event.ActionEvent evt) {

        int i = this.tblPhong.getSelectedRow();
        if (i < 0) {
            JOptionPane.showMessageDialog(this, "Chưa chọn loai phong");
            return;
        }
        int id = (int) this.tblPhong.getValueAt(i, 0);
        String tenLoaiPhong = (String) this.tblPhong.getValueAt(i, 1);
        float dongia = (float) this.tblPhong.getValueAt(i, 2);

        clssLoaiPhong loaiPhong = new clssLoaiPhong(id, tenLoaiPhong, dongia);
        frmSuaLoaiPhong suaLoaiPhong = new frmSuaLoaiPhong();
        suaLoaiPhong.loaiphong = loaiPhong;
        suaLoaiPhong.csLoaiPhong = this;
        suaLoaiPhong.setVisible(true);
    }

    private void btnTongtienActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_btnTongtienActionPerformed

        HienThiDSThongKeByThang();

        DefaultTableModel dtm = (DefaultTableModel) this.tbThongKe.getModel();
        int row = dtm.getRowCount();
        float tongtien = 0f;
        for (int i = 0; i < row; i++) {
            String x = (String) this.tbThongKe.getValueAt(i, 10);
            float xx = Float.parseFloat(x);
            tongtien += xx;
        }
        float tb = tongtien / row;
        String tbThangTitle = txtSearch.getText();
        String MesTitle = "Trung bình tháng " + tbThangTitle;
        String MessBody = Float.toString(tb);
        JOptionPane.showMessageDialog(this, MessBody, MesTitle, JOptionPane.INFORMATION_MESSAGE);

        int hoi = JOptionPane.showConfirmDialog(this,
                "C\u00F3 mu\u1ED1n hi\u1EC3n th\u1ECB t\u1EA5t c\u1EA3 ho\u00E1 \u0111\u01A1n ??", "Thông báo !!!",
                JOptionPane.YES_NO_OPTION);
        if (hoi == JOptionPane.YES_OPTION) {
            HienThiDSThongKe(); // Thực hiện hàm khi chọn "Yes"
        } else if (hoi == JOptionPane.NO_OPTION) {
            HienThiDSThongKeByThang();
        }

    }// GEN-LAST:event_btnTongtienActionPerformed

    private void btnLamMoiDSActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_btnLamMoiDSActionPerformed

        Connection conn = CSDL.Database.ConnectDatabase();
        if (conn == null) {
            JOptionPane.showMessageDialog(this, "Loi ket noi");
            return;
        }
        String sql = "delete from thong_ke ";

        try {
            PreparedStatement stm = conn.prepareStatement(sql);
            int n = stm.executeUpdate();
            if (n > 0) {
                JOptionPane.showMessageDialog(this, "Làm mới thành công");
            }
        } catch (SQLException ex) {
            Logger.getLogger(frmThanhToan.class.getName()).log(Level.SEVERE, null, ex);
        }

        String sqll = "ALTER TABLE thong_ke AUTO_INCREMENT = 1";

        try {
            PreparedStatement stm = conn.prepareStatement(sqll);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(frmThanhToan.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(this, "Lôi sql " + ex.getMessage());
        }

        HienThiDSThongKe();
    }// GEN-LAST:event_btnLamMoiDSActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        // <editor-fold defaultstate="collapsed" desc=" Look and feel setting code
        // (optional) ">
        /*
         * If Nimbus (introduced in Java SE 6) is not available, stay with the default
         * look and feel.
         * For details see
         * http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(frmLoaiPhong.class.getName()).log(java.util.logging.Level.SEVERE, null,
                    ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(frmLoaiPhong.class.getName()).log(java.util.logging.Level.SEVERE, null,
                    ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(frmLoaiPhong.class.getName()).log(java.util.logging.Level.SEVERE, null,
                    ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(frmLoaiPhong.class.getName()).log(java.util.logging.Level.SEVERE, null,
                    ex);
        }
        // </editor-fold>
        // </editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new frmLoaiPhong().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnLamMoiDS;
    private javax.swing.JButton btnSua;
    private javax.swing.JButton btnThem;
    private javax.swing.JButton btnTongtien;
    private javax.swing.JButton btnXoa;
    private javax.swing.JButton btnSearch;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenuBar jMenuBar2;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTable tbThongKe;
    private javax.swing.JTable tblPhong;
    private javax.swing.JTextField txtSearch;
    // End of variables declaration//GEN-END:variables
}
