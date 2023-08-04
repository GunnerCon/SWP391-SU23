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
public class Car extends Showroom {

    private int carId;
    private String carName;
    private int price;
    private String img;
    private int roomId;
    private String manufacDate;//thời gian kí gửi
    private String description;
    private int status;
    private String owner;
    private String brandId;
    private int priceBef;
    private float percentearn;
    private int accId;

    public Car() {
    }

    public Car(int carId, String carName, int price, String img, int roomId, String manufacDate, String description, int status, String owner, String brandId, int priceBef, float percentearn, int accId) {
        this.carId = carId;
        this.carName = carName;
        this.price = price;
        this.img = img;
        this.roomId = roomId;
        this.manufacDate = manufacDate;
        this.description = description;
        this.status = status;
        this.owner = owner;
        this.brandId = brandId;
        this.priceBef = priceBef;
        this.percentearn = percentearn;
        this.accId = accId;
    }

    public Car(int carId, String carName, int price, String img, int roomId, String manufacDate, String description, int status, String owner, String brandId, int priceBef, float percentearn, int accId, String managers, String sales, int room_id, String address, int phone, String nameRoom, String image, String addressfull) {
        super(managers, sales, room_id, address, phone, nameRoom, image, addressfull);
        this.carId = carId;
        this.carName = carName;
        this.price = price;
        this.img = img;
        this.roomId = roomId;
        this.manufacDate = manufacDate;
        this.description = description;
        this.status = status;
        this.owner = owner;
        this.brandId = brandId;
        this.priceBef = priceBef;
        this.percentearn = percentearn;
        this.accId = accId;
    }

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
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

    public String getManufacDate() {
        return manufacDate;
    }

    public void setManufacDate(String manufacDate) {
        this.manufacDate = manufacDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
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

    public int getPriceBef() {
        return priceBef;
    }

    public void setPriceBef(int priceBef) {
        this.priceBef = priceBef;
    }

    public float getPercentearn() {
        return percentearn;
    }

    public void setPercentearn(float percentearn) {
        this.percentearn = percentearn;
    }

    @Override
    public String toString() {
        return "Car{" + "carId=" + carId + ", carName=" + carName + ", price=" + price + ", img=" + img + ", roomId=" + roomId + ", manufacDate=" + manufacDate + ", description=" + description + ", status=" + status + ", owner=" + owner + ", brandId=" + brandId + ", priceBef=" + priceBef + ", percentearn=" + percentearn + ", accId=" + accId + '}';
    }

}
