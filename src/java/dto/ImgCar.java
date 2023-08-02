/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author hoang
 */
public class ImgCar {
    private int carId;
    private String imgPath;
    private int imgid;

    public ImgCar() {
    }

    public ImgCar(int carId, String imgPath, int imgid) {
        this.carId = carId;
        this.imgPath = imgPath;
        this.imgid = imgid;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public int getImgid() {
        return imgid;
    }

    public void setImgid(int imgid) {
        this.imgid = imgid;
    }

    @Override
    public String toString() {
        return "ImgCar{" + "carId=" + carId + ", imgPath=" + imgPath + ", imgid=" + imgid + '}';
    }
    
}
