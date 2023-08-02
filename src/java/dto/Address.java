/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author hoang
 */
public class Address {
    private int id;
    private String addressGD;

    public Address() {
    }

    public Address(int id, String addressGD) {
        this.id = id;
        this.addressGD = addressGD;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddressGD() {
        return addressGD;
    }

    public void setAddressGD(String addressGD) {
        this.addressGD = addressGD;
    }
    
    
}
