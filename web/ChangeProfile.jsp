<%-- 
    Document   : ChangeProfile
    Created on : 28/06/2023, 8:39:57 AM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                                    <li><i class="ti-user"   "></i><span style="font-size: 18px" >Xin Chào ${sessionScope.name}</span></li>
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
                                            <input class="form-control" placeholder="Search Product..." required=""  type="text">
                                            <button type="submit" class="search_btn2"><i class="fa fa-search"></i></button>

                                        </div>
                                    </form>
                                </div>

                            </div>

                        </div>

                        <div class="col-md-3">
                            <div class="text-center text-md-end">
                                <ul class="header_list">

                                    <li><a href="ChangeProfile.jsp"><i class="linearicons-user"></i><span>Thay đổi thông tin </span></a></li>
                                    <li><a href="MainController?action=logout"><i class="linearicons-user"></i><span>Logout</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom_header dark_skin main_menu_uppercase">
                <div class="container">
                    <nav class="navbar navbar-expand-lg"> 
                        <a class="navbar-brand" href="index.html">
                            <img class="logo_light" src="assets/images/logo_light.png" alt="logo" />
                            <img class="logo_dark" src="assets/images/logo_dark.png" alt="logo" />
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-expanded="false"> 
                            <span class="ion-android-menu"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="dropdown">
                                    <a  class="nav-link dropdown-toggle " href="index.jsp">Home</a>

                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu">
                                        <ul> 
                                            <li><a class="dropdown-item nav-link nav_item" href="about.html">About Us</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="contact.html">Contact Us</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="faq.html">Faq</a></li>

                                            <li><a class="dropdown-item nav-link nav_item" href="login.jsp">Login</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="signup.jsp">Register</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="dropdown dropdown-mega-menu">
                                    <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">Mua Xe</a>
                                    <div class="dropdown-menu">
                                        <ul class="mega-menu d-lg-flex">
                                            <li class="mega-menu-col col-lg-4">
                                                <ul> 
                                                    <!-- <li class="dropdown-header">Woman's</li> -->
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Toyota</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Lexus</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Mecedes-Benz</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">BMW</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Honda</a></li>
                                                </ul>
                                            </li>
                                            <li class="mega-menu-col col-lg-4">
                                                <ul>
                                                    <!-- <li class="dropdown-header">Men's</li> -->
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Ford</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Audi</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Nissa</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Kia</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Suzuki</a></li>
                                                </ul>
                                            </li>
                                            <li class="mega-menu-col col-lg-4">
                                                <ul>
                                                    <!-- <li class="dropdown-header">Kid's</li> -->
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Chevrolet</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Isuzu</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Madza</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="s">VinFast</a></li>
                                                    <li><a class="dropdown-item nav-link nav_item" href="">Volvo</a></li>
                                                </ul>
                                            </li>

                                        </ul>

                                    </div>
                                </li>

                                <li class="dropdown dropdown-mega-menu">
                                    <a class="dropdown-toggle nav-link" href="SaleCar.jsp" >Bán Xe</a>                           
                                </li>

                                <!--                                <li class="dropdown">
                                                                    <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">Blog</a>
                                                                    <div class="dropdown-menu dropdown-reverse">
                                                                        <ul>
                                                                            <li>
                                                                                <a class="dropdown-item menu-link dropdown-toggler" href="#">Grids</a>
                                                                                <div class="dropdown-menu">
                                                                                    <ul> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-three-columns.html">3 columns</a></li>
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-four-columns.html">4 columns</a></li> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-left-sidebar.html">Left Sidebar</a></li> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-right-sidebar.html">right Sidebar</a></li>
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-standard-left-sidebar.html">Standard Left Sidebar</a></li> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-standard-right-sidebar.html">Standard right Sidebar</a></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <a class="dropdown-item menu-link dropdown-toggler" href="#">Masonry</a>
                                                                                <div class="dropdown-menu">
                                                                                    <ul> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-masonry-three-columns.html">3 columns</a></li>
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-masonry-four-columns.html">4 columns</a></li> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-masonry-left-sidebar.html">Left Sidebar</a></li> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-masonry-right-sidebar.html">right Sidebar</a></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <a class="dropdown-item menu-link dropdown-toggler" href="#">Single Post</a>
                                                                                <div class="dropdown-menu">
                                                                                    <ul> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-single.html">Default</a></li>
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-single-left-sidebar.html">left sidebar</a></li>
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-single-slider.html">slider post</a></li> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-single-video.html">video post</a></li> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-single-audio.html">audio post</a></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <a class="dropdown-item menu-link dropdown-toggler" href="#">List</a>
                                                                                <div class="dropdown-menu">
                                                                                    <ul> 
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-list-left-sidebar.html">left sidebar</a></li>
                                                                                        <li><a class="dropdown-item nav-link nav_item" href="blog-list-right-sidebar.html">right sidebar</a></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </li>-->
                                <li class="dropdown dropdown-mega-menu">
                                    <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">ShowRooms</a>
                                    <div class="dropdown-menu">
                                        <ul class="mega-menu d-lg-flex">
                                            <li class="mega-menu-col col-lg-12">
                                                <ul class="d-lg-flex">
                                                  
                                                
                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul> 
                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomHN">Hà Nội</a> </li>
    
                                                  
                                                            <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCar&roomId=${room_id}">Car_Rừng</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Biển</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Anh</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Quang</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Cường</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Đạt</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Đức_Anh</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Auto</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Sao</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_News</a></li>

                                                        </ul>
                                                    </li>



                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>
                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomDN">Đà Nẵng</a> </li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Dao</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Duong</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Núi     </a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Dinh</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Mai</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Au</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Mua</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Nang</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Tuyet</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Lieu</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>

                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomHCM">Hồ Chí Minh</a> </li>
                                                          
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Nuoc</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_X</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Q     </a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_A   </a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_Y</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_V</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_P</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_T</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_R</a></li>
                                                            <li><a class="dropdown-item nav-link nav_item" href="checkout.html">Car_S</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>

                                        </ul>
                                    </div>
                                </li>
                                <li><a class="nav-link nav_item" href="contact.html">Contact Us</a></li> 

                            </ul>
                        </div>
                        <ul class="navbar-nav attr-nav align-items-center">



                            <li class="dropdown cart_dropdown"><a class="nav-link cart_trigger" href="#" data-bs-toggle="dropdown"><i class="linearicons-cart"></i><span class="cart_count">2</span></a>
                                <div class="cart_box dropdown-menu dropdown-menu-right">
                                    <ul class="cart_list">
                                        <li>
                                            <a href="#" class="item_remove"><i class="ion-close"></i></a>
                                            <a href="#"><img src="assets/images/cart_thamb1.jpg" alt="cart_thumb1">Variable product 001</a>
                                            <span class="cart_quantity"> 1 x <span class="cart_amount"> <span class="price_symbole">$</span></span>78.00</span>
                                        </li>
                                        <li>
                                            <a href="#" class="item_remove"><i class="ion-close"></i></a>
                                            <a href="#"><img src="assets/images/cart_thamb2.jpg" alt="cart_thumb2">Ornare sed consequat</a>
                                            <span class="cart_quantity"> 1 x <span class="cart_amount"> <span class="price_symbole">$</span></span>81.00</span>
                                        </li>
                                    </ul>
                                    <div class="cart_footer">
                                        <p class="cart_total"><strong>Subtotal:</strong> <span class="cart_price"> <span class="price_symbole">$</span></span>159.00</p>
                                        <p class="cart_buttons"><a href="#" class="btn btn-fill-line btn-radius view-cart">View Cart</a><a href="#" class="btn btn-fill-out btn-radius checkout">Checkout</a></p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- END HEADER -->

        <!-- START SECTION BANNER -->
       <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="container">
                    <div class="row g-5 mb-5">
                        <div class="col-lg-12">
                            <div class="section-title mb-5">
                                <h5 style="text-align: center; color: red; font-size: 30px">Thông Tin Của Tôi</h5>
                            </div>

                            <div class="card-box profile-header">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="profile-view">
                                            <div class="profile-img-wrap">
                                                <div class="profile-img">
                                                    <a href="#"><img class="avatar" src="" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="profile-basic">
                                                <div class="row">
                                                    <div class="col-md-5">
                                                        <div class="profile-info-left">
                                                            <h3 class="user-name m-t-0 mb-0">Tên của người dùng: ${u.getFullName()}</h3>
                                                     



                                                    </div>
                                                </div>
                                                <div class="col-md-7">
                                                    <ul class="personal-info" style=" list-style: none">
                                                          <li>
                                                            <span class="title">Tên: </span> 
                                                            <span class="text"><a href="#"></a><c:set var="name" value="${u.getFullName()}"/></span>
                                                        </li>
                                                        <li>
                                                            <span class="title">Số Điện Thoại:</span> 
                                                            <span class="text"><a href="#"></a><c:set var="phone" value="${u.getPhoneNumber()}"/></span>
                                                        </li>
                                                        <li>
                                                            <span class="title">Email:</span>
                                                            <span class="text"><a href="#"><c:set var="email" value="${u.getEmail()}"/></a></span>
                                                        </li>
                                                        <li>
                                                            <span class="title">Địa chỉ: </span>
                                                            <span class="text"><c:set var="gender" value="${u.getGender()}"/></span>
                                                        </li>
                                                        
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                        
                                </div>
                            </div>
                        </div>
                        <div class="profile-tabs">
                            <div class="card-box">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card-box">
                                            <div class="card-block">

                                                <form action="MainController" method="get">
                                                    <input type="hidden" name="userId" value="${u.getId()}">
                                                    <input type="hidden" name="txtemail" value="${u.getEmail()}">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <div class="form-group">
                                                                <label> Họ Và Tên <span class="text-danger">*</span></label>
                                                                <input class="form-control" type="text" name="txtfullname" required="" value="${u.getFullName()}">
                                                            </div>
                                                        </div>
                                                            
                                                        <div class="col-sm-6">
                                                            <div class="form-group">
                                                                <label> Số Điện Thoại <span class="text-danger">*</span></label>
                                                                <input class="form-control" type="text" name="txtphonenumber" required="" value="${u.getPhoneNumber()}">
                                                            </div>
                                                            <h6 style="color: red">${requestScope.report1}</h6>
                                                        </div>

                                                        <div class="col-sm-6">
                                                            <div class="form-group">
                                                                <label> Email <span class="text-danger">*</span></label>
                                                                <input class="form-control" type="text" name="txtemail" required="" value="${u.getEmail()}">
                                                            </div>
                                                        </div>

                                                        

                                                        <div class="m-t-20 text-center">
                                                            <button style="border-radius: 50px; background: red; margin-top: 20px" class="btn btn-primary submit-btn" name="action" value="saveChangeProfileUser"> CẬP NHẬT</button>
                                                        </div>
                                                    </div>
                                                </form>

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


<!-- START FOOTER -->
<footer class="footer_dark">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="widget">
                        <h6 class="widget_title">Contact info</h6>
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
                    <div class="widget">
                        <ul class="social_icons rounded_social">
                            <li><a href="#" class="sc_facebook"><i class="ion-social-facebook"></i></a></li>
                            <li><a href="#" class="sc_twitter"><i class="ion-social-twitter"></i></a></li>
                            <li><a href="#" class="sc_google"><i class="ion-social-googleplus"></i></a></li>
                            <li><a href="#" class="sc_youtube"><i class="ion-social-youtube-outline"></i></a></li>
                            <li><a href="#" class="sc_instagram"><i class="ion-social-instagram-outline"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="widget">
                        <h6 class="widget_title">Useful Links</h6>
                        <ul class="widget_links">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Location</a></li>
                            <li><a href="#">Affiliates</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="widget">
                        <h6 class="widget_title">My Account</h6>
                        <ul class="widget_links">
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Discount</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="#">Orders History</a></li>
                            <li><a href="#">Order Tracking</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="widget">
                        <h6 class="widget_title">Subscribe Our Newsletter</h6>
                        <p>If you want to get an email from us every time we have a new special offer, then sign up here!</p>
                        <div class="newsletter_form rounded_input">
                            <form>
                                <input type="text" required="" class="form-control" placeholder="Enter Email Address">
                                <button type="submit" class="btn-send" name="submit" value="Submit"><i class="icon-envelope-letter"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom_footer border-top-tran">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p class="mb-md-0 text-center text-md-start">© 2020 All Rights Reserved by Bestwebcreator</p>
                </div>
                <div class="col-md-6">
                    <ul class="footer_payment text-center text-md-end">
                        <li><a href="#"><img src="assets/images/visa.png" alt="visa"></a></li>
                        <li><a href="#"><img src="assets/images/discover.png" alt="discover"></a></li>
                        <li><a href="#"><img src="assets/images/master_card.png" alt="master_card"></a></li>
                        <li><a href="#"><img src="assets/images/paypal.png" alt="paypal"></a></li>
                        <li><a href="#"><img src="assets/images/amarican_express.png" alt="amarican_express"></a></li>
                    </ul>
                </div>
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