/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author hoang
 */
public class CarPurchaseContract {
 private int contractId;
 private int carId;
 private int sellerId;
 private String dateNotarize;
 private  String dateSale;
 private int accId;
 private int orderId;

    public CarPurchaseContract() {
    }

    public CarPurchaseContract(int contractId, int carId, int sellerId, String dateNotarize, String dateSale, int accId, int orderId) {
        this.contractId = contractId;
        this.carId = carId;
        this.sellerId = sellerId;
        this.dateNotarize = dateNotarize;
        this.dateSale = dateSale;
        this.accId = accId;
        this.orderId = orderId;
    }

    public int getContractId() {
        return contractId;
    }

    public void setContractId(int contractId) {
        this.contractId = contractId;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }

    public String getDateNotarize() {
        return dateNotarize;
    }

    public void setDateNotarize(String dateNotarize) {
        this.dateNotarize = dateNotarize;
    }

    public String getDateSale() {
        return dateSale;
    }

    public void setDateSale(String dateSale) {
        this.dateSale = dateSale;
    }

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    @Override
    public String toString() {
        return "CarPurchaseContract{" + "contractId=" + contractId + ", carId=" + carId + ", sellerId=" + sellerId + ", dateNotarize=" + dateNotarize + ", dateSale=" + dateSale + ", accId=" + accId + ", orderId=" + orderId + '}';
    }
 
}
