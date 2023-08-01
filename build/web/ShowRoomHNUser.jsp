<%-- 
    Document   : ShowroomHN
    Created on : 28/06/2023, 3:07:14 AM
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
<title>Shopwise - eCommerce Bootstrap 5 HTML Template</title>
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
                                    <li><i class="ti-user"   "></i><span style="font-size: 18px" >Xin Chào, ${sessionScope.name}</span></li>
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

                                    <li><a href="ChangeProfile.jsp"><i class="linearicons-user"></i><span>Thay đổi thông tin</span></a></li>
                                    <li><a href="MainController?action=logout"><i class="linearicons-user"></i><span>Đăng Xuất</span></a></li>
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
                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomHNz">Hà Nội</a> </li>
                                                                <c:forEach items="${ShowRoomDAO.getAllShowRoomHN()}" var="s">

                                                                <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCarUser&roomIdz=${s.room_id}">${s.nameRoom}</a></li>

                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>
                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomDNz">Đà Nẵng</a> </li>
                                                                <c:forEach items="${ShowRoomDAO.getAllShowRoomDN()}" var="s">
                                                                <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCarUser&roomIdz=${s.room_id}">${s.nameRoom}</a></li>

                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>

                                                            <li class="dropdown-header" style="font-size: 15px"><a href="MainController?action=ShowRoomHCMz">Hồ Chí Minh</a> </li>

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

                        
<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- START SECTION SHOP -->
<div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                             
                            <div class="row shop_container list">
                                <div class="col-md-4 col-6">
                                     <div class="product">
                            <c:forEach items="${requestScope.listShowrooms}" var="s">
                            
                       
                            <div class="product_img">
                                <a href="MainController?action=viewCar&roomId=${s.room_id}">
                                    <img src="${s.image}" alt="product_img1">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li class="add-to-cart"><a href="#"><i class="icon-heart"></i> Lưu tin</a></li>
                                        <li><a href="shop-compare.html" class="popup-ajax"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                   
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6 class="product_title"><a href="MainController?action=viewCar&roomId=${s.room_id}">${s.nameRoom}</a></h6>
                               
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:80%"></div>
                                    </div>
                                    <span class="rating_num">(21)</span>
                                </div>
                                <div class="pr_desc">
                                    <p>0${s.phone}</p>
                                    <p>${s.addressfull}</p>   
                                </div>

                                                                                
                                <div class="list_product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li class="add-to-cart"><input type="hidden" value="${s.room_id}" name="roomId"> <a href="MainController?action=viewCar&roomId=${s.room_id}"><i class="icon-basket-loaded"></i> THÔNG TIN VỀ SHOWROOM</a></li>
                                       
                                    </ul>
                                </div>
                            </div>
                                 </c:forEach>
                        </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <ul class="pagination mt-3 justify-content-center pagination_style1">
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#"><i class="linearicons-arrow-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 mt-4 pt-2 mt-lg-0 pt-lg-0">
                            <div class="sidebar">
                                <div class="widget">

                                    <h5 class="widget_title">Những hãng xe nổi bất </h5>
                                    <c:forEach begin="5" end="10" items="${BrandDAO.getBrands()}" var="b">
                                        <ul class="widget_categories">
                                            <li><a href="shoplist?brandId=${b.brandID}"><span class="categories_name" style="font-size: 18px">${b.brandName}</span> <img src="${b.imgPath}" width="30px" alt="Hinhf ành"></a></li>

                                        </ul>
                                    </c:forEach>
                                </div>
<!--                                <div class="widget">
                                    <h5 class="widget_title">Filter</h5>
                                    <div class="filter_price">
                                        <div id="price_filter" data-min="0" data-max="500" data-min-value="50" data-max-value="300" data-price-sign="$"></div>
                                        <div class="price_range">
                                            <span>Price: <span id="flt_price"></span></span>
                                            <input type="hidden" id="price_first">
                                            <input type="hidden" id="price_second">
                                        </div>
                                    </div>
                                </div>-->
                                <div class="widget">
                                    <h5 class="widget_title">ShowRooms nổi bật</h5>

                                    <ul class="list_brand">
                                        <c:forEach begin="0" end="3"  items="${ShowRoomDAO.getAllShowRoom()}" var="s">

                                            <li>
                                                <div class="custome-checkbox">
                                                    <!--                                    <input class="form-check-input" type="checkbox" name="checkbox" id="Accessories" value="">-->
                                                    <a href="#" style="font-weight: 500">${s.nameRoom} </a>
                                                    <img src="${s.image}" alt="ha">
                                                    <p>${s.addressfull}</p>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>

                                </div>
                               
                                <div class="widget">
                                    <div class="shop_banner">
                                        <div class="banner_img overlay_bg_20">
                                            <img src="assets/images/sidebar_banner_img.jpg" alt="sidebar_banner_img">
                                        </div> 
                                        <div class="shop_bn_content2 text_white">
                                            <h5 class="text-uppercase shop_subtitle">New Collection</h5>
                                            <h3 class="text-uppercase shop_title">Sale 30% Off</h3>
                                            <a href="#" class="btn btn-white rounded-0 btn-sm text-uppercase">Shop Now</a>
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
</div>
<!-- END SECTION SHOP -->

<!-- START SECTION SUBSCRIBE NEWSLETTER -->
<div class="section bg_default small_pt small_pb">
	<div class="container">	
    	<div class="row align-items-center">	
            <div class="col-md-6">
                <div class="heading_s1 mb-md-0 heading_light">
                    <h3>Subscribe Our Newsletter</h3>
                </div>
            </div>
            <div class="col-md-6">
                <div class="newsletter_form">
                    <form>
                        <input type="text" required="" class="form-control rounded-0" placeholder="Enter Email Address">
                        <button type="submit" class="btn btn-dark rounded-0" name="submit" value="Submit">Subscribe</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- START SECTION SUBSCRIBE NEWSLETTER -->

</div>
<!-- END MAIN CONTENT -->

<!-- START FOOTER -->
<footer class="footer_dark">
	<div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-12">
                	<div class="widget">
                        <div class="footer_logo">
                            <a href="#"><img src="assets/images/logo_light.png" alt="logo"/></a>
                        </div>
                        <p>If you are going to use of Lorem Ipsum need to be sure there isn't hidden of text</p>
                    </div>
                    <div class="widget">
                        <ul class="social_icons social_white">
                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                            <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                            <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li>
                            <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
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
                        <h6 class="widget_title">Category</h6>
                        <ul class="widget_links">
                            <li><a href="#">Men</a></li>
                            <li><a href="#">Woman</a></li>
                            <li><a href="#">Kids</a></li>
                            <li><a href="#">Best Saller</a></li>
                            <li><a href="#">New Arrivals</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6">
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
                <div class="col-lg-3 col-md-4 col-sm-6">
                	<div class="widget">
                        <h6 class="widget_title">Contact Info</h6>
                        <ul class="contact_info contact_info_light">
                            <li>
                                <i class="ti-location-pin"></i>
                                <p>123 Street, Old Trafford, New South London , UK</p>
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
                    <ul class="footer_payment text-center text-lg-end">
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