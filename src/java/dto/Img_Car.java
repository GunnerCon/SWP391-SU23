/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author hoang
 */
public class Img_Car {
    private int id ;
    private String imgCar;
    private  String carId;

    public Img_Car() {
    }

    public Img_Car(int id, String imgCar, String carId) {
        this.id = id;
        this.imgCar = imgCar;
        this.carId = carId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImgCar() {
        return imgCar;
    }

    public void setImgCar(String imgCar) {
        this.imgCar = imgCar;
    }

    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId;
    }

    @Override
    public String toString() {
        return "Img_Car{" + "id=" + id + ", imgCar=" + imgCar + ", carId=" + carId + '}';
    }
    
    
}
