<%-- 
    Document   : ViewInfoCar
    Created on : 28/06/2023, 3:55:44 AM
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
        <!-- jquery-ui CSS -->
        <link rel="stylesheet" href="assets/css/jquery-ui.css">
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
                                    <li><i class="ti-mobile"></i><span>123-456-7890</span></li>
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
                            <img class="logo_dark"style="width: 175px" src="img/logo.jpg" alt="logo" />
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

        <!-- START SECTION BREADCRUMB -->
        <div class="breadcrumb_section bg_gray page-title-mini">
            <div class="container"><!-- STRART CONTAINER -->
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="page-title">
                            <h1>Chi tiết sản phẩm</h1>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb justify-content-md-end">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item active">Chi tiết sản phẩm</li>
                        </ol>
                    </div>
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
                        <c:forEach items="${requestScope.car}" var="c">
                            <div class="col-lg-6 col-md-6 mb-4 mb-md-0">

                                <div class="product-image">



                                    <div class="product_img_box">
                                        <img style="width: 100%" id="product_img" src='${c.img}' data-zoom-image="${c.img}" alt="product_img1" />
                                        <!--                                        <a href="#" class="product_img_zoom" title="Zoom">
                                                                                    <span class="linearicons-zoom-in"></span>
                                                                                </a>-->
                                    </div>

                                    <div id="pr_item_gallery" class="product_gallery_item slick_slider" data-slides-to-show="4" data-slides-to-scroll="1" data-infinite="false">
                                        <c:forEach items="${requestScope.imgCar}" var="i" >
                                            <div class="item">
                                                <a href="#" class="product_gallery_item active" data-image="${i.imgPath}" data-zoom-image="assets/images/product_zoom_img1.jpg">
                                                    <img width="100%" src="${i.imgPath}" alt="product_small_img1" />
                                                </a>
                                            </div>
                                            <!--                                        <div class="item">
                                                                                        <a href="#" class="product_gallery_item" data-image="assets/images/product_img1-2.jpg" data-zoom-image="assets/images/product_zoom_img2.jpg">
                                                                                            <img src="assets/images/product_small_img2.jpg" alt="product_small_img2" />
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="item">
                                                                                        <a href="#" class="product_gallery_item" data-image="assets/images/product_img1-3.jpg" data-zoom-image="assets/images/product_zoom_img3.jpg">
                                                                                            <img src="assets/images/product_small_img3.jpg" alt="product_small_img3" />
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="item">
                                                                                        <a href="#" class="product_gallery_item" data-image="assets/images/product_img1-4.jpg" data-zoom-image="assets/images/product_zoom_img4.jpg">
                                                                                            <img src="assets/images/product_small_img4.jpg" alt="product_small_img4" />
                                                                                        </a>
                                                                                    </div>-->
                                        </c:forEach> </div>

                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="pr_detail">
                                    <div class="product_description">
                                        <h4 class="product_title"><a href="#">${c.carName}</a></h4>

                                        <c:forEach items="${requestScope.room}" var="s">

                                            <h4 class="product_title"><a href="#">ShowRooms: ${s.nameRoom}</a></h4>

                                        </c:forEach>


                                        <c:forEach items="${requestScope.room}" var="s">
                                            <h6 class="product_title"><a href="#">${s.addressfull}</a></h6>


                                        </c:forEach>

                                        <div class="product_price">
                                            <span class="price">${c.price} triệu</span>

                                        </div><br>

                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:80%"></div>
                                            </div>
                                            <span class="rating_num">(21)</span>
                                        </div>



                                        <div class="pr_desc">
                                            <p>${c.description}</p>
                                        </div>


                                    </div>
                                    <hr />
                                    <div class="cart_extra">
                                        <!--                        <div class="cart-product-quantity">
                                                                    <div class="quantity">
                                                                        <input type="button" value="-" class="minus">
                                                                        <input type="text" name="quantity" value="1" title="Qty" class="qty" size="4">
                                                                        <input type="button" value="+" class="plus">
                                                                    </div>
                                                                </div>-->
                                        <div class="cart_btn">
                                            <div class="list_product_action_box">
                                                <ul class="list_none pr_action_btn">   <a class="nav-link search_trigger add-to-cart"  href="#">Mua Xe</a></ul></div>


                                        </div>


                                    </div>
                                    <hr />
                                    <ul class="product-meta">
                                        <!--                                        <li>SKU: <a href="#">BE45VGRT</a></li>-->
                                        <li>Ngày sản xuất: <a href="#">${c.manufacDate}</a></li>
                                        <!--                                        <li>Tags: <a href="#" rel="tag">Cloth</a>, <a href="#" rel="tag">printed</a> </li>-->
                                    </ul>

<!--                                    <div class="product_share">
                                        <span>Share:</span>
                                        <ul class="social_icons">
                                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                                            <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                                            <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li>
                                            <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
                                        </ul>
                                    </div>-->
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="large_divider clearfix"></div>
                        </div>
                    </div>
                    <div class="row">



                        <div class="col-12"> 
                            <div class="tab-style3">

                                <ul class="nav nav-tabs" role="tablist">
                                    <!--						<li class="nav-item">
                                                                                            <a class="nav-link active" id="Description-tab" data-bs-toggle="tab" href="#Description" role="tab" aria-controls="Description" aria-selected="true">Description</a>
                                                            </li>-->
                                    <li class="nav-item">
                                        <a class="nav-link" id="Additional-info-tab" data-bs-toggle="tab" href="#Additional-info" role="tab" aria-controls="Additional-info" aria-selected="false">Thông số cơ bản của xe</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="Reviews-tab" data-bs-toggle="tab" href="#Reviews" role="tab" aria-controls="Reviews" aria-selected="false">Đánh giá(2)</a>
                                    </li>
                                </ul>
                                <div class="tab-content shop_info_tab">
                                    <!--                      	<div class="tab-pane fade show active" id="Description" role="tabpanel" aria-labelledby="Description-tab">
                                                                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Vivamus bibendum magna Lorem ipsum dolor sit amet, consectetur adipiscing elit.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
                                                                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</p>
                                                            </div>-->
                                    <c:forEach items="${requestScope.ci}" var="cf">
                                        <div class="tab-pane fade" id="Additional-info" role="tabpanel" aria-labelledby="Additional-info-tab" style="font-size: 18px">

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
                                    </c:forEach>
                                    <div class="tab-pane fade" id="Reviews" role="tabpanel" aria-labelledby="Reviews-tab">
                                        <div class="comments">
                                            <h5 class="product_tab_title">Đánh giá của khách hàng</h5>
                                            <ul class="list_none comment_list mt-4">

                                                <li>
                                                    <!--                                                    <div class="comment_img">
                                                                                                            <img src="assets/images/user2.jpg" alt="user2"/>
                                                                                                        </div>-->
                                                    <div class="comment_block">
                                                        <div class="rating_wrap">
                                                            <div class="rating">
                                                                <div class="product_rate" style="width:60%"></div>
                                                            </div>
                                                        </div>
                                                        <p class="customer_meta">
                                                            <span class="review_author">Hoàng Nam</span>
                                                            <span class="comment-date">06/07/2023</span>
                                                        </p>
                                                        <div class="description">
                                                            <p> Hiệu suất và thiết kế của xe, trong khi các chuyên gia cũng đánh giá tích cực về tính năng và an toàn của nó.

                                                                Giá trị và giá cả: Xe có giá cả phải chăng và cung cấp nhiều tính năng tốt đáng giá cho số tiền bạn trả.</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="review_form field_form">
                                            <h5>Đánh giá</h5>
                                            <form class="row mt-3">
                                                <div class="form-group col-12 mb-3">
                                                    <div class="star_rating">
                                                        <span data-value="1"><i class="far fa-star"></i></span>
                                                        <span data-value="2"><i class="far fa-star"></i></span> 
                                                        <span data-value="3"><i class="far fa-star"></i></span>
                                                        <span data-value="4"><i class="far fa-star"></i></span>
                                                        <span data-value="5"><i class="far fa-star"></i></span>
                                                    </div>
                                                </div>
                                                <div class="form-group col-12 mb-3">
                                                    <textarea required="required" placeholder="Đánh giá của bạn*" class="form-control" name="message" rows="4"></textarea>
                                                </div>
                                                <div class="form-group col-md-6 mb-3">
                                                    <input required="required" placeholder="Nhập Tên *" class="form-control" name="name" type="text">
                                                </div>
                                                <div class="form-group col-md-6 mb-3">
                                                    <input required="required" placeholder="Nhập Email *" class="form-control" name="email" type="email">
                                                </div>

                                                <div class="form-group col-12 mb-3">
                                                    <button type="submit" class="btn btn-fill-out" name="submit" value="Submit">Gửi</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="small_divider"></div>
                            <div class="divider"></div>
                            <div class="medium_divider"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="heading_s1">
                                <h3>Những sản phẩm tương tự </h3>
                            </div>



                            <div class="releted_product_slider carousel_slider owl-carousel owl-theme" data-margin="20" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>
                                <c:forEach items="${requestScope.bId}" var="c2"> 
                                    <div class="item">
                                        <div class="product">
                                            <div class="product_img" style="height: 200px">
                                                <a href="shop-product-detail.html">
                                                    <img style="height: 100%;" src="${c2.img}" alt="product_img1">
                                                </a>
                                                <div class="product_action_box">
                                                    <ul class="list_none pr_action_btn">


                                                        <li><a href="shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>

                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product_info">
                                                <h6 class="product_title"><a href="ViewInfoCarServlet?carId=${c2.carId}&brandId=${c2.brandId}">${c2.carName}</a></h6>
                                                <div class="product_price">
                                                    <span class="price">${c2.price} triệu</span>

                                                </div>
                                                <div class="rating_wrap">
                                                    <div class="rating">
                                                        <div class="product_rate" style="width:80%"></div>
                                                    </div>
                                                    <span class="rating_num">(21)</span>
                                                </div>
                                                <div class="pr_desc">
                                                    <p>${c2.description}</p>  
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="heading_s1">
                                <h3>Đăng kí Lịch Hẹn Mua Xe </h3>
                            </div>

                            <ul class="list_none pr_action_btn">


                                <li class="add-to-cart">



                                    <form action="MainController" method="get">
                                        <div><h4>Ngày hẹn(*)</h4><input type="date" name="date" required="" style="width: 500px; height: 50px" placeholder="Ngày hẹn..."></div>
                                        <label for="time-input"><h4 >Giờ hẹn(*)</h4></label><br>

                                        <input required="" type="time" id="time-input" name="time" min="09:00" max="17:00" style="width: 500px; height: 50px" placeholder="Giờ hẹn...">

                                        <br>
                                        <div><h4>Tên(*)</h4><input type="text" name="name" required="" style="width: 500px; height: 50px" placeholder="Tên..."></div>
                                        <div><h4>Số điện thoại(*)</h4><input type="text" name="phone" required="" style="width: 500px; height: 50px" placeholder="Số điện thoại..."></div>
                                        <div><h4>Email(*)</h4><input type="text" name="email" required="" style="width: 500px; height: 50px" placeholder="Email..."></div>

                                        <div >
                                            <h4>Tên xe</h4>
                                            <select class="form-control" name="nameCar" >
                                                <c:forEach items="${requestScope.car}" var="c">
                                                    <option value="${c.carId}">${c.carName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>


                                        <br>
                                        <!--<button class="btn btn-fill-out btn-addtocart" type="submit" name="action" value="byCae">Xác nhận</button>-->
                                        <input class="btn btn-fill-out btn-addtocart" type="submit" name="action" value="Luu">

                                    </form>


                                </li>

                            </ul>



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