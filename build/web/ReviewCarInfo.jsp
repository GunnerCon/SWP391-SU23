<%-- 
    Document   : shop-quick-view-car
    Created on : 07/07/2023, 12:27:28 AM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : shop-quick-view
    Created on : 06/07/2023, 11:19:20 AM
    Author     : hoang
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.CarDAO" %>
<%@page import="dto.Showroom" %>
<%@page import="java.util.ArrayList" %>
<div class="ajax_quick_view">
    <div class="row">
        <div class="col-lg-6 col-md-6 mb-4 mb-md-0">
            <c:forEach items="${requestScope.car}" var="c">
                <div class="product-image">
                    <div class="product_img_box">
                        <img style="width: 100%" id="product_img" src='${c.img}' alt="product_img1" />
                    </div>

                </div>
            </c:forEach>  
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="pr_detail">
                <c:forEach items="${requestScope.carinfo}" var="cf">
                    <div class="product_description">
                        <h4 class="product_title" style="text-align: center; "><a href="#"></a>Thông số xe</h4>
                     

                        
                            <table class="table table-bordered">

                                <tr>
                                    <td>Năm Xuất Xứ</td>
                                    <td>${cf.infoId}</td>
                                </tr>
                                <tr>
                                    <td>Màu:</td>
                                    <td>${cf.color}</td>
                                </tr>
                                <tr>
                                    <td>Km đã đi:</td>
                                    <td>${cf.km_gone}km</td>
                                </tr>
                                <tr>
                                    <td>Xuất xứ:</td>
                                    <td>${cf.origin}</td>
                                </tr>
                                <tr>
                                    <td>Kiểu dáng:</td>
                                    <td>${cf.style} </td>
                                </tr>
                                <tr>
                                    <td>Hộp số:</td>
                                    <td>${cf.gear} </td>
                                </tr>                              
                                <tr>
                                    <td> Nhiên Liệu</td>
                                    <td>${cf.fuel}</td>
                                </tr>                   
                                <tr>
                                    <td>Chỗ Ngồi:</td>
                                    <td>${cf.seats} </td>
                                </tr>                                




                            </table>

                 
                        
                       
                        

                    </div>
                    <hr />
                    
                    <hr />

                    
                </c:forEach>
            </div>
        </div>
    </div>
</div>


<script src="assets/js/scripts.js"></script>
