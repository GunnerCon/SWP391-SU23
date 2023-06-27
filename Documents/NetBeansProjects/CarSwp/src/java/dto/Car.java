/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.sql.Date;

/**
 *
 * @author hoang
 */
public class Car {
    private String carId;
    private String carName;
    private String img;
    private int roomId;
    private int price;
    private Date manufacDate;
    private String description;
    private boolean status;
    private String owner;
    private  String brandId;

    public Car() {
    }

    public Car(String carId, String carName, String img, int roomId, int price, Date manufacDate, String description, boolean status, String owner, String brandId) {
        this.carId = carId;
        this.carName = carName;
        this.img = img;
        this.roomId = roomId;
        this.price = price;
        this.manufacDate = manufacDate;
        this.description = description;
        this.status = status;
        this.owner = owner;
        this.brandId = brandId;
    }

    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getManufacDate() {
        return manufacDate;
    }

    public void setManufacDate(Date manufacDate) {
        this.manufacDate = manufacDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    @Override
    public String toString() {
        return "Car{" + "carId=" + carId + ", carName=" + carName + ", img=" + img + ", roomId=" + roomId + ", price=" + price + ", manufacDate=" + manufacDate + ", description=" + description + ", status=" + status + ", owner=" + owner + ", brandId=" + brandId + '}';
    }
    
    
    

}
///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package dto;
//
//import java.util.Date;
//
///**
// *
// * @author dangd
// */
//public class Car {
//    private String carid;
//    private String carname;
//    private int price;
//    private String imgpath;
//    private String room_id;
//    private Date manufacdate;
//    private String description;
//    private Boolean status;
//    private String owner;
//    private String brandid;
//    private String brandname;
//    private String inforid;
//    private String style;
//    private String km_gone;
//    private String gear;
//    private String fuel;
//    private String origin;
//    private String color;
//    private int seats;
//
//    public Car() {
//    }
//
//    public Car(String imgpath, String brandid, String brandname) {
//        this.imgpath = imgpath;
//        this.brandid = brandid;
//        this.brandname = brandname;
//    }
//
//    public Car(String carid, String carname, int price, String imgpath, String room_id, Date manufacdate, String description, Boolean status, String owner, String brandid, String brandname) {
//        this.carid = carid;
//        this.carname = carname;
//        this.price = price;
//        this.imgpath = imgpath;
//        this.room_id = room_id;
//        this.manufacdate = manufacdate;
//        this.description = description;
//        this.status = status;
//        this.owner = owner;
//        this.brandid = brandid;
//        this.brandname = brandname;
//    }
//
//    public Car(String carid, String carname, int price, String imgpath, String room_id, Date manufacdate, String description, Boolean status, String owner, String brandid) {
//        this.carid = carid;
//        this.carname = carname;
//        this.price = price;
//        this.imgpath = imgpath;
//        this.room_id = room_id;
//        this.manufacdate = manufacdate;
//        this.description = description;
//        this.status = status;
//        this.owner = owner;
//        this.brandid = brandid;
//    }
//
//    public String getCarid() {
//        return carid;
//    }
//
//    public void setCarid(String carid) {
//        this.carid = carid;
//    }
//
//    public String getCarname() {
//        return carname;
//    }
//
//    public void setCarname(String carname) {
//        this.carname = carname;
//    }
//
//    public int getPrice() {
//        return price;
//    }
//
//    public void setPrice(int price) {
//        this.price = price;
//    }
//
//    public String getImgpath() {
//        return imgpath;
//    }
//
//    public void setImgpath(String imgpath) {
//        this.imgpath = imgpath;
//    }
//
//    public String getRoom_id() {
//        return room_id;
//    }
//
//    public void setRoom_id(String room_id) {
//        this.room_id = room_id;
//    }
//
//    public Date getManufacdate() {
//        return manufacdate;
//    }
//
//    public void setManufacdate(Date manufacdate) {
//        this.manufacdate = manufacdate;
//    }
//
//    public String getDescription() {
//        return description;
//    }
//
//    public void setDescription(String description) {
//        this.description = description;
//    }
//
//    public Boolean getStatus() {
//        return status;
//    }
//
//    public void setStatus(Boolean status) {
//        this.status = status;
//    }
//
//    public String getOwner() {
//        return owner;
//    }
//
//    public void setOwner(String owner) {
//        this.owner = owner;
//    }
//
//    public String getBrandid() {
//        return brandid;
//    }
//
//    public void setBrandid(String brandid) {
//        this.brandid = brandid;
//    }
//
//    public String getBrandname() {
//        return brandname;
//    }
//
//    public void setBrandname(String brandname) {
//        this.brandname = brandname;
//    }
//
//    public String getInforid() {
//        return inforid;
//    }
//
//    public void setInforid(String inforid) {
//        this.inforid = inforid;
//    }
//
//    public String getStyle() {
//        return style;
//    }
//
//    public void setStyle(String style) {
//        this.style = style;
//    }
//
//    public String getKm_gone() {
//        return km_gone;
//    }
//
//    public void setKm_gone(String km_gone) {
//        this.km_gone = km_gone;
//    }
//
//    public String getGear() {
//        return gear;
//    }
//
//    public void setGear(String gear) {
//        this.gear = gear;
//    }
//
//    public String getFuel() {
//        return fuel;
//    }
//
//    public void setFuel(String fuel) {
//        this.fuel = fuel;
//    }
//
//    public String getOrigin() {
//        return origin;
//    }
//
//    public void setOrigin(String origin) {
//        this.origin = origin;
//    }
//
//    public String getColor() {
//        return color;
//    }
//
//    public void setColor(String color) {
//        this.color = color;
//    }
//
//    public int getSeats() {
//        return seats;
//    }
//
//    public void setSeats(int seats) {
//        this.seats = seats;
//    }
//
//    @Override
//    public String toString() {
//        return "Car{" + "carid=" + carid + ", carname=" + carname + ", price=" + price + ", imgpath=" + imgpath + ", room_id=" + room_id + ", manufacdate=" + manufacdate + ", description=" + description + ", status=" + status + ", owner=" + owner + ", brandid=" + brandid + ", brandname=" + brandname + ", inforid=" + inforid + ", style=" + style + ", km_gone=" + km_gone + ", gear=" + gear + ", fuel=" + fuel + ", origin=" + origin + ", color=" + color + ", seats=" + seats + '}';
//    }
//
//    
//
//  
//
//}