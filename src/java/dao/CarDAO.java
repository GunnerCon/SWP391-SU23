/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Car;
import dto.CarInfo;
import dto.ImgCar;
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

    public static ArrayList<Car> searchCarByName(String name) {
        Connection cn = null;
        ArrayList<Car> list = new ArrayList<>();
        Car car = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select *\n"
                        + "                        from dbo.Cars c join dbo.Showroom s\n"
                        + "						on c.Room_id = s.Room_id\n"
                        + "                        where c.CarName like ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, "%" + name + "%");
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int carid = rs.getInt("CarID");
                        String carName = rs.getString("CarName");
                        int price = rs.getInt("price");
                        String img = rs.getString("imgPath");
                        int room_id = rs.getInt("Room_id");
                        Date manuf = rs.getDate("ManufacDate");
                        String desc = rs.getString("description");
                        boolean status = rs.getBoolean("status");
                        String owner = rs.getString("Owner");
                        String brandid = rs.getString("BrandID");

                        String managers = rs.getString("Managers");

                        String sales = rs.getString("Sales");

                        String address = rs.getString("address");
                        int phone = rs.getInt("phone");
                        String nameRoom = rs.getString("nameRoom");
                        String imgShowRoom = rs.getString("img");
                        String addfull = rs.getString("addressfull");
                        float percentearn = rs.getFloat("Percentearn");
                        int accId = rs.getInt("AccId");
                        car = new Car(carid, carName, price, img, room_id, managers, desc, carid, owner, brandid, price, percentearn, accId, managers, sales, room_id, address, phone, nameRoom, img, addfull);

                        list.add(car);
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

    public static ArrayList<ImgCar> getImgCar(int carId) {
        ArrayList<ImgCar> list = new ArrayList<>();
        ImgCar ic = null;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            String sql = "Select * from SlideCar \n"
                    + "where CarID like ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, carId);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                carId = rs.getInt("CarID");
                String imgPath = rs.getString("ImgPath");
                int imgId = rs.getInt("imgid");

                ic = new ImgCar(carId, imgPath, imgId);

                list.add(ic);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

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

                    int carId = rs.getInt("CarID");
                    String carName = rs.getString("CarName");
                    int price = rs.getInt("price");
                    String img = rs.getString("imgPath");
                    String manufacDate = rs.getString("ManufacDate");
                    String description = rs.getString("description");
                    int status = rs.getInt("status");
                    String owner = rs.getString("Owner");
                    String brandId = rs.getString("BrandID");
                    int pricebf = rs.getInt("PriceAfter");
                    float percentearn = rs.getFloat("Percentearn");
                    int accId = rs.getInt("AccId");
                    c = new Car(carId, carName, price, img, roomId, manufacDate, description, status, owner, brandId, pricebf, percentearn, accId);
                    list.add(c);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    
    public static ArrayList<Car> getCarsByCarId(int accId) {
        Car c = null;
        Connection cn = null;
        ArrayList<Car> list = new ArrayList<>();
        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from Cars  where AccId = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, accId);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {

                    int carId = rs.getInt("CarID");
                    String carName = rs.getString("CarName");
                    int price = rs.getInt("price");
                    String img = rs.getString("imgPath");
                    String manufacDate = rs.getString("ManufacDate");
                    String description = rs.getString("description");
                    int status = rs.getInt("status");
                    String owner = rs.getString("Owner");
                    String brandId = rs.getString("BrandID");
                    int pricebf = rs.getInt("PriceAfter");
                    float percentearn = rs.getFloat("Percentearn");
                     int roomID = rs.getInt("Room_id");
                    c = new Car(carId, carName, price, img, roomID, manufacDate, description, status, owner, brandId, pricebf, percentearn, accId);
                    list.add(c);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public static ArrayList<CarInfo> getAllCarInfo(int carId) {
        ArrayList<CarInfo> list = new ArrayList<>();
        CarInfo ci = null;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            String sql = "Select * from CarInfor \n"
                    + "where CarID like ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, carId);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {

                int inforId = rs.getInt("InforID");
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

    public static ArrayList<CarInfo> getAllCarInfo() {
        ArrayList<CarInfo> list = new ArrayList<>();
        CarInfo ci = null;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            String sql = "Select * from CarInfor \n"
                    + "";
            PreparedStatement pst = cn.prepareStatement(sql);

            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                int carId = rs.getInt("CarID");
                int inforId = rs.getInt("InforID");
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

    public static ArrayList<Car> getCarB(String BrandID) {
        ArrayList<Car> list = new ArrayList<>();
        Connection cn = null;
        Car c = null;
        try {
            cn = utils.DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select CarID, CarName, price, imgPath, Room_id, ManufacDate, description, status, Owner, BrandID,PriceAfter,Percentearn,AccId\n"
                        + "from dbo.Cars\n"
                        + "where BrandID like ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, BrandID);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int CarID = rs.getInt("CarID");
                        String CarName = rs.getString("CarName");
                        int price = rs.getInt("price");
                        String imgPath = rs.getString("imgPath");
                        int RoomID = rs.getInt("Room_id");
                        String ManufacDate = rs.getString("ManufacDate");
                        String des = rs.getString("description");
                        int status = rs.getInt("status");
                        String Owner = rs.getString("Owner");
                        int pricebf = rs.getInt("PriceAfter");
                        float percentearn = rs.getFloat("Percentearn");
                        int accId = rs.getInt("AccId");
                        c = new Car(CarID, CarName, price, imgPath, RoomID, ManufacDate, des, status, Owner, BrandID, pricebf, percentearn, accId);
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

    public static ArrayList<Car> getCar(int carId) {
        Car c = null;
        Connection cn = null;
        ArrayList<Car> list = new ArrayList<>();
        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from Cars  where CarID = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, carId);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {

                    int roomId = rs.getInt("Room_id");
                    String carName = rs.getString("CarName");
                    int price = rs.getInt("price");
                    String img = rs.getString("imgPath");
                    String manufacDate = rs.getString("ManufacDate");
                    String description = rs.getString("description");
                    int status = rs.getInt("status");
                    String owner = rs.getString("Owner");
                    String brandId = rs.getString("BrandID");
                    int pricebf = rs.getInt("PriceAfter");
                    float percentearn = rs.getFloat("Percentearn");
                    int accId = rs.getInt("AccId");
                    c = new Car(carId, carName, price, img, roomId, manufacDate, description, status, owner, brandId, pricebf, percentearn, accId);
                    list.add(c);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    
    public static Car getCar1(int carId) {
        Car c = null;
        Connection cn = null;
        
        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from Cars  where CarID = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, carId);
            ResultSet rs = pst.executeQuery();
            if (rs != null && rs.next()) {
             

                    int roomId = rs.getInt("Room_id");
                    String carName = rs.getString("CarName");
                    int price = rs.getInt("price");
                    String img = rs.getString("imgPath");
                    String manufacDate = rs.getString("ManufacDate");
                    String description = rs.getString("description");
                    int status = rs.getInt("status");
                    String owner = rs.getString("Owner");
                    String brandId = rs.getString("BrandID");
                    int pricebf = rs.getInt("PriceAfter");
                    float percentearn = rs.getFloat("Percentearn");
                    int accId = rs.getInt("AccId");
                    c = new Car(carId, carName, price, img, roomId, manufacDate, description, status, owner, brandId, pricebf, percentearn, accId);
                   
                
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return c;
    
    }
    
    
    public static ArrayList<Car> getAllCar() {
        ArrayList<Car> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from dbo.Cars c join dbo.Showroom s\n"
                        + "on c.Room_id = s.Room_id ";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet != null) {
                    while (resultSet.next()) {
                        int CarID = resultSet.getInt("CarID");
                        String CarName = resultSet.getString("CarName");
                        int price = resultSet.getInt("price");
                        String imgPath = resultSet.getString("imgPath");
                        int Room_id = resultSet.getInt("Room_id");
                        String manufacDate = resultSet.getString("ManufacDate");
                        String description = resultSet.getString("description");
                        int status = resultSet.getInt("status");
                        String owner = resultSet.getString("Owner");
                        String BrandID = resultSet.getString("BrandID");
                        int pricebf = resultSet.getInt("PriceAfter");
                        float percentearn = resultSet.getFloat("Percentearn");
                        int accId = resultSet.getInt("AccId");
                        String managers = resultSet.getString("Managers");
                        String sales = resultSet.getString("Sales");
                        String address = resultSet.getString("address");
                        int phone = resultSet.getInt("phone");
                        String nameRoom = resultSet.getString("nameRoom");
                        String img = resultSet.getString("img");
                        String addressfull = resultSet.getString("addressfull");
                        Car car = new Car(CarID, CarName, price, imgPath, Room_id, manufacDate, description, status, owner, BrandID, pricebf, percentearn, accId,
                                managers, sales, Room_id, address, phone, nameRoom, img, addressfull);
                        list.add(car);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    
    
    
     public static ArrayList<Car> getAllCarFull() {
        ArrayList<Car> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from dbo.Cars c where status = 1  \n"
                        ;
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet != null) {
                    while (resultSet.next()) {
                        int CarID = resultSet.getInt("CarID");
                        String CarName = resultSet.getString("CarName");
                        int price = resultSet.getInt("price");
                        String imgPath = resultSet.getString("imgPath");
                        int Room_id = resultSet.getInt("Room_id");
                        String manufacDate = resultSet.getString("ManufacDate");
                        String description = resultSet.getString("description");
                        int status = resultSet.getInt("status");
                        String owner = resultSet.getString("Owner");
                        String BrandID = resultSet.getString("BrandID");
                        int pricebf = resultSet.getInt("PriceAfter");
                        float percentearn = resultSet.getFloat("Percentearn");
                        int accId = resultSet.getInt("AccId");
                        Car car = new Car(CarID, CarName, price, imgPath, Room_id, manufacDate, description, status, owner, BrandID, pricebf, percentearn, accId);
                        list.add(car);
                    }

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
                        + " from dbo.Cars where status = 1 and CarName like ? ";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, "%" + searchName + "%");
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        String carName = rs.getString("CarName");
                        String carID = rs.getString("CarID");
                        int price = rs.getInt("price");
                        String imgpath = rs.getString("imgPath");
                        String Room_id = rs.getString("Room_id");
                        Date ManufacDate = rs.getDate("ManufacDate");
                        String description = rs.getString("description");
                        int status = rs.getInt("status");
                        String owner = rs.getString("Owner");
                        String BrandID = rs.getString("BrandID");
                        int pricebf = rs.getInt("PriceAfter");
                        float percentearn = rs.getFloat("Percentearn");
                        int accId = rs.getInt("AccId");
                        c = new Car(price, carName, price, sql, pricebf, carName, description, status, owner, BrandID, pricebf, percentearn, accId);
                        list.add(c);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static ArrayList<Car> getAllCarShowRooms(int carId) {
        Car c = null;
        Connection cn = null;
        ArrayList<Car> list = new ArrayList<>();
        try {
            cn = DBUtils.makeConnection();
            String sql = "select * from dbo.Cars c join dbo.Showroom s\n"
                    + "on c.Room_id = s.Room_id where c.CarID =? and c.status = 1";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, carId);
            ResultSet resultSet = pst.executeQuery();
            if (resultSet != null) {
                while (resultSet.next()) {
                    int CarID = resultSet.getInt("CarID");
                    String CarName = resultSet.getString("CarName");
                    int price = resultSet.getInt("price");
                    String imgPath = resultSet.getString("imgPath");
                    int Room_id = resultSet.getInt("Room_id");
                    String manufacDate = resultSet.getString("ManufacDate");
                    String description = resultSet.getString("description");
                    int status = resultSet.getInt("status");
                    String owner = resultSet.getString("Owner");
                    String BrandID = resultSet.getString("BrandID");
                    int pricebf = resultSet.getInt("PriceAfter");
                    int accId = resultSet.getInt("AccId");
                    float percentearn = resultSet.getFloat("Percentearn");
                    String managers = resultSet.getString("Managers");
                    String sales = resultSet.getString("Sales");
                    String address = resultSet.getString("address");
                    int phone = resultSet.getInt("phone");
                    String nameRoom = resultSet.getString("nameRoom");
                    String img = resultSet.getString("img");
                    String addressfull = resultSet.getString("addressfull");
                    Car car = new Car(CarID, CarName, price, imgPath, Room_id, manufacDate, description, status, owner, BrandID, pricebf, percentearn, accId, managers, sales, Room_id, address, phone, nameRoom, img, addressfull);
                    list.add(car);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void insertCar(String carname, int price, String img, String owners, int status, int pricebf, String manuDate, String brand, int showrooms, String decs, float percentearn, int accId) {
        Connection cn = null;
        Car c = new Car();
        try {
            cn = DBUtils.makeConnection();

            if (cn != null) {
                String sql = "insert into dbo.Cars values(?,?,?,?,?,?,?,?,?,?,? ,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, carname);
                pst.setInt(2, price);
                pst.setString(3, img);
                pst.setInt(4, showrooms);
                pst.setString(5, manuDate);
                pst.setString(6, decs);
                pst.setInt(7, status);
                pst.setString(8, owners);
                pst.setString(9, brand);
                pst.setInt(10, pricebf);
                pst.setFloat(11, percentearn);
                pst.setInt(12, accId);
                pst.executeUpdate();

                cn.close();

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void insertCarInfo(int year, String style, String km, String gear, String fuel, String origin, String colour, int seats) {
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();

            if (cn != null) {
                String sql = "insert into dbo.CarInfor values(?,?,?,?,?,?,?,? )";
                PreparedStatement pst = cn.prepareStatement(sql);

                pst.setInt(1, year);
                pst.setString(2, style);
                pst.setString(3, km);
                pst.setString(4, gear);
                pst.setString(5, fuel);

                pst.setString(6, origin);
                pst.setString(7, colour);
                pst.setInt(8, seats);
                pst.executeUpdate();
                cn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<CarInfo> getAllCarIn() {
        ArrayList<CarInfo> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from Cars ";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                ResultSet rs = preparedStatement.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int carId = rs.getInt("CarID");
                        String inforId = rs.getString("InforID");
                        String style = rs.getString("Style");
                        String km_gone = rs.getString("Km_gone");
                        String gear = rs.getString("gear");
                        String fuel = rs.getString("fuel");
                        String origin = rs.getString("Origin");
                        String color = rs.getString("Color");
                        int seats = rs.getInt("Seats");

                        CarInfo c = new CarInfo(carId, seats, style, km_gone, gear, fuel, origin, color, seats);
                        list.add(c);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public static ArrayList<Car> getAllCarByPrice() {
        ArrayList<Car> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from Cars where price <= 300 and status = 1 ";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet != null) {
                    while (resultSet.next()) {
                        int CarID = resultSet.getInt("CarID");
                        String CarName = resultSet.getString("CarName");
                        int price = resultSet.getInt("price");
                        String imgPath = resultSet.getString("imgPath");
                        int Room_id = resultSet.getInt("Room_id");
                        String manufacDate = resultSet.getString("ManufacDate");
                        String description = resultSet.getString("description");
                        int status = resultSet.getInt("status");
                        String owner = resultSet.getString("Owner");
                        String BrandID = resultSet.getString("BrandID");
                        int pricebf = resultSet.getInt("PriceAfter");
                        float percentearn = resultSet.getFloat("Percentearn");
                        int accId = resultSet.getInt("AccId");
                        Car car = new Car(CarID, CarName, price, imgPath, Room_id, manufacDate, description, status, owner, BrandID, pricebf, percentearn, accId);
                        list.add(car);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public static ArrayList<Car> getAllCarByPriceFive() {
        ArrayList<Car> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {

                String sql = "select * from Cars where price >= 500 and status = 1 ";
                PreparedStatement preparedStatement = cn.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet != null) {
                    while (resultSet.next()) {
                        int carID = resultSet.getInt("CarID");
                        String CarName = resultSet.getString("CarName");
                        int price = resultSet.getInt("price");
                        String imgPath = resultSet.getString("imgPath");
                        int Room_id = resultSet.getInt("Room_id");
                        String manufacDate = resultSet.getString("ManufacDate");
                        String description = resultSet.getString("description");
                        int status = resultSet.getInt("status");
                        String owner = resultSet.getString("Owner");
                        String BrandID = resultSet.getString("BrandID");
                        int pricebf = resultSet.getInt("PriceAfter");
                        float percentearn = resultSet.getFloat("Percentearn");
                        int accId = resultSet.getInt("AccId");
                        Car car = new Car(carID, CarName, price, imgPath, Room_id, manufacDate, description, status, owner, BrandID, pricebf, percentearn, accId);
                        list.add(car);
                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
public static boolean ChangeStatusCar(int carId, int status) {
        boolean kq = false;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "UPDATE dbo.Cars\n"
                        + "SET status = ?\n"
                        + "WHERE  CarID= ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, status);
                pst.setInt(2, carId);
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

    public static void main(String[] args) {
        ArrayList<CarInfo> c = CarDAO.getAllCarInfo(1);
        for (CarInfo car : c) {
            System.out.println(car.toString());
        }

    }
}
