/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Car;

import dto.Showroom;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.DBUtils;

/**
 *
 * @author hoang
 */
public class ShowRoomDAO {
public static ArrayList<Showroom> getAllShowRoom() {
        ArrayList<Showroom> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from Showroom  ";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet != null) {
                    while (resultSet.next()) {
                        String managers = resultSet.getString("Managers");
                        String sales = resultSet.getString("Sales");
                        int room_id = resultSet.getInt("Room_id");
                        String address = resultSet.getString("address");
                        int phone = resultSet.getInt("phone");
                        String nameRoom = resultSet.getString("nameRoom");
                        String img = resultSet.getString("img");
                        String addfull = resultSet.getString("addressfull");
                        Showroom showroom = new Showroom(managers, sales, room_id, address, phone, nameRoom, img, addfull);
                        list.add(showroom);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public static ArrayList<Showroom> getShowrooms(int roomId) {

        Connection cn = null;
        ArrayList<Showroom> list = new ArrayList<>();
        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from Showroom  where Room_id = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, roomId);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    String managers = rs.getString("Managers");
                    String sales = rs.getString("Sales");
                    int room_id = rs.getInt("Room_id");
                    String address = rs.getString("address");
                    int phone = rs.getInt("phone");
                    String nameRoom = rs.getString("nameRoom");
                    String img = rs.getString("img");
                    String addfull = rs.getString("addressfull");
                    Showroom showroom = new Showroom(managers, sales, room_id, address, phone, nameRoom, img, addfull);
                    list.add(showroom);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static Showroom getShowroom(int roomId) {
        Connection cn = null;
        Showroom showroom = null;
        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from Showroom  where Room_id = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, roomId);
            ResultSet rs = pst.executeQuery();
            if (rs != null & rs.next()) {
                String managers = rs.getString("Managers");
                String sales = rs.getString("Sales");            
                String address = rs.getString("address");
                int phone = rs.getInt("phone");
                String nameRoom = rs.getString("nameRoom");
                String img = rs.getString("img");
                String addfull = rs.getString("addressfull");
                showroom = new Showroom(managers, sales, roomId, address, phone, nameRoom, img, addfull);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return showroom;
    }

    public static ArrayList<Showroom> getAllShowRoomHN() {
        ArrayList<Showroom> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from Showroom s where s.address like  'HN' ";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet != null) {
                    while (resultSet.next()) {
                        String managers = resultSet.getString("Managers");
                        String sales = resultSet.getString("Sales");
                        int room_id = resultSet.getInt("Room_id");
                        String address = resultSet.getString("address");
                        int phone = resultSet.getInt("phone");
                        String nameRoom = resultSet.getString("nameRoom");
                        String img = resultSet.getString("img");
                        String addfull = resultSet.getString("addressfull");
                        Showroom showroom = new Showroom(managers, sales, room_id, address, phone, nameRoom, img, addfull);
                        list.add(showroom);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public static ArrayList<Showroom> getAllShowRoomDN() {
        ArrayList<Showroom> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from Showroom s where s.address like  'DN' ";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet != null) {
                    while (resultSet.next()) {
                        String managers = resultSet.getString("Managers");
                        String sales = resultSet.getString("Sales");
                        int room_id = resultSet.getInt("Room_id");
                        String address = resultSet.getString("address");
                        int phone = resultSet.getInt("phone");
                        String nameRoom = resultSet.getString("nameRoom");
                        String img = resultSet.getString("img");
                        String addfull = resultSet.getString("addressfull");
                        Showroom showroom = new Showroom(managers, sales, room_id, address, phone, nameRoom, img, addfull);
                        list.add(showroom);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public static ArrayList<Showroom> getAllShowRoomTpHCM() {
        ArrayList<Showroom> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from Showroom s where s.address like  'HCM' ";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet != null) {
                    while (resultSet.next()) {
                        String managers = resultSet.getString("Managers");
                        String sales = resultSet.getString("Sales");
                        int room_id = resultSet.getInt("Room_id");
                        String address = resultSet.getString("address");
                        int phone = resultSet.getInt("phone");
                        String nameRoom = resultSet.getString("nameRoom");
                        String img = resultSet.getString("img");
                        String addfull = resultSet.getString("addressfull");
                        Showroom showroom = new Showroom(managers, sales, room_id, address, phone, nameRoom, img, addfull);
                        list.add(showroom);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public static boolean getInsertShowRoom(String managers, String sales, int room_id, String address, int phone, String nameRoom, String img) {
        boolean kq = false;
        Connection cn = null;

        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "insert into Showroom values(?,?,?,?,?,?,?)";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                preparedStatement.setString(1, managers);
                preparedStatement.setString(2, sales);
                preparedStatement.setInt(3, room_id);

                preparedStatement.setString(4, address);
                preparedStatement.setInt(5, phone);
                preparedStatement.setString(6, nameRoom);
                preparedStatement.setString(7, img);

                preparedStatement.executeUpdate();
                kq = true;
                cn.close();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return kq;
    }

    public static void main(String[] args) {
        ArrayList<Showroom> sr = dao.ShowRoomDAO. getShowrooms(1);
        System.out.println(sr.toString());

    }
}
