/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Account;
import dto.CarOffer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import utils.DBUtils;

/**
 *
 * @author DELL
 */
public class CarOfferDAO {

    public static ArrayList<CarOffer> listCarOffer() {
        Connection cn = null;
        ArrayList<CarOffer> list = new ArrayList<>();
        CarOffer carof = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "SELECT *\n"
                        + "FROM dbo.Orders";
                PreparedStatement pst = cn.prepareStatement(sql);
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
                        carof = new CarOffer(orderID, nameGuest, email, phone, addressGD, address, showRooms, timeSignup, price, img, description, status, accId, note, brandId, carName);
                        list.add(carof);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cn != null) {
                try {
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return list;
    }

    public static ArrayList<CarOffer> listCarOfferByStatus(int status) {
        Connection cn = null;
        ArrayList<CarOffer> list = new ArrayList<>();
        CarOffer carof = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "SELECT *\n"
                        + "FROM dbo.Orders\n"
                        + "Where status=? ";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, status);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int orderId = rs.getInt("OrderID");
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
                        int accId = rs.getInt("AccId");
                        String note = rs.getString("note");
                        int brandId = rs.getInt("BrandId");
                        String carName = rs.getString("CarName");
                        carof = new CarOffer(orderId, nameGuest, email, phone, addressGD, address, showRooms, timeSignup, price, img, description, status, accId, note, brandId, carName);

                        list.add(carof);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cn != null) {
                try {
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return list;
    }

    public static CarOffer listCarOfferByCarOfferId(int carofferId) {
        Connection cn = null;

        CarOffer carof = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "SELECT *\n"
                        + "FROM dbo.Orders\n"
                        + "Where OrderID=? ";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, carofferId);
                ResultSet rs = pst.executeQuery();
                if (rs != null && rs.next()) {

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
                    carof = new CarOffer(carofferId, nameGuest, email, phone, addressGD, address, showRooms, timeSignup, price, img, description, status, accId, note, brandId, carName);

                }
            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return carof;
    }

    public static ArrayList<CarOffer> listCarOfferByStatusSeller(int status, int showroom, int sellerId) {
        Connection cn = null;
        ArrayList<CarOffer> list = new ArrayList<>();
        CarOffer carof = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select * from dbo.Sellerbrand sb join dbo.Orders o on sb.BrandId = o.BrandId\n"
                        + "where o.showRooms = ? and o.status =? and sb.SellerId=?  ";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, showroom);
                pst.setInt(2, status);
                pst.setInt(3, sellerId);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int orderId = rs.getInt("OrderID");
                        String nameGuest = rs.getString("nameGuest");
                        String email = rs.getString("email");
                        String phone = rs.getString("phone");
                        String addressGD = rs.getString("addressGD");
                        String address = rs.getString("address");
                        String timeSignup = rs.getString("timeSignup");
                        String price = rs.getString("price");
                        String img = rs.getString("img");
                        String description = rs.getString("description");
                        int accId = rs.getInt("AccId");
                        String note = rs.getString("note");
                        int brandId = rs.getInt("BrandId");
                        String carName = rs.getString("CarName");
                        carof = new CarOffer(orderId, nameGuest, email, phone, addressGD, address, showroom, timeSignup, price, img, description, status, accId, note, brandId, carName);
                        list.add(carof);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cn != null) {
                try {
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return list;
    }

    public static boolean changeStatusCarOffer(int CarOfferId, int status) {
        boolean kq = false;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "UPDATE dbo.Orders\n"
                        + "SET status = ?\n"
                        + "WHERE OrderID = ? ";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, status);
                pst.setInt(2, CarOfferId);
                pst.executeUpdate();
                kq = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cn != null) {
                try {
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        return kq;
    }

    public static boolean UpdateCarOffer(String time, int offerId) {
        Connection cn = null;
        boolean kq = false;
        try {

            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "UPDATE dbo.Orders \n"
                        + "SET timeSignup  = ?, status = 2\n"
                        + "WHERE OrderID =?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, time);

                pst.setInt(2, offerId);
                pst.executeUpdate();
                kq = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return kq;
    }

    public static boolean UpdateCarOfferNote(String note, int offerId) {
        Connection cn = null;
        boolean kq = false;
        try {

            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "UPDATE dbo.Orders \n"
                        + "SET note  = ?, status = 3\n"
                        + "WHERE OrderID =?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, note);

                pst.setInt(2, offerId);
                pst.executeUpdate();
                kq = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return kq;
    }

    public static void main(String[] args) {
        if (CarOfferDAO.UpdateCarOfferNote("Vì khách không nghe máy!!!", 1) != false) {

            System.out.println("done");
        } else {
            System.out.println("false");
        }

    }

}
