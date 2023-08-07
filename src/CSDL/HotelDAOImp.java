package CSDL;

import java.util.List;

import Model.HotelModel;

public class HotelDAOImp implements HotelDAO {

    private HotelGateway HotelGateway;

    public HotelDAOImp(HotelGateway HotelGateway) {
        this.HotelGateway = HotelGateway;
    }

    @Override
    public void addBill(HotelModel HotelModel) {
        HotelGateway.addBill(HotelModel);
    }

    @Override
    public void removeBill(int id) {
        HotelGateway.removeBill(id);
    }

    @Override
    public void editBill(HotelModel HotelModel) {
        HotelGateway.editBill(HotelModel);
    }

    @Override
    public List<HotelModel> getAllBill() {
        return HotelGateway.getAllBill();
    }

}
