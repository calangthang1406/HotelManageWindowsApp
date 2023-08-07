/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.clssLoaiPhong;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class tbPhong {
    public static int DSPhong(Vector<clssLoaiPhong> dsmn) {
        Connection conn = CSDL.Database.ConnectDatabase();
        if (conn == null)
            return -1;
        String sql = "select * from loaiphong ";
        try {
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                clssLoaiPhong monan = new clssLoaiPhong();
                monan.setSTT(rs.getInt("ID"));
                monan.setLoaiPhong(rs.getString("loaiphong"));
                monan.setDonGia(rs.getFloat("DonGia"));
                dsmn.add(monan);
            }
            return dsmn.size();
        } catch (SQLException ex) {
            Logger.getLogger(tbPhong.class.getName()).log(Level.SEVERE, null, ex);
            return -2;
        }
    }

    public static int ThemPhong(int getID, String loaiphong, float dongia) {
        Connection conn = CSDL.Database.ConnectDatabase();
        if (conn == null)
            return -1;
        String sql = "insert into loaiphong(ID, loaiphong, DonGia) "
                + " values(?, ?, ?)";
        try {
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setInt(1, getID);
            stm.setString(2, loaiphong);
            stm.setFloat(3, dongia);
            int n = stm.executeUpdate();
            return n;
        } catch (SQLException ex) {
            Logger.getLogger(tbPhong.class.getName()).log(Level.SEVERE, null, ex);
            return -2;
        }
    }

    public static int SuaPhong(int stt, String tenmonan, float dongia) {
        Connection conn = CSDL.Database.ConnectDatabase();
        if (conn == null)
            return -1;
        String sql = "update loaiphong "
                + " set loaiphong=?, DonGia=? "
                + " where ID=?";
        try {
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, tenmonan);
            stm.setFloat(2, dongia);
            stm.setInt(3, stt);
            int n = stm.executeUpdate();
            return n;
        } catch (SQLException ex) {
            Logger.getLogger(tbPhong.class.getName()).log(Level.SEVERE, null, ex);
            return -2;
        }
    }

    public static int xoaPhong(int stt) {
        Connection conn = CSDL.Database.ConnectDatabase();
        if (conn == null)
            return -1;
        String sql = "delete from loaiphong "
                + " where ID=?";
        try {
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setInt(1, stt);
            int n = stm.executeUpdate();
            return n;
        } catch (SQLException ex) {
            Logger.getLogger(tbPhong.class.getName()).log(Level.SEVERE, null, ex);
            return -2;
        }
    }
}
