<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.ShowRoomDAO" %>
<%@page import="dto.Showroom" %>
<%@page import="dto.Car" %>
<%@page import="dto.brand" %>
<%@page import="dao.CarDAO" %>
<%@page import="dao.BrandDAO" %>
<%@page import="java.util.ArrayList" %>
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
        <!--<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png">-->
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
        <!--        <div class="preloader">
                    <div class="lds-ellipsis">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>-->


        <!-- START HEADER -->
     <header class="header_wrap fixed-top header_with_topbar">
            <div class="top-header">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-3">
                            <div class="d-flex align-items-center justify-content-center justify-content-md-start">

                                <ul class="contact_detail text-center text-lg-start">
                                    <li><i class="ti-mobile"></i><span>123-456-7890</span></li>
                                </ul>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="col-md-6">
                                <div class="product_search_form rounded_input">
                                    <form action="MainController" method="post">
                                        <div class="input-group">

                                            <!--                                        <input name="action" class="form-control" placeholder="Search Product..." required=""  type="text">
                                                                                    <button type="submit" class="search_btn2"><i class="fa fa-search"></i></button>-->
                                            <input class="form-control" placeholder="Tìm kiếm..." required=""  type="text" name="search">
                                            <button type="submit" class="search_btn2" name="action" value="searchCarIndex"><i class="fa fa-search"></i></button>

                                        </div>
                                    </form>
                                </div>

                            </div>

                        </div>

                        <div class="col-md-3">
                            <div class="text-center text-md-end">
                                <ul class="header_list">

                                    <li><a href="Signup.jsp"><i class="linearicons-user"></i><span>Đăng Kí</span></a></li>
                                    <li><a href="login.jsp"><i class="linearicons-user"></i><span>Đăng Nhập</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom_header dark_skin main_menu_uppercase">
                <div class="container">
                    <nav class="navbar navbar-expand-lg"> 
                        <a class="navbar-brand" href="index.jsp">
                            <img class="logo_light" style="width: 25%" src="img/logo.jpg" alt="logo" />
                            <img class="logo_dark"style="width: 160px" src="img/logo.jpg" alt="logo" />
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-expanded="false"> 
                            <span class="ion-android-menu"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="dropdown">
                                    <a  class="nav-link dropdown-toggle " href="index.jsp">Trang Chủ</a>

                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu">
                                        <ul> 
                                            <li><a class="dropdown-item nav-link nav_item" href="About.jsp">Về Chúng Tôi</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="Contact.jsp">Thông Tin Liên Hệ</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="faq.jsp">Câu hỏi thường gặp</a></li>

                                            <li><a class="dropdown-item nav-link nav_item" href="login.jsp">Đăng nhập</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="Signup.jsp">Đăng kí</a></li>
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
                                                        <li><a class="dropdown-item nav-link nav_item" href="MainController?action=listCarbybrand&brandId=${b.brandID}"> ${b.brandName}</a></li>

                                                    </ul>
                                                </li>


                                            </c:forEach>
                                        </ul>

                                    </div>
                                </li>

                                <li class="dropdown dropdown-mega-menu">
                                    <a class="dropdown-toggle nav-link" href="SaleCar.jsp" >Kí gửi Xe</a>                           
                                </li>


                                <li class="dropdown dropdown-mega-menu">
                                    <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">ShowRooms</a>
                                    <div class="dropdown-menu">
                                        <ul class="mega-menu d-lg-flex">
                                            <li class="mega-menu-col col-lg-12">
                                                <ul class="d-lg-flex">


                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>
                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomHN">Hà Nội</a> </li>
                                                                <c:forEach items="${ShowRoomDAO.getAllShowRoomHN()}" var="s">

                                                                <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCar&roomId=${s.room_id}">${s.nameRoom}</a></li>

                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>
                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomDN">Đà Nẵng</a> </li>
                                                                <c:forEach items="${ShowRoomDAO.getAllShowRoomDN()}" var="s">
                                                                <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCar&roomId=${s.room_id}">${s.nameRoom}</a></li>

                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>

                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomHCM">Hồ Chí Minh</a> </li>

                                                            <c:forEach items="${ShowRoomDAO.getAllShowRoomTpHCM()}" var="s">
                                                                <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCar&roomId=${s.room_id}">${s.nameRoom}</a></li>

                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>

                                        </ul>
                                    </div>
                                </li>
                                <li><a class="nav-link nav_item" href="Contact.jsp">Thông Tin liên hệ</a></li> 

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
        

        <!-- START SECTION BANNER -->
        <div class="banner_section slide_wrap shop_banner_slider staggered-animation-wrap">
            <div id="carouselExampleControls" class="carousel slide carousel-fade light_arrow" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active background_bg" data-img-src="https://img1.oto.com.vn/2021/04/27/tWHqfBXH/thumb-social-03-ce05.jpg">
                        <div class="banner_slide_content banner_content_inner">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-6 col-md-8 col-sm-9 col-10">
                                        <!-- <div class="banner_content2">
                                            <h6 class="mb-2 mb-sm-3 staggered-animation text-uppercase" data-animation="fadeInDown" data-animation-delay="0.2s">New Tranding</h6>
                                            <h2 class="staggered-animation" data-animation="fadeInDown" data-animation-delay="0.3s">Sofa Collection</h2>
                                            <p class="staggered-animation" data-animation="fadeInUp" data-animation-delay="0.4s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                            <a class="btn btn-line-fill btn-radius staggered-animation text-uppercase" href="shop-left-sidebar.html" data-animation="fadeInUp" data-animation-delay="0.5s">Shop Now</a>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item background_bg" data-img-src="https://dailyphumyford.com/wp-content/uploads/2020/12/Bang-gia-lan-banh-2023-min.png">
                        <div class="banner_slide_content banner_content_inner">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-6 col-md-8 col-sm-9 col-10">
                                        <!-- <div class="banner_content2">
                                            <h5 class="mb-2 mb-sm-3 staggered-animation font-weight-light" data-animation="fadeInDown" data-animation-delay="0.2s">Get up to 50% off Today Only!</h5>
                                            <h2 class="staggered-animation" data-animation="fadeInDown" data-animation-delay="0.3s">Wooden  Chair Collection</h2>
                                            <a class="btn btn-border-fill btn-radius staggered-animation text-uppercase" href="shop-left-sidebar.html" data-animation="fadeInUp" data-animation-delay="0.4s">Shop Now</a>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item background_bg" data-img-src="https://canthoauto.com/wp-content/uploads/2019/01/b%E1%BA%A3ng-gi%C3%A1-xe-toyota-c%E1%BA%A7n-th%C6%A1-ninh-ki%E1%BB%81u.jpg">
                        <div class="banner_slide_content banner_content_inner">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-6 col-md-8 col-sm-9 col-10">
                                        <!-- <div class="banner_content2">
                                            <h5 class="mb-2 mb-sm-3 staggered-animation font-weight-light" data-animation="fadeInDown" data-animation-delay="0.2s">Taking your Viewing Experience to Next Level</h5>
                                            <h2 class="staggered-animation" data-animation="fadeInDown" data-animation-delay="0.3s">Living Room Collection</h2>
                                            <a class="btn btn-border-fill btn-radius staggered-animation text-uppercase" href="shop-left-sidebar.html" data-animation="fadeInUp" data-animation-delay="0.4s">Shop Now</a>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <ol class="carousel-indicators indicators_style2">
                    <li data-bs-target="#carouselExampleControls" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="#carouselExampleControls" data-bs-slide-to="1"></li>
                    <li data-bs-target="#carouselExampleControls" data-bs-slide-to="2"></li>
                </ol>
            </div>
        </div>
        <!-- END SECTION BANNER -->

        <!-- END MAIN CONTENT -->
        <div class="main_content">

            <!-- START SECTION SHIPPING INFO -->
            <div class="section small_pb">
                <div class="container">
                    <div class="row g-0">
                        <div class="col-lg-3 col-sm-6">	
                            <div class="icon_box icon_box_style3">
                                <div class="icon">
                                    <i class="flaticon-shipped"></i>
                                </div>
                                <div class="icon_box_content">
                                    <h6>1. Tìm xe ưng ý </h6>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">	
                            <div class="icon_box icon_box_style3">
                                <div class="icon">
                                    <i class="flaticon-money-back"></i>
                                </div>
                                <div class="icon_box_content">
                                    <h6>2. Đặt lịch xem xe</h6>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">	
                            <div class="icon_box icon_box_style3">
                                <div class="icon">
                                    <i class="flaticon-support"></i>
                                </div>
                                <div class="icon_box_content">
                                    <h6>3. Giao xe tận nơi</h6>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">	
                            <div class="icon_box icon_box_style3">
                                <div class="icon">
                                    <i class="flaticon-lock"></i>
                                </div>
                                <div class="icon_box_content">
                                    <h6>4. Dịch vụ hậu mãi</h6>

                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div>
            <!-- START SECTION SHIPPING INFO -->

            <!-- START SECTION SHOP -->
            <div class="section small_pt pb_20">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-6">
                            <div class="heading_s3 text-center">
                                <h2>NHỮNG DÒNG XE NỔI BẬT NHẤT NĂM 2023</h2>
                            </div>
                            <div class="small_divider clearfix"></div>
                        </div>  
                    </div>
                    <div class="row">
                       
                        <div class="product_slider carousel_slider owl-carousel owl-theme nav_style1" data-loop="true" data-dots="false" data-nav="true" data-margin="20" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>

                           <c:forEach begin="1" end="20" var="ca" items="${CarDAO.getAllCarFull()}">
                                <div class="item">
                                    <div class="product">
                                             <div class="product">
                                                <a href="ViewInfoCarServlet?carId=${ca.carId}" >
                                                    <img style="height: 250px; width: 300px" src="${ca.img}" alt="product_img5">
                                                </a>
                                                <div class="product_action_box">
                                                    <ul class="list_none pr_action_btn">
                                                        <!--<li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i> Add To Cart</a></li>-->
                                                        <!--                                                    <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>-->
<!--                                                        <li><a href=" ProfileCarServlet?carIdz=${ca.carId}" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>-->

                                                    </ul>
                                                </div>
                                            </div>
                                        <div class="product_info">
                                            
                                           <h6 class="product_title"><a href="ViewInfoCarServlet?carId=${ca.carId}&brandId=${ca.brandId}&rooms=${ca.roomId}">${ca.carName}</a></h6>
                                            <div class="product_price">
                                                <span class="price">${ca.price} Triệu</span>


                                            </div>
                                            <div class="rating_wrap">
                                                <div class="rating">
                                                    <div class="product_rate" style="width:80%"></div>
                                                </div>
                                                <span class="rating_num">(21)</span>
                                            
                                            </div>
                                            <div class="pr_desc">
                                                <p>${ca.description}</p>

                                            </div>
                                            <div class="link" style="color: red;
                                                 font-weight: 700;
                                                 font-size: 14px;
                                                 line-height: 18px;">
                                                <a href="ViewInfoCarServlet?carId=${ca.carId}&brandId=${ca.brandId}&rooms=${ca.roomId}">Xem chi tiết</a></div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                                    </div>
                               
                            </div>
                        </div>
                  
            
        
  

<!-- END SECTION SHOP -->

<div class="section small_pt pb_20">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="heading_s3 text-center">
                            <h2>TIN BÁN XE THEO KHOẢNG GIÁ 2023</h2>
                        </div>
                        <div class="small_divider clearfix"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h4>XE Ô TÔ  DƯỚI 300 TRIỆU</h4>
                        <div class="product_slider carousel_slider owl-carousel owl-theme nav_style1" data-loop="true" data-dots="false" data-nav="true" data-margin="20" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>

                            <c:forEach var="p"  items="${CarDAO.getAllCarByPrice()}">
                                <div class="item">
                                    <div class="product">
                                             <div class="product">
                                                <a href="ViewInfoCarServlet?carId=${p.carId}" >
                                                    <img style="height: 250px; width: 300px" src="${p.img}" alt="product_img5">
                                                </a>
                                                <div class="product_action_box">
                                                    <ul class="list_none pr_action_btn">
                                                        <!--<li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i> Add To Cart</a></li>-->
                                                        <!--                                                    <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>-->
<!--                                                        <li><a href=" ProfileCarServlet?carIdz=${p.carId}" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>-->

                                                    </ul>
                                                </div>
                                            </div>
                                        <div class="product_info">
                                            
                                           <h6 class="product_title"><a href="ViewInfoCarServlet?carId=${p.carId}&brandId=${p.brandId}&rooms=${p.roomId}">${p.carName}</a></h6>
                                            <div class="product_price">
                                                <span class="price">${p.price} Triệu</span>


                                            </div>
                                            <div class="rating_wrap">
                                                <div class="rating">
                                                    <div class="product_rate" style="width:80%"></div>
                                                </div>
                                                <span class="rating_num">(21)</span>
                                            
                                            </div>
                                            <div class="pr_desc">
                                                <p>${c.description}</p>

                                            </div>
                                            <div class="link" style="color: red;
                                                 font-weight: 700;
                                                 font-size: 14px;
                                                 line-height: 18px;">
                                                <a href="ViewInfoCarServlet?carId=${p.carId}&brandId=${p.brandId}">Xem chi tiết</a></div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <h4>XE Ô TÔ  TRÊN 500 TRIỆU</h4>
                        <div class="product_slider carousel_slider owl-carousel owl-theme nav_style1" data-loop="true" data-dots="false" data-nav="true" data-margin="20" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>

                            <c:forEach var="p"  items="${CarDAO.getAllCarByPriceFive()}">
                                <div class="item">
                                    <div class="product">
                                             <div class="product">
                                                <a href="ViewInfoCarServlet?carId=${p.carId}" >
                                                    <img style="height: 250px; width: 300px" src="${p.img}" alt="product_img5">
                                                </a>
                                                <div class="product_action_box">
                                                    <ul class="list_none pr_action_btn">
                                                        <!--<li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i> Add To Cart</a></li>-->
                                                        <!--                                                    <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>-->
<!--                                                        <li><a href=" ProfileCarServlet?carIdz=" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>-->

                                                    </ul>
                                                </div>
                                            </div>
                                        <div class="product_info">
                                            
                                         <h6 class="product_title"><a href="ViewInfoCarServlet?carId=${p.carId}&brandId=${p.brandId}&rooms=${p.roomId}">${p.carName}</a></h6>
                                            <div class="product_price">
                                                <span class="price">${p.price} Triệu</span>
                                            </div>

                                            <div class="rating_wrap">
                                                <div class="rating">
                                                    <div class="product_rate" style="width:80%"></div>
                                                </div>
                                                <span class="rating_num">(21)</span>
                                                <!--                                                <a href="login.jsp" style="font-size: 16px;
                                                                                                   width: auto;
                                                                                                   height: auto;
                                                                                                   padding: 12px 30px;
                                                                                                   background-color: #FF324D;
                                                                                                   border: 1px solid #FF324D;
                                                                                                   color: #fff;
                                                                                                   border-radius: 4px; box-shadow: none;"> Mua Xe</a>-->
                                            </div>
                                            <div class="pr_desc">
                                                <p>${p.description}</p>

                                            </div>
                                            <div class="link" style="color: red;
                                                 font-weight: 700;
                                                 font-size: 14px;
                                                 line-height: 18px;">
                                                <a href="ViewInfoCarServlet?carId=${p.carId}&brandId=${p.brandId}">Xem chi tiết</a></div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<!-- START SECTION SHOP -->
<div class="section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="heading_s1 text-center">
                    <h2>NHỮNG SHOWROOMS NỔI BẬT NHẤT NĂM 2023</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="product_slider carousel_slider owl-carousel owl-theme nav_style1" data-loop="true" data-dots="false" data-nav="true" data-margin="20" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>
                    <c:forEach var="s1" begin="20" end="28"   items="${ShowRoomDAO.getAllShowRoom()}">

                                <div class="item">
                                    <div class="product">
                                        <div class="product_img">
                                            <a href="MainController?action=viewCar&roomId=${s1.room_id}">
                                                <img src="${s1.image}" alt="product_img5">
                                            </a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <!--<li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i> Add To Cart</a></li>-->
                                                    <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>
                                                    <li><a href=" ProfileShowRoomServlet?showRoomIdz=${s1.room_id}" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>

                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                            <h6 class="product_title"><a href="MainController?action=viewCar&roomId=${s1.room_id}">${s1.nameRoom}</a></h6>
                                            <div class="product_price">
                                                <span class="price">0${s1.phone}</span>
                                                <p>${s1.addressfull}</p>

                                            </div>            
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- END SECTION SHOP -->
<div class="section pt-0 small_pb">
    <div class="custom-container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading_tab_header">
                    <div class="heading_s2">
                        <h4>NHỮNG HÃNG XE NỔI TIẾNG</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
                    <div class="col-12">
                        <div class="client_logo carousel_slider owl-carousel owl-theme nav_style3" data-dots="false" data-nav="true" data-margin="30" data-loop="true" data-autoplay="true" data-responsive='{"0":{"items": "2"}, "480":{"items": "3"}, "767":{"items": "4"}, "991":{"items": "5"}, "1199":{"items": "6"}}'>
                            <c:forEach var="b" items="${BrandDAO.getBrands()}">
                                <div class="item">
                                    <div class="cl_logo" style="width: 75px">
                                        <a href="MainController?action=listCarbybrand&brandId=${b.brandID}"><img style="width: 50px" src="${b.imgPath}" alt="cl_logo"/></a> 
                                    </div>
                                </div>

                            </c:forEach>
                        </div>
                    </div>
                </div>
    </div>
</div>


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
<script>

    var giohang = new Array();
    document.getElementById("showcart").style.display = "none";
    function themvaogiohang(x) {
        var boxsp = x.parentElement.children;
        var hinh = boxsp[0].children[0].src;
        var tensp = boxsp[2].innerText;
        var gia = boxsp[1].children[0].innerText;

        var sp = new Array(hinh, tensp, gia);
        giohang.push(sp);
        console.log(giohang);
        showcountsp();
    }

    function showcountsp() {
        document.getElementById("countsp").innerHTML = giohang.length;
    }

    function showmycart() {
        var ttcar = "";
        for (let i = 0; i < giohang.length; i++) {
            ttcar +=
//                            ' <td><img src="' + giohang[i][0] + '"></td>' +
                    ' <td>Giá: ' + giohang[i][1] + ' </td>' +
                    '  <td>Tên:  ' + giohang[i][2] + ' </td>';

        }
        document.getElementById("mycart").innerHTML = ttcar;
    }



    function showcart() {


        var x = document.getElementById("showcart");
        if (x.style.display == "block") {
            x.style.display = "none";
        } else {
            x.style.display = "block";
        }
        showmycart();
    }

</script>
<!-- Latest jQuery --> 
<script src="assets/js/jquery-3.6.0.min.js"></script> 
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