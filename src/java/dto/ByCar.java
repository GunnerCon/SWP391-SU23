/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author hoang
 */
public class ByCar {
    private String Date;
    private String time;
    private int byCar;
    private int AccId;

    public ByCar() {
    }

    public ByCar(String Date, String time, int byCar, int AccId) {
        this.Date = Date;
        this.time = time;
        this.byCar = byCar;
        this.AccId = AccId;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getByCar() {
        return byCar;
    }

    public void setByCar(int byCar) {
        this.byCar = byCar;
    }

    public int getAccId() {
        return AccId;
    }

    public void setAccId(int AccId) {
        this.AccId = AccId;
    }

    @Override
    public String toString() {
        return "ByCar{" + "Date=" + Date + ", time=" + time + ", byCar=" + byCar + ", AccId=" + AccId + '}';
    }
    
}
