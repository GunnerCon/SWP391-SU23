/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import utils.DBUtils;

/**
 *
 * @author Đức Anh
 */
public class PaymentDAO {

    public static boolean insertByPayment(int accID,
            int bank_account, String bankUserName, int bank,
            int payment_status, int expired_month,
            int expired_year, int cvc, int carID) {
        boolean kq = false;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "insert into dbo.Payment values(?,?,?,?,?,?,?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, accID);
                pst.setInt(2, bank_account);
                pst.setString(3, bankUserName);
                pst.setInt(4, bank);
                pst.setInt(5, payment_status);
                pst.setInt(6, expired_month);
                pst.setInt(7, expired_year);
                pst.setInt(8, cvc);
                pst.setInt(9, carID);
                pst.executeUpdate();
                kq = true;
                cn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return kq;
    }

    public static void main(String[] args) {
        if (PaymentDAO.insertByPayment(0, 0, "bank", 0, 0, 0, 0, 0, 0)) {
            System.out.println("done");
        } else {
            System.out.println("failed");
        }
    }
}
