<%-- 
    Document   : faq
    Created on : 05/07/2023, 4:05:40 PM
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

                                    <li><a href="Sigup.jsp"><i class="linearicons-user"></i><span>Đăng Kí</span></a></li>
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
                            <img class="logo_light" src="img/logo.jpg" alt="logo" />
                            <img class="logo_dark" src="img/logo.jpg" alt="logo" />
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
                                    <a class="dropdown-toggle nav-link" href="Signup.jsp" >Kí gửi Xe</a>                               
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
            		<h1>Frequently asked question</h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <li class="breadcrumb-item"><a href="#">Trang Chủ</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active">Câu Hỏi Thường Gặp</li>
                </ol>
            </div>
        </div>
    </div><!-- END CONTAINER-->
</div>
<!-- END SECTION BREADCRUMB -->

<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- STAT SECTION FAQ --> 
<div class="section">
	<div class="container">
    	<div class="row justify-content-center">
        	<div class="col-md-6">
            	<div class="heading_s1 mb-3 mb-md-5">
                	<h3>General questions</h3>
                </div>
            	<div id="accordion" class="accordion accordion_style1">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h6 class="mb-0"> <a class="collapsed" data-bs-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Do you have any built-in caching?</a> </h6>
                          </div>
                          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-bs-parent="#accordion">
                            <div class="card-body">
                            	<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
						<div class="card-header" id="headingTwo">
                        	<h6 class="mb-0"> <a class="collapsed" data-bs-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">How do I upload files from my phone or tablet?</a> </h6>
						</div>
						<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-bs-parent="#accordion">
                        	<div class="card-body"> 
                        		<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                        		<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
						<div class="card-header" id="headingThree">
                        	<h6 class="mb-0"> <a class="collapsed" data-bs-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">How can I start my design?</a> </h6>
						</div>
						<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-bs-parent="#accordion">
							<div class="card-body"> 
                            	<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. </p><p>This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
								<ul class="list_style_3">
                                    <li>The standard chunk of Lorem Ipsum below for those interested</li>
                                    <li>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugi</li>
                                    <li>Et harum quidem rerum facilis est et expedita distinctio</li>
                                    <li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores</li>
                                    <li>when our power of choice is untrammelled and when nothing prevents</li>
                            	</ul>
                        	</div>
                      	</div>
                    </div>
                    <div class="card">
						<div class="card-header" id="headingFour">
                        	<h6 class="mb-0"> <a class="collapsed" data-bs-toggle="collapse" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">What are popular free webpage builders?</a> </h6>
                      	</div>
                      	<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-bs-parent="#accordion">
							<div class="card-body"> 
                            	<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                        		<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
                        		<ul class="list_style1">
                                    <li>The standard chunk of Lorem Ipsum below for those interested</li>
                                    <li>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugi</li>
                                    <li>Et harum quidem rerum facilis est et expedita distinctio</li>
                                    <li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores</li>
                                    <li>when our power of choice is untrammelled and when nothing prevents</li>
                            	</ul>
                        	</div>
                      	</div>
                    </div>
                    <div class="card">
						<div class="card-header" id="headingFive">
                        	<h6 class="mb-0"> <a class="collapsed" data-bs-toggle="collapse" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">How do you make your own website for free?</a> </h6>
                      	</div>
                      	<div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-bs-parent="#accordion">
                        	<div class="card-body"> 
                            	<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                        		<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>
                        		<p> Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
                        	</div>
                      	</div>
                    </div>
              	</div>
            </div>
            <div class="col-md-6 mt-4 mt-md-0">
            	<div class="heading_s1 mb-3 mb-md-5">
                	<h3>Other questions</h3>
                </div>
            	<div id="accordion2" class="accordion accordion_style1">
                    <div class="card">
                        <div class="card-header" id="headingSix">
                            <h6 class="mb-0"> <a class="collapsed" data-bs-toggle="collapse" href="#collapseSix" aria-expanded="true" aria-controls="collapseSix">What is the weirdest website on the internet?</a> </h6>
                          </div>
                          <div id="collapseSix" class="collapse show" aria-labelledby="headingSix" data-bs-parent="#accordion2">
                            <div class="card-body">
                            	<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
						<div class="card-header" id="headingSeven">
                        	<h6 class="mb-0"> <a class="collapsed" data-bs-toggle="collapse" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">Can I add/upgrade my plan at any time?</a> </h6>
						</div>
						<div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-bs-parent="#accordion2">
                        	<div class="card-body"> 
                        		<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                        		<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
						<div class="card-header" id="headingEight">
                        	<h6 class="mb-0"> <a class="collapsed" data-bs-toggle="collapse" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">What access comes with my hosting plan?</a> </h6>
						</div>
						<div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-bs-parent="#accordion2">
							<div class="card-body"> 
                            	<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. </p><p>This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
								<ul class="list_style_3">
                                    <li>The standard chunk of Lorem Ipsum below for those interested</li>
                                    <li>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugi</li>
                                    <li>Et harum quidem rerum facilis est et expedita distinctio</li>
                                    <li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores</li>
                                    <li>when our power of choice is untrammelled and when nothing prevents</li>
                            	</ul>
                        	</div>
                      	</div>
                    </div>
                    <div class="card">
						<div class="card-header" id="headingNine">
                        	<h6 class="mb-0"> <a class="collapsed" data-bs-toggle="collapse" href="#collapseNine" aria-expanded="false" aria-controls="collapseNine">What are some lesser known but useful websites?</a> </h6>
                      	</div>
                      	<div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-bs-parent="#accordion2">
							<div class="card-body"> 
                            	<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                        		<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
                        		<ul class="list_style1">
                                    <li>The standard chunk of Lorem Ipsum below for those interested</li>
                                    <li>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugi</li>
                                    <li>Et harum quidem rerum facilis est et expedita distinctio</li>
                                    <li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores</li>
                                    <li>when our power of choice is untrammelled and when nothing prevents</li>
                            	</ul>
                        	</div>
                      	</div>
                    </div>
                    <div class="card">
						<div class="card-header" id="headingTen">
                        	<h6 class="mb-0"> <a class="collapsed" data-bs-toggle="collapse" href="#collapseTen" aria-expanded="false" aria-controls="collapseTen">How can web developers benefit from Adage?</a> </h6>
                      	</div>
                      	<div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-bs-parent="#accordion2">
                        	<div class="card-body"> 
                            	<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                        		<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>
                        		<p> Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
                        	</div>
                      	</div>
                    </div>
              	</div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION FAQ --> 

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