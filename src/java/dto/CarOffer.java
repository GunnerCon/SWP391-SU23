/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.util.Date;

/**
 *
 * @author DELL
 */
public class CarOffer extends SellerBrand {

    private int orderId;
    private String nameGuest;
    private String email;
    private String phone;
    private String addressGD;
    private String address;
    private int showRooms;
    private String timeSignup;//lịch hẹn
    private String price;
    private String img;
    private String description;
    private int status;
    private int accId;
    private String note;
    private int brandId;
    private String carName;

    public CarOffer() {
    }

    public CarOffer(int orderId, String nameGuest, String email, String phone, String addressGD, String address, int showRooms, String timeSignup, String price, String img, String description, int status, int accId, String note, int brandId, String carName) {
        this.orderId = orderId;
        this.nameGuest = nameGuest;
        this.email = email;
        this.phone = phone;
        this.addressGD = addressGD;
        this.address = address;
        this.showRooms = showRooms;
        this.timeSignup = timeSignup;
        this.price = price;
        this.img = img;
        this.description = description;
        this.status = status;
        this.accId = accId;
        this.note = note;
        this.brandId = brandId;
        this.carName = carName;
    }

    public CarOffer(int orderId, String nameGuest, String email, String phone, String addressGD, String address, int showRooms, String timeSignup, String price, String img, String description, int status, int accId, String note, int brandId, String carName, int sellerId, int showroomId) {
        super(sellerId, brandId, showroomId);
        this.orderId = orderId;
        this.nameGuest = nameGuest;
        this.email = email;
        this.phone = phone;
        this.addressGD = addressGD;
        this.address = address;
        this.showRooms = showRooms;
        this.timeSignup = timeSignup;
        this.price = price;
        this.img = img;
        this.description = description;
        this.status = status;
        this.accId = accId;
        this.note = note;
        this.brandId = brandId;
        this.carName = carName;
    }

   

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getNameGuest() {
        return nameGuest;
    }

    public void setNameGuest(String nameGuest) {
        this.nameGuest = nameGuest;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddressGD() {
        return addressGD;
    }

    public void setAddressGD(String addressGD) {
        this.addressGD = addressGD;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getShowRooms() {
        return showRooms;
    }

    public void setShowRooms(int showRooms) {
        this.showRooms = showRooms;
    }

    public String getTimeSignup() {
        return timeSignup;
    }

    public void setTimeSignup(String timeSignup) {
        this.timeSignup = timeSignup;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
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

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    @Override
    public String toString() {
        return "CarOffer{" + "orderId=" + orderId + ", nameGuest=" + nameGuest + ", email=" + email + ", phone=" + phone + ", addressGD=" + addressGD + ", address=" + address + ", showRooms=" + showRooms + ", timeSignup=" + timeSignup + ", price=" + price + ", img=" + img + ", description=" + description + ", status=" + status + ", accId=" + accId + ", note=" + note + ", brandId=" + brandId + ", carName=" + carName + '}';
    }

    
    

}
