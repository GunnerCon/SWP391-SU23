/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.brand;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.DBUtils;

/**
 *
 * @author 17148
 */
public class BrandDAO {
    public static ArrayList<brand> getBrands() {
        Connection cn = null;
        ArrayList<brand> list = new ArrayList<>();
        brand br = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select * from dbo.Brands";
                PreparedStatement pst = cn.prepareStatement(sql);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {

                        int brandID = rs.getInt("BrandID");
                        String BrandName = rs.getString("BrandName");
                        String img = rs.getString("imgPath");
                        br = new brand(brandID, BrandName, img);
                        list.add(br);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cn != null) {
                try {
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return list;
    }

    public static brand searchBrand(String name) {
        Connection cn = null;
        brand b = null;
        ArrayList<brand> list = new ArrayList<>();
        try {
            cn = utils.DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select BrandID, BrandName, imgPath\n"
                        + "from dbo.Brands\n"
                        + "where BrandName like ?";
                 PreparedStatement pst = cn.prepareStatement(sql);
                 pst.setString(1, name);
                 ResultSet rs = pst.executeQuery();
                 if(rs != null&&rs.next()){                   
                     int brandID = rs.getInt("BrandID");
                     String brandName = rs.getString("BrandName");
                     String imgPath = rs.getString("imgPath");
                     b = new brand(brandID, brandName, imgPath);
                 
                 }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cn != null) {
                try {
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return b;
    }

    public static void main(String[] args) {
//        for (brand brand1 : getBrands()) {
//            System.out.println(brand1);
//        }
          searchBrand("MEC");
          System.out.println(searchBrand("HONDA"));
    }
}
