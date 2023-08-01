<%-- 
    Document   : ShowroomHN
    Created on : 28/06/2023, 3:07:14 AM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- END LOADER -->

<!-- Home Popup Section -->

<!-- End Screen Load Popup Section --> 

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

                                    <li><a href="Sigup.jsp"><i class="linearicons-user"></i><span>Register</span></a></li>
                                    <li><a href="login.jsp"><i class="linearicons-user"></i><span>Login</span></a></li>
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
                            <img class="logo_dark"style="width: 274px" src="img/logo.jpg" alt="logo" />
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
                                            <c:forEach items="${BrandDAO.getBrands()}" var="b">




                                                <li class="mega-menu-col col-lg-4">
                                                    <ul> 
                                                        <!-- <li class="dropdown-header">Woman's</li> -->
                                                        <li><a class="dropdown-item nav-link nav_item" href="MainController?action=listCarbybrand&brandId=${b.brandID}"> ${b.brandName}</a></li>
     
                                                    </ul>
                                                </li>

<!--                                                <li class="mega-menu-col col-lg-4">
                                                    <ul>
                                                         <li class="dropdown-header">Men's</li> 
                                                        <li><a class="dropdown-item nav-link nav_item" href="">Ford</a></li>
                                                        <li><a class="dropdown-item nav-link nav_item" href="">Audi</a></li>
                                                        <li><a class="dropdown-item nav-link nav_item" href="">Nissa</a></li>
                                                        <li><a class="dropdown-item nav-link nav_item" href="">Kia</a></li>
                                                        <li><a class="dropdown-item nav-link nav_item" href="">Suzuki</a></li>
                                                    </ul>
                                                </li>-->
<!--                                                <li class="mega-menu-col col-lg-4">
                                                    <ul>
                                                         <li class="dropdown-header">Kid's</li> 
                                                        <li><a class="dropdown-item nav-link nav_item" href="">Chevrolet</a></li>
                                                        <li><a class="dropdown-item nav-link nav_item" href="">Isuzu</a></li>
                                                        <li><a class="dropdown-item nav-link nav_item" href="">Madza</a></li>
                                                        <li><a class="dropdown-item nav-link nav_item" href="">VinFast</a></li>
                                                        <li><a class="dropdown-item nav-link nav_item" href="">Volvo</a></li>
                                                    </ul>
                                                </li>-->
                                            </c:forEach>
                                        </ul>

                                    </div>
                                </li>

                                <li class="dropdown dropdown-mega-menu">
                                    <a class="dropdown-toggle nav-link" href="login.jsp" >Bán Xe</a>                           
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
                                <li><a class="nav-link nav_item" href="contact.html">Contact Us</a></li> 

                            </ul>
                        </div>
                        <ul class="navbar-nav attr-nav align-items-center">



                            <li class="dropdown cart_dropdown"><a class="nav-link cart_trigger" href="#" data-bs-toggle="dropdown"><i class="linearicons-cart"></i></a>
                                <div class="cart_box dropdown-menu dropdown-menu-right" id="showcart" >
                                    <ul class="cart_list">
                                        <table>

                                            <tbody id="mycart" style=".img{
                                                       width: 100px
                                                   }
                                                   ; font-size: 30px">

                                            </tbody>
                                        </table>    
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
<!--<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container"> STRART CONTAINER 
        <div class="row align-items-center">
        	<div class="col-md-6">
                <div class="page-title">
            		<h1>Shop List</h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active">Shop List</li>
                </ol>
            </div>
        </div>
    </div> END CONTAINER
</div>-->
<!-- END SECTION BREADCRUMB -->

<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- START SECTION SHOP -->
<div class="section">
	<div class="container">
    	<div class="row">
			<div class="col-12">
            	<div class="row align-items-center mb-4 pb-1">
                    <div class="col-12">
                        <div class="product_header">
<!--                            <div class="product_header_left">
                                <div class="custom_select">
                                    <select class="form-control form-control-sm">
                                        <option value="order">Default sorting</option>
                                        <option value="popularity">Sort by popularity</option>
                                        <option value="date">Sort by newness</option>
                                        <option value="price">Sort by price: low to high</option>
                                        <option value="price-desc">Sort by price: high to low</option>
                                    </select>
                                </div>
                            </div>-->
<!--                            <div class="product_header_right">
                            	<div class="products_view">
                                    <a href="javascript:Void(0);" class="shorting_icon grid"><i class="ti-view-grid"></i></a>
                                    <a href="javascript:Void(0);" class="shorting_icon list active"><i class="ti-layout-list-thumb"></i></a>
                                </div>
                                <div class="custom_select">
                                    <select class="form-control form-control-sm">
                                        <option value="">Showing</option>
                                        <option value="9">9</option>
                                        <option value="12">12</option>
                                        <option value="18">18</option>
                                    </select>
                                </div>
                            </div>-->
                        </div>
                    </div>
                </div> 
                            <a href="https://www.messenger.com/t/105295525547397" target="_blankt" rel="noopener noreferrer" style="position: fixed; right: 20px;">
                                                <i class="fab fa-facebook" style="font-size: 80px; color: blue;"></i>
                                            </a>
                <div class="row shop_container list">
                    <div class="col-lg-3 col-md-4 col-6">
                        <div class="product">
                            <c:forEach items="${requestScope.listShowrooms}" var="s">
                            
                       
                            <div class="product_img">
                                <a href="shop-product-detail.html">
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
                                <h6 class="product_title"><a href="shop-product-detail.html">${s.nameRoom}</a></h6>
                               
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
                    <p class="mb-md-0 text-center text-md-start">© 2020 Tất cả các quyền được bảo lưu bởi Bestwebcreator</p>
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