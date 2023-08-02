/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Car;
import dto.CarOffer;
import dto.Order;
import dto.Seller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.DBUtils;

/**
 *
 * @author hoang
 */
public class SellerDao {

    public static ArrayList<CarOffer> getShowroom(int roomId) {
        CarOffer co = null;
        Connection cn = null;
        ArrayList<CarOffer> list = new ArrayList<>();
        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from dbo.Orders  where showRooms =?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, roomId);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {

                    int orderID = rs.getInt("OrderID");
                    String nameGuest = rs.getString("nameGuest");
                    String email = rs.getString("email");
                    String phone = rs.getString("phone");
                    String addressGD = rs.getString("addressGD");
                    String address = rs.getString("address");
                    int showRooms = rs.getInt("showRooms");
                    String timeSignup = rs.getString("timeSignup");
                    String price = rs.getString("price");
                    String img = rs.getString("img");
                    String description = rs.getString("description");
                    int status = rs.getInt("status");
                    int accId = rs.getInt("AccId");
                    String note = rs.getString("note");
                    int brandId = rs.getInt("BrandId");
                    String carName = rs.getString("CarName");
                    co = new CarOffer(orderID, nameGuest, email, phone, addressGD, address, showRooms, timeSignup, price, img, description, status, accId, note, brandId, carName);
                    list.add(co);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static ArrayList<Order> getShowrooms(int roomId) {
        Order o = null;
        Connection cn = null;
        ArrayList<Order> list = new ArrayList<>();

        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from dbo.OrderBuyCar o join dbo.Cars c on  o.CarId = c.CarID\n"
                    + "join dbo.Showroom s on c.Room_id = s.Room_id where s.Room_id = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, roomId);
            ResultSet rs = pst.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    int byCar = rs.getInt("ByCarId");
                    String date = rs.getString("Date");
                    String time = rs.getString("Time");
                    String name = rs.getString("Name");
                    int phone = rs.getInt("Phone");
                    String email = rs.getString("Email");
                    int CarId = rs.getInt("CarId");
                    int status = rs.getInt("status");
                    int accId = rs.getInt("AccId");
                    String note = rs.getString("note");
                    o = new Order(byCar, date, time, name, phone, email, CarId, status, accId, note);
                    list.add(o);

                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static ArrayList<Order> getShowroomsSeller(int roomId, int status, int sellerId) {
        Order o = null;
        Connection cn = null;
        ArrayList<Order> list = new ArrayList<>();

        try {
            cn = DBUtils.makeConnection();
            String sql = " select * from dbo.OrderBuyCar o\n"
                    + "join dbo.Cars c on  o.CarId = c.CarID\n"
                    + "join dbo.Sellerbrand s on s.BrandId= c.BrandID\n"
                    + "where o.status=? and s.SellerId=? and s.ShowroomId=?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, status);
            pst.setInt(2, sellerId);
            pst.setInt(3, roomId);
            ResultSet rs = pst.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    int byCar = rs.getInt("ByCarId");
                    String date = rs.getString("Date");
                    String time = rs.getString("Time");
                    String name = rs.getString("Name");
                    int phone = rs.getInt("Phone");
                    String email = rs.getString("Email");
                    int carId = rs.getInt("CarId");
                    int accId = rs.getInt("AccId");
                    String note = rs.getString("note");
                    int brandId = rs.getInt("BrandId");
                    o = new Order(byCar, date, time, name, phone, email, carId, status, accId, note, sellerId, brandId, roomId);
                    list.add(o);

                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static Seller getSeller(int userId) {
        Seller s = null;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from dbo.Sellers where UserID = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, userId);
            ResultSet rs = pst.executeQuery();
            if (rs != null && rs.next()) {
                int sellerId = rs.getInt("SellerID");
                int showRoomId = rs.getInt("showroom_id");
                s = new Seller(userId, sellerId, showRoomId);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return s;

    }

    public static Order listCarOfferByCarOrderId(int byCar) {
        Connection cn = null;

        Order or = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "SELECT *\n"
                        + "FROM dbo.OrderBuyCar\n"
                        + "Where ByCarId=? ";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, byCar);
                ResultSet rs = pst.executeQuery();
                if (rs != null && rs.next()) {

                    String Date = rs.getString("Date");
                    String Time = rs.getString("Time");
                    String Name = rs.getString("Name");         
                    int Phone = rs.getInt("Phone");
                    String Email = rs.getString("Email");
                    int CarId = rs.getInt("CarId");
                    int status = rs.getInt("status");
                    String note = rs.getString("note");
                    int AccId = rs.getInt("AccId");
                 
                    or = new Order(byCar, Date, Time, Name, Phone, Email, status, CarId, AccId, note);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return or;
    }

    public static void main(String[] args) {
        Order c = SellerDao.listCarOfferByCarOrderId(1);
        System.out.println(c.toString());

    }
}
