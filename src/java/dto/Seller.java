/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author hoang
 */
public class Seller {
    private int userId;
    private int sellerId;
    private int showRoomId;

    public Seller() {
    }

    public Seller(int userId, int sellerId, int showRoomId) {
        this.userId = userId;
        this.sellerId = sellerId;
        this.showRoomId = showRoomId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }

    public int getShowRoomId() {
        return showRoomId;
    }

    public void setShowRoomId(int showRoomId) {
        this.showRoomId = showRoomId;
    }

    @Override
    public String toString() {
        return "Seller{" + "userId=" + userId + ", sellerId=" + sellerId + ", showRoomId=" + showRoomId + '}';
    }
    
}
