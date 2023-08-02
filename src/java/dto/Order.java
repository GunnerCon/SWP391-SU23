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
public class Order extends SellerBrand{

    private int byCar;
    private String date;
    private String time;
    private String name;
    private int phone;
    private String email;
    private int status;
    private int carId;
    private int accId;
    private String note;

    public Order() {
    }

    public Order(int byCar, String date, String time, String name, int phone, String email, int carId , int status, int accId, String note, int sellerId, int brandId, int showroomId) {
        super(sellerId, brandId, showroomId);
        this.byCar = byCar;
        this.date = date;
        this.time = time;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.status = status;
        this.carId = carId;
        this.accId = accId;
        this.note = note;
    }

    
    
    
    public Order(int byCar, String date, String time, String name, int phone, String email, int status, int carId, int accId, String note) {
        this.byCar = byCar;
        this.date = date;
        this.time = time;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.status = status;
        this.carId = carId;
        this.accId = accId;
        this.note = note;
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


    public int getByCar() {
        return byCar;
    }

    public void setByCar(int byCar) {
        this.byCar = byCar;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int CarId) {
        this.carId = CarId;
    }

    @Override
    public String toString() {
        return "Order{" + "byCar=" + byCar + ", date=" + date + ", time=" + time + ", name=" + name + ", phone=" + phone + ", email=" + email + ", status=" + status + ", carId=" + carId + ", accId=" + accId + ", note=" + note + '}';
    }

    
}
