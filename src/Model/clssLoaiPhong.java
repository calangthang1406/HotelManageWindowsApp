/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class clssLoaiPhong {
    public int STT;
    public String loaiphong;
    public float DonGia;

    public clssLoaiPhong() {
    }

    public clssLoaiPhong(int STT, String loaiphong, float DonGia) {
        this.STT = STT;
        this.loaiphong = loaiphong;
        this.DonGia = DonGia;
    }

    public int getSTT() {
        return STT;
    }

    public void setSTT(int STT) {
        this.STT = STT;
    }

    public String getLoaiPhong() {
        return loaiphong;
    }

    public void setLoaiPhong(String loaiphong) {
        this.loaiphong = loaiphong;
    }

    public float getDonGia() {
        return DonGia;
    }

    public void setDonGia(float DonGia) {
        this.DonGia = DonGia;
    }

}
