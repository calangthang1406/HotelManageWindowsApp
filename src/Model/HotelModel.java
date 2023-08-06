package Model;

public class HotelModel {

    private int setID;
    private String loaiPhong;
    private String donGia;
    private String soGio;
    private String ngayNhanPhong;
    private String hoaDon;
    private String ngayTraPhong;
    private String maHoaDon;
    private String tenKhachHang;
    private String ngayLapHoaDon;
    private String thanhTien;
    private int calculationDate;

    public HotelModel(int setID, String loaiPhong, String donGia, String soGio, String ngayNhanPhong, String hoaDon,
            String ngayTraPhong, String maHoaDon, String tenKhachHang, String ngayLapHoaDon, String thanhTien,
            int calculationDate) {

        this.setID = setID;
        this.loaiPhong = loaiPhong;
        this.donGia = donGia;
        this.soGio = soGio;
        this.ngayNhanPhong = ngayNhanPhong;
        this.hoaDon = hoaDon;
        this.ngayTraPhong = ngayTraPhong;
        this.maHoaDon = maHoaDon;
        this.tenKhachHang = tenKhachHang;
        this.ngayLapHoaDon = ngayLapHoaDon;
        this.thanhTien = thanhTien;
        this.calculationDate = calculationDate;

    }

    public int setID() {
        return setID;
    }

    public void getID(int setID) {
        this.setID = setID;
    }

    public String setLoaiPhong() {
        return loaiPhong;
    }

    public void getLoaiPhong(String loaiPhong) {
        this.loaiPhong = loaiPhong;
    }

    public String getSoGioSD() {
        return soGio;
    }

    public void getSoGioSD(String soGio) {
        this.soGio = soGio;
    }

    public String setLoaiHoaDon() {
        return hoaDon;
    }

    public void getLoaiHoaDon(String hoaDon) {
        this.hoaDon = hoaDon;
    }

    public String setNgayNhanPhong() {
        return ngayNhanPhong;
    }

    public void setNgayNhanPhong(String ngayNhanPhong) {
        this.ngayNhanPhong = ngayNhanPhong;
    }

    public String setNgayTraPhong() {
        return ngayTraPhong;
    }

    public void getNgayTraPhong(String ngayTraPhong) {
        this.ngayTraPhong = ngayTraPhong;
    }

    public String setNgayLapHoaDon() {
        return ngayLapHoaDon;
    }

    public void getNgayLapHoaDon(String ngayLapHoaDon) {
        this.ngayLapHoaDon = ngayLapHoaDon;
    }

    public String setTenKhachHang() {
        return tenKhachHang;
    }

    public void getTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
    }

    public String setMaHoaDon() {
        return maHoaDon;
    }

    public void getMaHoaDon(String maHoaDon) {
        this.maHoaDon = maHoaDon;
    }

    public int setSoNgayOLai() {
        return calculationDate;
    }

    public void getSoNgayOLai(int calculationDate) {
        this.calculationDate = calculationDate;
    }

    public String setDonGia() {
        return donGia;
    }

    public void getDonGia(String donGia) {
        this.donGia = donGia;
    }

    public String setThanhTien() {
        return thanhTien;
    }

    public void getThanhToan(String thanhTien) {

        this.thanhTien = thanhTien;
    }

}
