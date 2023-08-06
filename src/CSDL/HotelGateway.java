package CSDL;

import java.util.List;
import Model.HotelModel;

public interface HotelGateway {

    void addBill(HotelModel HotelModel);

    void removeBill(int HotelId);

    void editBill(HotelModel HotelModel);

    HotelModel findBill(int HotelId);

    List<HotelModel> getAllBill();

}
