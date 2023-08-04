/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author hoang
 */
public class SellerBrand {
    private int sellerId;
    private int brandId;
    private int showroomId;

    public SellerBrand() {
    }

//    public SellerBrand(int sellerId, int brandId, int showroomId, int carId, String carName, int price, String img, int roomId, String manufacDate, String description, int status, String owner, int priceBef, float percentearn, int accId) {
//        super(carId, carName, price, img, roomId, manufacDate, description, status, owner, brandId, priceBef, percentearn, accId);
//        this.sellerId = sellerId;
//        this.brandId = brandId;
//        this.showroomId = showroomId;
//    }

 
    
    
    public SellerBrand(int sellerId, int brandId, int showroomId) {
        this.sellerId = sellerId;
        this.brandId = brandId;
        this.showroomId = showroomId;
    }

    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public int getShowroomId() {
        return showroomId;
    }

    public void setShowroomId(int showroomId) {
        this.showroomId = showroomId;
    }
    
}
