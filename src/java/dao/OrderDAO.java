/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Address;
import dto.Order;
import dto.OrderDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import utils.DBUtils;

/**
 *
 * @author DELL
 */
public class OrderDAO {

    public static ArrayList<Order> ListOrder() {
        ArrayList<Order> list = new ArrayList<>();
        Order or = null;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select *\n"
                        + "from dbo.OrderBuyCar";
                PreparedStatement pst = cn.prepareStatement(sql);
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
                        or = new Order(byCar, date, time, name, phone, email, CarId, status, accId, note);
                        list.add(or);
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

    public static ArrayList<OrderDetail> ListOrderDetail(String orderid) {
        ArrayList<OrderDetail> list = new ArrayList<>();
        Connection cn = null;
        OrderDetail od = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select DetailId,OrderID,CarID,quantity\n"
                        + "from OrderDetails\n"
                        + "where OrderID=?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, orderid);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        String detailid = rs.getString("DetailId");
                        String carid = rs.getString("CarID");
                        int quantity = rs.getInt("quantity");
                        od = new OrderDetail(detailid, orderid, carid, quantity);
                        list.add(od);
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

    public static boolean ChangeStatusOrder(int orderid, int orderId1) {
        boolean kq = false;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "UPDATE dbo.OrderBuyCar\n"
                        + "SET status = ?\n"
                        + "WHERE  ByCarId= ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, status);
                pst.setInt(2, orderid);
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

    public static ArrayList<Order> ListOrderByStatus(int status) {
        ArrayList<Order> list = new ArrayList<>();

        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select ByCarId,Date,Time,Name,Phone,Email,CarId,status,AccId,note\n"
                        + "                        from OrderBuyCar\n"
                        + "                        where status=?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, status);
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
                        Order or = new Order(byCar, date, time, name, phone, email, status, carId, accId, note);
                        list.add(or);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static ArrayList<Order> ListOrderByAcc(int acc) {
        ArrayList<Order> list = new ArrayList<>();

        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select ByCarId,Date,Time,Name,Phone,Email,CarId,status,AccId,note\n"
                        + "                        from OrderBuyCar\n"
                        + "                        where AccId=?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, acc);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int byCar = rs.getInt("ByCarId");
                        String date = rs.getString("Date");
                        String time = rs.getString("Time");
                        String name = rs.getString("Name");
                        int phone = rs.getInt("Phone");
                        String email = rs.getString("Email");
                        int status = rs.getInt("status");
                        int carId = rs.getInt("CarId");

                        String note = rs.getString("note");
                        Order or = new Order(byCar, date, time, name, phone, email, status, carId, acc, note);
                        list.add(or);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static boolean insertOrder(String nameGuest, String email, String phone, String addressGD, String address, int showRooms, String timeSignup, String price, String img, String description, int status, int accId, String note, int brandId, String carName) {
        boolean kq = false;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "insert into dbo.Orders values(?,?,?,?,?,?,?,?,?,?,?,? ,?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, nameGuest);
                pst.setString(2, email);
                pst.setString(3, phone);
                pst.setString(4, addressGD);
                pst.setString(5, address);
                pst.setInt(6, showRooms);
                pst.setString(7, timeSignup);
                pst.setString(8, price);
                pst.setString(9, img);
                pst.setString(10, description);
                pst.setInt(11, status);
                pst.setInt(12, accId);
                pst.setString(13, note);
                pst.setInt(14, brandId);
                pst.setString(15, carName);
                pst.executeUpdate();
                kq = true;
                cn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return kq;
    }

    public static boolean insertByCar(String date, String time, String name, int phone, String email, int carId, int status, int accId, String note) {
        boolean kq = false;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "insert into dbo.OrderBuyCar values(?,?,?,?,?,?,?,? ,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, date);
                pst.setString(2, time);
                pst.setString(3, name);
                pst.setInt(4, phone);
                pst.setString(5, email);
                pst.setInt(6, carId);
                pst.setInt(7, 1);
                pst.setInt(8, accId);
                pst.setString(9, note);
                pst.executeUpdate();
                kq = true;
                cn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return kq;
    }

    public static ArrayList<Address> getAll() {
        ArrayList<Address> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from Address  ";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet != null) {
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String AddressGD = resultSet.getString("AddressGD");
                        Address a = new Address(id, AddressGD);
                        list.add(a);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public static boolean UpdateOrderNote(String note, int orderId) {
        Connection cn = null;
        boolean kq = false;
        try {

            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "UPDATE dbo.OrderBuyCar\n"
                        + "                       SET note  = ?, status = 3\n"
                        + "                       WHERE ByCarId = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, note);
                pst.setInt(2, orderId);
                pst.executeUpdate();
                kq = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return kq;
    }

    public static void main(String[] args) {
        ArrayList<Order> order = OrderDAO.ListOrderByStatus(2);
        System.out.println(order.toString());
    }
}
