<%-- 
    Document   : order-completed
    Created on : 06/07/2023, 10:36:28 PM
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
<%@page import="dao.AccountDAO" %>
<%@page import="dto.Account" %>
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
        <!-- END LOADER -->

        <!-- Home Popup Section -->
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
                                    <li><a href="MainController?action=infoUser&accId=${name.accID}"><i></i><span>Thông tin cá nhân</span></a></li>
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
                            <img class="logo_light" src="img/logo.jpg" alt="logo" />
                            <img class="logo_dark"style="width: 160px" src="img/logo.jpg" alt="logo" />
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-expanded="false"> 
                            <span class="ion-android-menu"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="dropdown">
                                    <a  class="nav-link dropdown-toggle " href="userPage.jsp">Trang chủ</a>

                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu">
                                        <ul> 
                                            <li><a class="dropdown-item nav-link nav_item" href="AboutUser.jsp">Về Chúng Tôi</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="ContactUser.jsp">Thông Tin Liên Hệ</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="faqUser.jsp">Câu hỏi thường gặp</a></li>                                      
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
                                                            <li class="dropdown-header" style="font-size: 15px"><a href="#">Hà Nội</a> </li>
                                                                <c:forEach items="${ShowRoomDAO.getAllShowRoomHN()}" var="s">

                                                                <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCarUser&roomIdz=${s.room_id}">${s.nameRoom}</a></li>

                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>
                                                            <li class="dropdown-header" style="font-size: 15px"><a href="#">Đà Nẵng</a> </li>
                                                                <c:forEach items="${ShowRoomDAO.getAllShowRoomDN()}" var="s">
                                                                <li><a class="dropdown-item nav-link nav_item" href="MainController?action=viewCarUser&roomIdz=${s.room_id}">${s.nameRoom}</a></li>

                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-menu-col col-lg-4">
                                                        <ul>

                                                            <li class="dropdown-header" style="font-size: 15px"><a href="#">Hồ Chí Minh</a> </li>

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
                                <li><a class="nav-link nav_item" href="ContactUser.jsp">Thông tin liên hệ</a></li> 

                            </ul>
                        </div>
                        <ul class="navbar-nav attr-nav align-items-center">

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
                            <h1>Đánh giá xe thành công</h1>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb justify-content-md-end">
                            <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                            <!--<li class="breadcrumb-item"><a href="#">Pages</a></li>-->
                            <li class="breadcrumb-item active">Thành Công</li>
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
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <div class="text-center order_complete">
                                <i class="fas fa-check-circle"></i>
                                <div class="heading_s1">
                                    <h3>Quý khách đã đánh thành công!</h3>
                                </div>
                                <p>Cảm ơn quý khách dành thời gian đánh giá!!! </p>
                                <!--                         <button type="submit" class="btn btn-fill-out btn-block" name="action" value="userPage">Tiếp tục xem xe</button>-->
                                <!--<a href="Feedback.jsp" class="btn btn-fill-out">Feedback</a>-->
                                <a href="index.jsp" class="btn btn-fill-out">Tiếp tục xem xe</a>
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