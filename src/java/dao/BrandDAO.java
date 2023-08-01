/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;


import dto.brand;
import dao.CarDAO;
import dto.Car;
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
                        int sellerId = rs.getInt("SellerId");
                        br = new brand(brandID, BrandName, img,sellerId);
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
                       int sellerId = rs.getInt("SellerId");
                     b = new brand(brandID, brandName, imgPath,sellerId);
                 
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
        ArrayList<brand> c = BrandDAO.getBrands();
        for (brand c1 : c) {
            System.out.println(c1.toString());
        }
    }
    }
