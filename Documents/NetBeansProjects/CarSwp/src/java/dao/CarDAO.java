/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Car;
import dto.CarInfo;
import dto.Img_Car;
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
public class CarDAO {

    public static ArrayList<Car> getCars(int roomId) {
        Car c = null;
        Connection cn = null;
        ArrayList<Car> list = new ArrayList<>();
        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from Cars  where Room_id = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, roomId);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    roomId = rs.getInt("Room_id");
                    String carId = rs.getString("CarID");
                    String carName = rs.getString("CarName");
                    int price = rs.getInt("price");
                    String img = rs.getString("imgPath");
                    Date manufacDate = rs.getDate("ManufacDate");
                    String description = rs.getString("description");
                    Boolean status = rs.getBoolean("status");
                    String owner = rs.getString("Owner");
                    String brandId = rs.getString("BrandID");
                    c = new Car(carId, carName, img, roomId, price, manufacDate, description, true, owner, brandId);
                    list.add(c);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static ArrayList<CarInfo> getAllCarInfo(String carId) {
        ArrayList<CarInfo> list = new ArrayList<>();
        CarInfo ci = null;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            String sql = "Select * from CarInfor \n"
                    + "where CarID like ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, carId);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                carId = rs.getString("CarID");
                String inforId = rs.getString("InforID");
                String style = rs.getString("Style");
                String km_gone = rs.getString("Km_gone");
                String gear = rs.getString("gear");
                String fuel = rs.getString("fuel");
                String origin = rs.getString("Origin");
                String color = rs.getString("Color");
                int seats = rs.getInt("Seats");

                ci = new CarInfo(carId, inforId, style, km_gone, gear, fuel, origin, color, seats);
                list.add(ci);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
 public static ArrayList<Car> getCarB(int BrandID) {
        ArrayList<Car> list = new ArrayList<>();
        Connection cn = null;
        Car c = null;
        try {
            cn = utils.DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select CarID, CarName, price, imgPath, Room_id, ManufacDate, description, status, Owner, BrandID\n"
                        + "from dbo.Cars\n"
                        + "where BrandID = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, BrandID);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        String CarID = rs.getString("CarID");
                        String CarName = rs.getString("CarName");
                        int price = rs.getInt("price");
                        String imgPath = rs.getString("imgPath");
                        int RoomID = rs.getInt("Room_id");
                        Date ManufacDate = rs.getDate("ManufacDate");
                        String des = rs.getString("description");
                        boolean status = rs.getBoolean("status");
                        String Owner = rs.getString("Owner");
                        String brandId = rs.getString("BrandID");
                        c = new Car(CarID, CarName, des, RoomID, price, ManufacDate, des, status, Owner, brandId);
                        list.add(c);
                    }
                }
            }

        } catch (Exception e) {
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

    public static ArrayList<Car> getCar(String carId) {
        Car c = null;
        Connection cn = null;
        ArrayList<Car> list = new ArrayList<>();
        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from Cars  where CarID like ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, carId);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    carId = rs.getString("CarID");
                    int roomId = rs.getInt("Room_id");
                    String carName = rs.getString("CarName");
                    int price = rs.getInt("price");
                    String img = rs.getString("imgPath");
                    Date manufacDate = rs.getDate("ManufacDate");
                    String description = rs.getString("description");
                    Boolean status = rs.getBoolean("status");
                    String owner = rs.getString("Owner");
                    String brandId = rs.getString("BrandID");
                    c = new Car(carId, carName, img, roomId, price, manufacDate, description, true, owner, brandId);
                    list.add(c);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static ArrayList<Car> getCar1(String searchName) {
        ArrayList<Car> list = new ArrayList<>();
        Connection cn = null;
        Car c = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select *\n"
                        + " from dbo.Cars where CarName like ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, "%" + searchName + "%");
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while(rs.next()){
                    String carName = rs.getString("CarName");
                    String carID = rs.getString("CarID");
                    int price = rs.getInt("price");
                    String imgpath = rs.getString("imgPath");
                    String Room_id = rs.getString("Room_id");
                    Date ManufacDate = rs.getDate("ManufacDate");
                    String description = rs.getString("description");
                    Boolean status = rs.getBoolean("status");
                    String owner = rs.getString("Owner");
                    String BrandID = rs.getString("BrandID");

                    c = new Car(carID, carName, sql, price, price, ManufacDate, description, true, owner, BrandID);
                    list.add(c);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
//    public static ArrayList<Img_Car> getImgCar(){
//    Img_Car ic = null;
//    ArrayList list = new ArrayList<>();
//    Connection cn = null;
//    try{
//    cn = DBUtils.makeConnection();
//    String sql = "Select * from "
//    }catch(Exception e){
//    e.printStackTrace();
//    }
//            
//    return list;
//    }

    public static void main(String[] args) {

//        System.out.println("-----------------------");
//        CarInfo ci = CarDAO.getAllCarInfo("1");
//
//        System.out.println(ci.toString() + " ");
        System.out.println("----------------------");
        ArrayList<Car> c = CarDAO.getCars(1);
        for (Car c1 : c) {
            System.out.println(c1.getCarName());
        }
    }

}
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
//package DAO;
//
//import dto.Car;
//import DTO.brand;
//import DTO.Showroom;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.Connection;
//import java.util.ArrayList;
//import java.util.Date;
//import utils.DBUtils;
//
///**
// *
// * @author dangd
// */
//public class CarDAO {
//
//    public static ArrayList<Car> getAll() {
//        ArrayList<Car> list = new ArrayList<>();
//        Connection cn = null;
//        try {
//            cn = DBUtils.makeConnection();
//            if (cn != null) {
//
//                String sql = "Select * from Cars join Brands on dbo.Cars.BrandID=dbo.Brands.BrandID";
//                PreparedStatement preparedStatement = cn.prepareStatement(sql);
//                ResultSet rs = preparedStatement.executeQuery();
//                if (rs != null) {
//                    while (rs.next()) {
//                        String CarID = rs.getString("CarID");
//                        String CarName = rs.getString("CarName");
//                        int price = rs.getInt("price");
//                        String imgpath = rs.getString("imgPath");
//                        String Room_id = rs.getString("Room_id");
//                        Date ManufacDate = rs.getDate("ManufacDate");
//                        String description = rs.getString("description");
//                        Boolean status = rs.getBoolean("status");
//                        String owner = rs.getString("Owner");
//                        String BrandID = rs.getString("BrandID");
//                        String brandName = rs.getString("BrandName");
//                        Car car = new Car(CarID, CarName, price, imgpath, CarID, ManufacDate, description, status, owner, BrandID, brandName);
//                        list.add(car);
//                    }
//                }
//            }
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//
//    public static ArrayList<Car> getCars(String keyword, String searchby) {
//        ArrayList<Car> list = new ArrayList<>();
//        Connection cn = null;
//        try {
//            cn = DBUtils.makeConnection();
//            if (cn != null && searchby != null) {
//                String s = null;
//
//                if (searchby.equals("byname")) {
//                    s = "select CarID,CarName,price, Cars.imgPath, Room_id,Manufacdate,\n"
//                            + "	Description, Status,Owner,dbo.Cars.BrandID from Cars \n"
//                            + "join Brands on Cars.BrandID = dbo.Brands.BrandID where Cars.CarName like ?";
//                } else {
//                    s = "select CarID,CarName,price, Cars.imgPath, Room_id,Manufacdate,\n"
//                            + "	Description, Status,Owner,dbo.Cars.BrandID from Cars \n"
//                            + "join Brands on Cars.BrandID = dbo.Brands.BrandID where BrandName like ?";
//                }
//                PreparedStatement pst = cn.prepareStatement(s);
//                pst.setString(1, "%" + keyword + "%");
//                ResultSet rs = pst.executeQuery();
//                if (rs != null) {
//                    while (rs.next()) {
//                        String CarID = rs.getString("CarID");
//                        String CarName = rs.getString("CarName");
//                        int price = rs.getInt("price");
//                        String imgpath = rs.getString("imgPath");
//                        String Room_id = rs.getString("Room_id");
//                        Date ManufacDate = rs.getDate("ManufacDate");
//                        String description = rs.getString("description");
//                        Boolean status = rs.getBoolean("status");
//                        String owner = rs.getString("Owner");
//                        String BrandID = rs.getString("BrandID");
//                        String BrandName = rs.getString("BrandName");
//                        Car car = new Car(CarID, CarName, price, imgpath, Room_id, ManufacDate, description, status, owner, BrandID, BrandName);
//                        list.add(car);
//                    }
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (cn != null) {
//                try {
//                    cn.close();
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//            }
//        }
//        return list;
//    }
//
//    public static ArrayList<Car> getCar(String searchName) {
//        ArrayList<Car> list = new ArrayList<>();
//        Connection cn = null;
//        Car c = null;
//        try {
//            cn = DBUtils.makeConnection();
//            if (cn != null) {
//                String sql = "select *\n"
//                        + " from dbo.Cars where CarName like ?";
//                PreparedStatement pst = cn.prepareStatement(sql);
//                pst.setString(1, "%" + searchName + "%");
//                ResultSet rs = pst.executeQuery();
//                if (rs != null ) {
//                    while (rs.next()){
//                    String carName = rs.getString("CarName");
//                    String carID = rs.getString("CarID");
//                    int price = rs.getInt("price");
//                    String imgpath = rs.getString("imgPath");
//                    String Room_id = rs.getString("Room_id");
//                    Date ManufacDate = rs.getDate("ManufacDate");
//                    String description = rs.getString("description");
//                    Boolean status = rs.getBoolean("status");
//                    String owner = rs.getString("Owner");
//                    String BrandID = rs.getString("BrandID");
//                    
//                    c = new Car(carID, carName, price, imgpath, Room_id, ManufacDate,
//                            description, status, owner, BrandID);
//                    list.add(c);
//                }}
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }         return list;
//    }
//    
//    
//    
//     
//
//    public static ArrayList<brand> getBrandCars(String searchBrand) {
//        ArrayList<brand> list = new ArrayList<>();
//        Connection cn = null;
//        brand b = null;
//        try {
//            cn = DBUtils.makeConnection();
//            if (cn != null) {
//                String s = "select * from Brands where BrandName like ?";
//                PreparedStatement pst = cn.prepareStatement(s);
//                pst.setString(1, searchBrand);
//                ResultSet rs = pst.executeQuery();
//                if (rs != null && rs.next()) {
//                    String brandname = rs.getString("BrandName");
//                    String brandid = rs.getString("BrandID");
//                    String imgPath = rs.getString("imgPath");
//                    b = new brand(0, brandname, imgPath);
//
//                    list.add(b);
//
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (cn != null) {
//                try {
//                    cn.close();
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//            }
//        }
//
//        return list;
//    }
//
//    public static void main(String[] args) {
//      ArrayList<Car> c = CarDAO.getCar("toyota");
//        System.out.println(c.toString());
////for (Car c1 : CarDao.getAll()) {
////            System.out.println(c1.getCarname()+ " "+ c1.getRoom_id() + c1.getBrandname());
////        }
////        Car c = CarDao.getBrandCars("Toyota");
////        System.out.println(c);
////        ArrayList<Car> c1 = CarDao.getAllShowRoomHN();
////        System.out.println(c1+"\n");
//
//    }
//}
