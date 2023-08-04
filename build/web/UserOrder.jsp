<%-- 
    Document   : UserOrder
    Created on : 26/07/2023, 3:45:13 PM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.ShowRoomDAO" %>
<%@page import="dto.Showroom" %>
<%@page import="dto.Car" %>
<%@page import="dto.brand" %>
<%@page import="dao.CarDAO" %>
<%@page import="dao.BrandDAO" %>

<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="Anil z" name="author">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Shopwise is Powerful features and You Can Use The Perfect Build this Template For Any eCommerce Website. The template is built for sell Fashion Products, Shoes, Bags, Cosmetics, Clothes, Sunglasses, Furniture, Kids Products, Electronics, Stationery Products and Sporting Goods.">
        <meta name="keywords" content="ecommerce, electronics store, Fashion store, furniture store,  bootstrap 4, clean, minimal, modern, online store, responsive, retail, shopping, ecommerce store">
        <!-- SITE TITLE -->
        <title>CarNews</title>
        <!-- Favicon Icon -->
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
        <!-- Slick CSS -->
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/slick-theme.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">



    </head>

    <body>

        <!-- LOADER -->
        <div class="preloader">
            <div class="lds-ellipsis">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>


        <!-- START HEADER -->
        <header class="header_wrap fixed-top header_with_topbar">
            <div class="top-header">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-3">
                            <div class="d-flex align-items-center justify-content-center justify-content-md-start">

                                <ul class="contact_detail text-center text-lg-start">
                                    <c:set var="name" value="${name}"></c:set>
                                    <li><h3>Welcome, ${name.fullname}</h3></li>
                                </ul>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="col-md-6">
                                <div class="product_search_form rounded_input">
                                    <form action="MainController" method="get">
                                        <div class="input-group">

                                            <!--                                        <input name="action" class="form-control" placeholder="Search Product..." required=""  type="text">
                                                                                    <button type="submit" class="search_btn2"><i class="fa fa-search"></i></button>-->
                                            <input class="form-control" placeholder="Tìm kiếm..." required=""  type="text">
                                            <button type="submit" class="search_btn2"><i class="fa fa-search"></i></button>

                                        </div>
                                    </form>
                                </div>

                            </div>

                        </div>

                        <div class="col-md-3">
                            <div class="text-center text-md-end">
                                <ul class="header_list">
                                    <li><a href="MainController?action=logout"><i class="linearicons-user"></i><span>Đăng xuất</span></a></li>
                                    <li><a href=""><i></i><span>Thông tin cá nhân</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom_header dark_skin main_menu_uppercase">
                <div class="container">
                    <nav class="navbar navbar-expand-lg"> 
                        <a class="navbar-brand" href="userPage.jsp">
                            <img class="logo_light" src="assets/images/logo_light.png" alt="logo" />
                            <img class="logo_dark" src="assets/images/logo_dark.png" alt="logo" />
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-expanded="false"> 
                            <span class="ion-android-menu"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="dropdown">
                                    <a  class="nav-link dropdown-toggle " href="userPage.jsp">Trang Chủ</a>

                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu">
                                        <ul> 
                                            <li><a class="dropdown-item nav-link nav_item" href="AboutUser.jsp">Về Chúng Tôi</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="ContactUser.jsp">Thông Tin Liên Hệ</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="faqUser.jsp">Câu hỏi thường gặp</a></li>

                                            <!--                                            <li><a class="dropdown-item nav-link nav_item" href="login.jsp">Đăng nhập</a></li>
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="Signup.jsp">Đăng kí</a></li>-->
                                        </ul>
                                    </div>
                                </li>
                                <li class="dropdown dropdown-mega-menu">
                                    <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">Mua Xe</a>
                                    <div class="dropdown-menu">
                                        <ul class="mega-menu d-lg-flex">
                                            <c:forEach items="${BrandDAO.getBrands()}" var="b">




                                                <li class="mega-menu-col col-lg-4">
                                                    <ul> 
                                                        <!-- <li class="dropdown-header">Woman's</li> -->
                                                        <li><a class="dropdown-item nav-link nav_item" href="MainController?action=listCarbybranduser&brandIdz=${b.brandID}"> ${b.brandName}</a></li>

                                                    </ul>
                                                </li>


                                            </c:forEach>
                                        </ul>

                                    </div>
                                </li>

                                <li class="dropdown dropdown-mega-menu">
                                    <a class="dropdown-toggle nav-link" href="SaleCarUser.jsp" >Kí gửi Xe</a>                              
                                </li>


                                <li class="dropdown dropdown-mega-menu">
                                    <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">ShowRooms</a>
                                    <div class="dropdown-menu">
                                        <ul class="mega-menu d-lg-flex">
                                            <li class="mega-menu-col col-lg-12">
                                                <ul class="d-lg-flex">


                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>
                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomHNuser">Hà Nội</a> </li>
                                                                <c:forEach items="${ShowRoomDAO.getAllShowRoomHN()}" var="s">

                                                                <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCarUser&roomIdz=${s.room_id}">${s.nameRoom}</a></li>

                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>
                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomDNuser">Đà Nẵng</a> </li>
                                                                <c:forEach items="${ShowRoomDAO.getAllShowRoomDN()}" var="s">
                                                                <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCarUser&roomIdz=${s.room_id}">${s.nameRoom}</a></li>

                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>

                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomHCMuser">Hồ Chí Minh</a> </li>

                                                            <c:forEach items="${ShowRoomDAO.getAllShowRoomTpHCM()}" var="s">
                                                                <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCarUser&roomIdz=${s.room_id}">${s.nameRoom}</a></li>

                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>

                                        </ul>
                                    </div>
                                </li>
                                <li><a class="nav-link nav_item" href="ContactUser.jsp">Thông Tin liên hệ</a></li> 

                            </ul>
                        </div>
                        <ul class="navbar-nav attr-nav align-items-center">



                            <li class="dropdown cart_dropdown"><a class="nav-link cart_trigger" onclick="showcart()" data-bs-toggle="dropdown"><i class="icon-heart"></i></a>
                                <div class="cart_box dropdown-menu dropdown-menu-right" id="showcart" >
                                    <ul class="cart_list">
                                        <li id="mycart">

                                        </li>


                                    </ul>

                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- END HEADER -->

        <!-- START SECTION BREADCRUMB -->
        <div class="breadcrumb_section bg_gray page-title-mini">
            <div class="container"><!-- STRART CONTAINER -->
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="page-title">
                            <c:set var="name" value="${name}"></c:set>

                                <h1>Thông tin của   ${name.fullname}</h1>
                        </div>
                    </div>
                    <!--                    <div class="col-md-6">
                                            <ol class="breadcrumb justify-content-md-end">
                                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                                <li class="breadcrumb-item active">My Account</li>
                                            </ol>
                                        </div>-->
                </div>
            </div><!-- END CONTAINER-->
        </div>
        <!-- END SECTION BREADCRUMB -->

        <!-- START MAIN CONTENT -->
        <div class="main_content">

            <!-- START SECTION SHOP -->
            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-4">
                            <div class="dashboard_menu">
                                <ul class="nav nav-tabs flex-column" role="tablist">
                                    <!--                                    <li class="nav-item">
                                                                            <a class="nav-link active" id="dashboard-tab" data-bs-toggle="tab" href="#dashboard" role="tab" aria-controls="dashboard" aria-selected="false"><i class="ti-layout-grid2"></i>Dashboard</a>
                                                                        </li>-->
                                    <li class="nav-item">
                                        <a class="nav-link" id="orders-tab" data-bs-toggle="tab" href="#Caroffer" role="tab" aria-controls="Caroffer" aria-selected="false"><i class="ti-shopping-cart-full"></i>Thông tin gửi xe</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="orders-tab" data-bs-toggle="tab" href="#orders" role="tab" aria-controls="orders" aria-selected="false"><i class="ti-shopping-cart-full"></i>Thông tin mua xe</a>
                                    </li>
                                    <!--                                    <li class="nav-item">
                                                                            <a class="nav-link" id="address-tab" data-bs-toggle="tab" href="#address" role="tab" aria-controls="address" aria-selected="true"><i class="ti-location-pin"></i>Thông tin cá nhân</a>
                                                                        </li>-->
                                    <li class="nav-item">
                                        <a class="nav-link" id="account-detail-tab" data-bs-toggle="tab" href="#account-detail" role="tab" aria-controls="account-detail" aria-selected="true"><i class="ti-id-badge"></i>Thông tin cá nhân</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="login.html"><i class="ti-lock"></i>Đăng xuất</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-8">


                            <div class="tab-content dashboard_content">
                                <div class="tab-pane fade" id="Caroffer" role="tabpanel" aria-labelledby="orders-tab">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3>Đăng kí, kí gửi xe</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>Tên khách hàng</th>
                                                            <th>Email</th>
                                                            <th>SĐT</th>
                                                            <th>Địa chỉ</th>                                                       
                                                            <th>Lịch Hẹn</th>
                                                            <th>Trạng thái</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody><c:forEach items="${requestScope.accOrder}" var="o"> 
                                                            <tr>
                                                                <c:forEach items="${requestScope.accId}" var="acc">
                                                                    <td>${acc.fullname} </td>
                                                                    <td>${acc.email} </td>
                                                                    <td>${acc.phone} </td></c:forEach>

                                                                    <td>
                                                                    <c:choose>
                                                                        <c:when test="${o.showRooms==1}">
                                                                            Car_Rừng
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==2}">
                                                                            Car_Biển
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==3}">
                                                                            Car_Anh
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==4}">
                                                                            Car_Quang
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==5}">
                                                                            Car_Cường
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==6}">
                                                                            Car_Đạt
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==7}">
                                                                            Car_Đức_Anh
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==8}">
                                                                            Car_News
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==9}">
                                                                            Car_Auto
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==10}">
                                                                            Car_Sao
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==11}">
                                                                            Car_Dao
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==12}">
                                                                            Car_Duong
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==13}">
                                                                            Car_Núi
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==14}">
                                                                            Car_Dinh
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==15}">
                                                                            Car_Mai
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==16}">
                                                                            Car_Au
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==17}">
                                                                            Car_Mua
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==18}">
                                                                            Car_Nang
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==19}">
                                                                            Car_Tuyet
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==20}">
                                                                            Car_Lieu
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==21}">
                                                                            Car_Nuoc
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==22}">
                                                                            Car_X
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==23}">
                                                                            Car_Q
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==24}">
                                                                            Car_A
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==25}">
                                                                            Car_Y
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==26}">
                                                                            Car_V
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==27}">
                                                                            Car_P
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==28}">
                                                                            Car_T
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==29}">
                                                                            Car_R
                                                                        </c:when>
                                                                        <c:when test="${o.showRooms==30}">
                                                                            Car_S
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            ${o.address}
                                                                        </c:otherwise>
                                                                    </c:choose></td>

                                                                <td>${o.timeSignup}</td>
                                                                <td> <c:choose>
                                                                        <c:when test="${o.status ==1}">
                                                                            Đang xử lý
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            Đã xác nhận
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </td>

                                                                <!--<td>-->  
                                                                <%--<c:forEach items="${requestScope.car}" var="c">--%>


                                                                <!--                                                                        <ul class="list_none pr_action_btn">
                                                                                                                                            <a class="btn btn-fill-out btn-sm  popup-ajax" href="MainController?action=reviewCarInfo&carId=${c.carId}" >Xem thêm</a>
                                                                                                                                        </ul>-->



                                                                <%--</c:forEach>--%>
                                                                <!--</td>-->




                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="account-detail" role="tabpanel" aria-labelledby="account-detail-tab">
                                    <c:forEach items="${requestScope.accId}" var="acc">
                                        <div class="card">
                                            <div class="card-header">
                                                <h3>Thông tin cá nhân</h3>
                                            </div>
                                            <div class="card-body">

                                                <form method="post" name="enq">
                                                    <div class="row">
                                                        <div class="form-group col-md-12 mb-3">
                                                            <label>Tên khách hàng:  <span class="required"></span></label>
                                                            <input required="" class="form-control" value="${acc.fullname}" name="name" type="text">
                                                        </div>


                                                        <div class="form-group col-md-12 mb-3">
                                                            <label>Email: <span class="required"></span></label>
                                                            <input required="" class="form-control" name="email" value="${acc.email}" type="email">
                                                        </div>
                                                        <div class="form-group col-md-12 mb-3">
                                                            <label>Mật khẩu:<span class="required"></span></label>
                                                            <input required="" class="form-control" value="${acc.password}" name="password" type="text">
                                                        </div>

                                                        <div class="form-group col-md-12 mb-3">
                                                            <label>Số điện thoại<span class="required"></span></label>
                                                            <input required="" class="form-control"value="${acc.phone}" name="cpassword" type="phone">
                                                        </div>
                                                        <div class="col-md-12">
                                                            <button type="submit" class="btn btn-fill-out" name="submit" value="Submit">Lưu</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                                <div class="tab-pane fade" id="orders" role="tabpanel" aria-labelledby="orders-tab">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3>Thông tin mua xe</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>Tên khách hàng</th>
                                                            <th>Email</th>
                                                            <th>SĐT</th>
                                                            <th>Showrooms</th>    
                                                            <th>Ngày hẹn</th>
                                                            <th>Giờ hẹn</th>
                                                            <th>Thông tin xe</th>
                                                            <th>Trạng thái</th>
                                                            <th>Thanh toán</th>


                                                        </tr>
                                                    </thead>
                                                    <tbody><c:forEach items="${requestScope.order}" var="od"> 
                                                            <tr>
                                                                <c:forEach items="${requestScope.accId}" var="acc">
                                                                    <td>${acc.fullname} </td>
                                                                    <td>${acc.email} </td>
                                                                    <td>${acc.phone} </td></c:forEach>

                                                                    <td>
                                                                    <c:forEach items="${requestScope.car}" var="o">
                                                                        <c:choose>
                                                                            <c:when test="${o.roomId==1}">
                                                                                Car_Rừng
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==2}">
                                                                                Car_Biển
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==3}">
                                                                                Car_Anh
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==4}">
                                                                                Car_Quang
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==5}">
                                                                                Car_Cường
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==6}">
                                                                                Car_Đạt
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==7}">
                                                                                Car_Đức_Anh
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==8}">
                                                                                Car_News
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==9}">
                                                                                Car_Auto
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==10}">
                                                                                Car_Sao
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==11}">
                                                                                Car_Dao
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==12}">
                                                                                Car_Duong
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==13}">
                                                                                Car_Núi
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==14}">
                                                                                Car_Dinh
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==15}">
                                                                                Car_Mai
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==16}">
                                                                                Car_Au
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==17}">
                                                                                Car_Mua
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==18}">
                                                                                Car_Nang
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==19}">
                                                                                Car_Tuyet
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==20}">
                                                                                Car_Lieu
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==21}">
                                                                                Car_Nuoc
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==22}">
                                                                                Car_X
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==23}">
                                                                                Car_Q
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==24}">
                                                                                Car_A
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==25}">
                                                                                Car_Y
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==26}">
                                                                                Car_V
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==27}">
                                                                                Car_P
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==28}">
                                                                                Car_T
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==29}">
                                                                                Car_R
                                                                            </c:when>
                                                                            <c:when test="${o.roomId==30}">
                                                                                Car_S
                                                                            </c:when>

                                                                        </c:choose>  </c:forEach></td>
                                                                <td>${od.date}</td>
                                                                <td>${od.time}</td>
                                                                <td> <c:choose>
                                                                        <c:when test="${od.status ==1}">
                                                                            Đang xử lý
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            Đã xác nhận
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </td>

                                                                <td>  
                                                                    <%--<c:forEach items="${requestScope.car}" var="c">--%>


                                                                    <ul class="list_none pr_action_btn">
                                                                        <a class="btn btn-fill-out btn-sm  popup-ajax" href="MainController?action=reviewCarInfo&carId=${od.carId}" >Xem thêm</a>
                                                                    </ul>



                                                                    <%--</c:forEach>--%>
                                                                </td>
                                                                
                                                                <td>  
                   
                                                                   <ul class="list_none pr_action_btn">
                                                                        <a class="btn btn-fill-out btn-sm " href="MainController?action=thongtinxe&carId=${od.carId}" >Thanh Toán</a>
                                                                    </ul>

                                                                </td>

                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>








                    </div>
                </div>
            </div>
        </div>
        <!-- END SECTION SHOP -->

        <!-- START SECTION SUBSCRIBE NEWSLETTER -->

        <!-- START SECTION SUBSCRIBE NEWSLETTER -->

    </div>
    <!-- END MAIN CONTENT -->

    <!-- START FOOTER -->
    <footer class="footer_dark">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="widget">
                            <h6 class="widget_title">Thông tin liên hệ</h6>
                            <ul class="contact_info contact_info_light">
                                <li>
                                    <i class="ti-location-pin"></i>
                                    <p>123 Đường Trần Hưng Đạo , Phường 5 , Quận 5 , Thành phố Hồ Chí Minh</p>
                                </li>
                                <li>
                                    <i class="ti-email"></i>
                                    <a href="mailto:info@sitename.com">info@sitename.com</a>
                                </li>
                                <li>
                                    <i class="ti-mobile"></i>
                                    <p>+ 457 789 789 65</p>
                                </li>
                            </ul>
                        </div>
                        <!--                    <div class="widget">
                                                <ul class="social_icons rounded_social">
                                                    <li><a href="#" class="sc_facebook"><i class="ion-social-facebook"></i></a></li>
                                                    <li><a href="#" class="sc_twitter"><i class="ion-social-twitter"></i></a></li>
                                                    <li><a href="#" class="sc_google"><i class="ion-social-googleplus"></i></a></li>
                                                    <li><a href="#" class="sc_youtube"><i class="ion-social-youtube-outline"></i></a></li>
                                                    <li><a href="#" class="sc_instagram"><i class="ion-social-instagram-outline"></i></a></li>
                                                </ul>
                                            </div>-->
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-6">
                        <div class="widget">
                            <h6 class="widget_title">Liên kết hữu ích</h6>
                            <ul class="widget_links">
                                <li><a href="#">Vè chúng tối</a></li>
                                <li><a href="#">Câu hỏi thường gặp</a></li>
                                <li><a href="#">Địa chỉ</a></li>

                                <li><a href="#">Thông tin liên hệ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-6">
                        <div class="widget">
                            <h6 class="widget_title">Tài khoản</h6>
                            <ul class="widget_links">
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Giảm giá</a></li>


                                <li><a href="#">Theo dõi đơn </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="widget">
                            <h6 class="widget_title">Theo dõi Bản tin của chúng tôi</h6>
                            <p>Nếu bạn muốn nhận email từ chúng tôi mỗi khi chúng tôi có ưu đãi đặc biệt mới, hãy đăng ký tại đây!</p>
                            <!--                        <div class="newsletter_form rounded_input">
                                                        <form>
                                                            <input type="text" required="" class="form-control" placeholder="Enter Email Address">
                                                            <button type="submit" class="btn-send" name="submit" value="Submit"><i class="icon-envelope-letter"></i></button>
                                                        </form>
                                                    </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom_footer border-top-tran">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p class="mb-md-0 text-center text-md-start">© 2020 Tất cả các quyền được bảo lưu bởi Bestwebcreator</p>
                    </div>
                    <!--                <div class="col-md-6">
                                        <ul class="footer_payment text-center text-md-end">
                                            <li><a href="#"><img src="assets/images/visa.png" alt="visa"></a></li>
                                            <li><a href="#"><img src="assets/images/discover.png" alt="discover"></a></li>
                                            <li><a href="#"><img src="assets/images/master_card.png" alt="master_card"></a></li>
                                            <li><a href="#"><img src="assets/images/paypal.png" alt="paypal"></a></li>
                                            <li><a href="#"><img src="assets/images/amarican_express.png" alt="amarican_express"></a></li>
                                        </ul>
                                    </div>-->
                </div>
            </div>
        </div>
    </footer>
    <!-- END FOOTER -->

    <a href="#" class="scrollup" style="display: none;"><i class="ion-ios-arrow-up"></i></a> 

    <!-- Latest jQuery --> 
    <script src="assets/js/jquery-3.6.0.min.js"></script> 
    <!-- jquery-ui --> 
    <script src="assets/js/jquery-ui.js"></script>
    <!-- popper min js -->
    <script src="assets/js/popper.min.js"></script>
    <!-- Latest compiled and minified Bootstrap --> 
    <script src="assets/bootstrap/js/bootstrap.min.js"></script> 
    <!-- owl-carousel min js  --> 
    <script src="assets/owlcarousel/js/owl.carousel.min.js"></script> 
    <!-- magnific-popup min js  --> 
    <script src="assets/js/magnific-popup.min.js"></script> 
    <!-- waypoints min js  --> 
    <script src="assets/js/waypoints.min.js"></script> 
    <!-- parallax js  --> 
    <script src="assets/js/parallax.js"></script> 
    <!-- countdown js  --> 
    <script src="assets/js/jquery.countdown.min.js"></script> 
    <!-- imagesloaded js --> 
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <!-- isotope min js --> 
    <script src="assets/js/isotope.min.js"></script>
    <!-- jquery.dd.min js -->
    <script src="assets/js/jquery.dd.min.js"></script>
    <!-- slick js -->
    <script src="assets/js/slick.min.js"></script>
    <!-- elevatezoom js -->
    <script src="assets/js/jquery.elevatezoom.js"></script>
    <!-- scripts js --> 
    <script src="assets/js/scripts.js"></script>






</body>
</html>