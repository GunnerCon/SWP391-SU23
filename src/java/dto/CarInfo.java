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
public class CarInfo {

    private int carId;
    private int infoId;
    private String style;
    private String km_gone;
    private String gear;
    private String fuel;
    private String origin;
    private String color;
    private int seats;


    public CarInfo() {
    }

    public CarInfo(int carId, int infoId, String style, String km_gone, String gear, String fuel, String origin, String color, int seats) {
        this.carId = carId;
        this.infoId = infoId;
        this.style = style;
        this.km_gone = km_gone;
        this.gear = gear;
        this.fuel = fuel;
        this.origin = origin;
        this.color = color;
        this.seats = seats;
       
    }

  

    
    
    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public int getInfoId() {
        return infoId;
    }

    public void setInfoId(int infoId) {
        this.infoId = infoId;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getKm_gone() {
        return km_gone;
    }

    public void setKm_gone(String km_gone) {
        this.km_gone = km_gone;
    }

    public String getGear() {
        return gear;
    }

    public void setGear(String gear) {
        this.gear = gear;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getSeats() {
        return seats;
    }

    public void setSeats(int seats) {
        this.seats = seats;
    }

    @Override
    public String toString() {
        return "CarInfo{" + "carId=" + carId + ", infoId=" + infoId + ", style=" + style + ", km_gone=" + km_gone + ", gear=" + gear + ", fuel=" + fuel + ", origin=" + origin + ", color=" + color + ", seats=" + seats + '}';
    }

}
