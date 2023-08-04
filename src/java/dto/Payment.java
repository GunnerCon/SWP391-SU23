/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author Đức Anh
 */
public class Payment {

    private int accID;
    private int bank_account_id;
    private int paymentID;
    private String bank;
    private int payment_amount;
    private int payment_status;
    private int expired_month;
    private int expired_year;
    private int carID;

    public Payment() {
    }

    public Payment(int accID, int bank_account_id, int paymentID, String bank, int payment_amount, int payment_status, int expired_month, int expired_year, int carID) {
        this.accID = accID;
        this.bank_account_id = bank_account_id;
        this.paymentID = paymentID;
        this.bank = bank;
        this.payment_amount = payment_amount;
        this.payment_status = payment_status;
        this.expired_month = expired_month;
        this.expired_year = expired_year;
        this.carID = carID;
    }

    public int getAccID() {
        return accID;
    }

    public void setAccID(int accID) {
        this.accID = accID;
    }

    public int getBank_account_id() {
        return bank_account_id;
    }

    public void setBank_account_id(int bank_account_id) {
        this.bank_account_id = bank_account_id;
    }

    public int getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public int getPayment_amount() {
        return payment_amount;
    }

    public void setPayment_amount(int payment_amount) {
        this.payment_amount = payment_amount;
    }

    public int getPayment_status() {
        return payment_status;
    }

    public void setPayment_status(int payment_status) {
        this.payment_status = payment_status;
    }

    public int getExpired_month() {
        return expired_month;
    }

    public void setExpired_month(int expired_month) {
        this.expired_month = expired_month;
    }

    public int getExpired_year() {
        return expired_year;
    }

    public void setExpired_year(int expired_year) {
        this.expired_year = expired_year;
    }

    public int getCarID() {
        return carID;
    }

    public void setCarID(int carID) {
        this.carID = carID;
    }

    
}
