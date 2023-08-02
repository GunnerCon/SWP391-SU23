/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author 17148
 */
public class brand {
    private int brandID;
    private String brandName;
    private String imgPath;
    private int selllerId;

    public brand() {
    }

    public brand(int brandID, String brandName, String imgPath, int selllerId) {
        this.brandID = brandID;
        this.brandName = brandName;
        this.imgPath = imgPath;
        this.selllerId = selllerId;
    }

    public int getSelllerId() {
        return selllerId;
    }

    public void setSelllerId(int selllerId) {
        this.selllerId = selllerId;
    }

    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }
}
