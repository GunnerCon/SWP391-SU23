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
public class FeedbackDAO {
    public static boolean insertByFeedback(int accID, int carID,
            String name, String email, String decsription,
            String content, String img, int phone) {
        boolean kq = false;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "insert into dbo.Feedback values(?,?,?,?,?,?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, accID);
                pst.setInt(2, carID);
                pst.setString(3, name);
                pst.setString(4, email);
                pst.setString(5, decsription);
                pst.setString(6, content);
                pst.setString(7, img);
                 pst.setInt(8, phone);
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
        if(FeedbackDAO.insertByFeedback(0, 0, "a", "a", "a", "a", "a",124556666)){
            System.out.println("done");
        }else{
              System.out.println("fail");
                }
    }
}
