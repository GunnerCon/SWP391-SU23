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
<%@page import="dao.ShowRoomDAO" %>
<%@page import="dto.Showroom" %>
<%@page import="dao.CarOfferDAO" %>
<%@page import="dto.CarOffer" %>
<%@page import="java.util.ArrayList" %>
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png">
<!-- Animation CSS -->
<link rel="stylesheet" href="assets/css/animate.css">	
<!-- Latest Bootstrap min CSS -->
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet"> 
<!-- Icon Font CSS -->
<link rel="stylesheet" href="assets/css/all.min.css">
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/linearicons.css">
<link rel="stylesheet" href="assets/css/flaticon.css">
<link rel="stylesheet" href="assets/css/simple-line-icons.css">
<!--- owl carousel CSS-->
<link rel="stylesheet" href="assets/owlcarousel/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/owlcarousel/css/owl.theme.css">
<link rel="stylesheet" href="assets/owlcarousel/css/owl.theme.default.min.css">
<!-- Magnific Popup CSS -->
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!-- jquery-ui CSS -->
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<!-- Slick CSS -->
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/slick-theme.css">
<!-- Style CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<div class="ajax_quick_view">
    <c:forEach items="${requestScope.caoffer}" var="c">

        <form action="MaiController" method="post">

        <h4>Tên khách hàng:<input type="text" placeholder="${c.nameGuest}" name="nameGuest"></h4> 
        <h4>Email: <input style="width: 80%" type="text" placeholder="${c.email}" name="email"></h4>
        <h4>Số điện thoại: <input type="text" placeholder="0${c.phone}" name="phone"></h4>

        <h4>Giá:  <input type="text" placeholder="Giá lên sàn......." name="price" ></h4>
        <h4> Thời gian kí gửi: <input type="text" placeholder="${c.timeSignup}" name="showrooms " ></h4>
        <h4> Showrooms: <input type="text" placeholder="Showrooms..." name="showrooms " ></h4>
        <button type="submit">Luu</button>
</form>




</c:forEach>

</div>

<script src="assets/js/scripts.js"></script>
