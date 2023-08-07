package CSDL;

import java.util.List;

import Model.HotelModel;

public interface HotelDAO {
    void addBill(HotelModel HotelModel);

    void removeBill(int id);

    void editBill(HotelModel HotelModel);

    List<HotelModel> getAllBill();
}
