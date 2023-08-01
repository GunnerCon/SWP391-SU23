/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author hoang
 */
public class Showroom {

    private String nameRoom;
    private int phone;
    private String address;
    private String sales;
    private String managers;
    private int room_id;
    private String image;
    private String addressfull;

    public Showroom() {
    }

    public Showroom(String managers, String sales, int room_id, String address, int phone, String nameRoom, String image, String addressfull) {
        this.nameRoom = nameRoom;
        this.phone = phone;
        this.address = address;
        this.sales = sales;
        this.managers = managers;
        this.room_id = room_id;
        this.image = image;
        this.addressfull = addressfull;
    }

    public String getAddressfull() {
        return addressfull;
    }

    public void setAddressfull(String addressfull) {
        this.addressfull = addressfull;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getNameRoom() {
        return nameRoom;
    }

    public void setNameRoom(String nameRoom) {
        this.nameRoom = nameRoom;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSales() {
        return sales;
    }

    public void setSales(String sales) {
        this.sales = sales;
    }

    public String getManagers() {
        return managers;
    }

    public void setManagers(String managers) {
        this.managers = managers;
    }

    public int getRoom_id() {
        return room_id;
    }

    public void setRoom_id(int room_id) {
        this.room_id = room_id;
    }

    @Override
    public String toString() {
        return "Showroom{" + "nameRoom=" + nameRoom + ", phone=" + phone + ", address=" + address + ", sales=" + sales + ", managers=" + managers + ", room_id=" + room_id + ", image=" + image + '}';
    }

}
