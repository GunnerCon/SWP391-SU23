<%-- 
    Document   : Feedback
    Created on : Aug 4, 2023, 10:42:54 AM
    Author     : Đức Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.ShowRoomDAO" %>
<%@page import="dto.Showroom" %>
<%@page import="dto.Car" %>
<%@page import="dto.brand" %>
<%@page import="dao.CarDAO" %>
<%@page import="dao.BrandDAO" %>
<%@page import="dao.AccountDAO" %>
<%@page import="dto.Account" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Phản hồi từ khách hàng</title>
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
        integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" href="./feedback.css">
    </head>
   <body>
    <div class="testbox">
         <c:set var="name" value="${name}"/>
         <form action="MainController" method="post">
            <div class="banner">
                <h1>Phản hồi từ khách hàng</h1>
            </div>
            <div class="item">
                <label for="name">Tên<span>*</span></label>
                <div class="name-item">
                    <input id="name" type="text" name="name" value="${name.fullname}" required />
                </div>
            </div>

            <div class="item">
                <div class="name-item">
                    <div>
                        <label for="address">Email<span>*</span></label>
                        <input id="address" type="text" value="${name.email}" name="email" required />
                    </div>
                    <div>
                        <label for="number">Số điện thoại</label>
                        <input id="number" type="text" value="${name.phone}" name="number" />
                    </div>
                </div>
            </div>
        
          
            <div class="item">
                <label for="apply"> Mô tả</label>
                <input id="apply" type="text" name="text" />
            </div>
            <div class="item">
                <label for="period">Chi tiết</label>
                <input id="period" type="text" name="description" />
            </div>
<!--            <div class="item">
                <label for="cv">Hình ảnh<span>*</span></label>
                <input id="cv" type="file" name="image" required />
            </div>-->
    
            <div class="btn-block">
                <button type="submit" value="feedback" name="action" >Gửi phản hồi</button>
            </div>
        </form>
    </div>
</body>
</html>
