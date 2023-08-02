/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Car;
import dto.CarPurchaseContract;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.DBUtils;

/**
 *
 * @author hoang
 */
public class CarPurchaseContractDao {

    public static ArrayList<CarPurchaseContract> getCarPurchaseContract(int carId) {
        ArrayList<CarPurchaseContract> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from CarPurchaseContract where CarId = ? ";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);

                preparedStatement.setInt(1, carId);

                ResultSet rs = preparedStatement.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int contractId = rs.getInt("ContractId");

                        int sellerId = rs.getInt("SellerId");
                        String dateNotarize = rs.getString("DateNotarize");
                        String dateSale = rs.getString("DateSale");
                        int accId = rs.getInt("AccId");
                        int orderId = rs.getInt("OrderId");
                        CarPurchaseContract c = new CarPurchaseContract(contractId, carId, sellerId, dateNotarize, dateSale, accId, orderId);
                        list.add(c);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public static boolean insertCar(int carId, int sellerId, String dateNotarize, String dateSale, int accId, int orderId) {
        Connection cn = null;
        Car c = new Car();
        boolean kq = false;
        try {
            cn = DBUtils.makeConnection();

            if (cn != null) {
                String sql = "insert into dbo.CarPurchaseContract values(?,?,?,?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, carId);
                pst.setInt(2, sellerId);
                pst.setString(3, dateNotarize);
                pst.setString(4, dateSale);
                pst.setInt(5, accId);
                pst.setInt(6, orderId);
                pst.executeUpdate();
                kq = true;
                cn.close();

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return kq;

    }

    public static void main(String[] args) {
//        if (CarPurchaseContractDao.insertCar(110, 1, "30/7/2023", "28/07/2023", 0, 1) == true) {
//            System.out.println("OK");
//
//        } else {
//            System.out.println("..............");
//        }
ArrayList<CarPurchaseContract> c = CarPurchaseContractDao.getCarPurchaseContract(110);
        System.out.println(c.toString());
    }
}
