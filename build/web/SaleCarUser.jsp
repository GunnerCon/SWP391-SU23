<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.ShowRoomDAO" %>
<%@page import="dto.Showroom" %>
<%@page import="dto.Car" %>
<%@page import="dto.brand" %>
<%@page import="dao.CarDAO" %>
<%@page import="dto.Address" %>
<%@page import="dto.Account" %>
<%@page import="dao.BrandDAO" %>
<%@page import="dao.OrderDAO" %>
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

        <!-- START SECTION BANNER -->

        <!-- END SECTION BANNER -->

        <!-- END MAIN CONTENT -->
        <div class="section small_pb">
           
                <c:choose>
                    <c:when test="${requestScope.done!=null}">
                        <h4 style="text-align: center">Quý khách đã gửi yêu cầu bán xe thành công</h4>
                        <div class="m-t-20 text-center">
                            <button style="border-radius: 50px; background: red; margin-top: 20px" class="btn btn-primary submit-btn""><a href="userPage.jsp">Trở về</a></button>
                                                        </div>
                    </c:when>
                    <c:otherwise>
                         <div class="container" style="border: 2px solid red">
                
                <div class="main " >
                     <form action="MainController" method="post">
                    <div class="head_content"">
                        
                    <h4>Đăng kí, kí gửi xe   </h4>
                    <div style="margin-left: 30px;
    margin-top: 10px;
    width :900px;
    background: #FFFFE5;
    border: 1px solid #FFB64B;
    color: #0331C4;
    padding: 5px 20px 5px 20px;
    line-height: 18px;
}


">
                      <a id="tip_post" href="javascript:void(0);" onclick="$('#tip_expand').toggle('fast')" style="font-weight:bold;margin-left:-10px;">[+] Chú ý khi kí gửi xe trên CARWORLD?</a>

                      <div id="tip_expand" style="display:none;color:blue;">
                        - Đây không phải đơn đăng tin bán xe trực tiếp.<br> 
			- Điền thông tin liên hệ để chúng tôi có thể hẹn lịch xem xe của bạn.<br>
			- Trong phần mô tả để thông tin liên hệ (số ĐT hay email). <span style="color:blue;">(Nếu không thông tin liên hệ sẽ được lấy trong phần thông tin cá nhân tương ứng với tài khoản của bạn).</span>
			- <br>
			<div style="text-align:right;color:green">Chúc bạn mau bán được xe !<br> Thân ái, Carnews !</div>
			</div>
                      
                    </div>
                    
                <div class="body_content" style=" width: 2000px">
                    <h4 style="  color: red; padding-left: 350px">Nhập thông tin </h4><br>
                   
                    <div class="left" style="width: 700px; 
                         float: left; ">
                        <div style="color: black; font-style: 18px; font-weight: 500">
                            <div class="form-group col-md-6 mb-3">
                                <input style="width: 1000px"  value="${name.fullname}" id="first-name" class="form-control" name="name" type="text" required="">
                                        </div>
                                        <div class="form-group col-md-6 mb-3">
                                            <input style="width: 1000px"value="${name.email}" id="email" class="form-control" name="email" type="email" required="" >
                                        </div>
                                        <div class="form-group col-md-6 mb-3">
                                            <input  style="width: 1000px" value="${name.phone}" id="phone" class="form-control"  name="phone"required="">
                                        </div>

                            <div class="form-group col-md-6 mb-3">
                                            <select style="width: 1000px; height: 50px" name="addressGD" required="">
                                                <option value="">--Chọn địa điểm giao dịch--</option>

                                                <c:forEach items="${OrderDAO.getAll()}" var="add">
                                                    
                                                    
                                                <option value="${add.id}">${add.addressGD}</option>
                                               
                                                 </c:forEach>
                                            </select>
                                        </div>
                            
                                        <div class="form-group col-md-6 mb-3">
                                            <input style="width: 1000px" placeholder="Địa chỉ *" id="address" class="form-control" name="address">
                                        </div>
                                        
                                       
                            
                            
                                        <div class="form-group col-md-6 mb-3">
                                            <select style="width: 1000px; height: 50px" name="shooroomid">
                                                <option value="">--ShowRooms--</option>
                                                <optgroup label="HCM">
                                                    <c:forEach var="sr" items="${ShowRoomDAO.getAllShowRoomTpHCM()}">
                                                        <option value="${sr.room_id}">${sr.nameRoom}</option>
                                                    </c:forEach>
                                                </optgroup>
                                                <optgroup label="Hà Nội">
                                                    <c:forEach var="sr" items="${ShowRoomDAO.getAllShowRoomHN()}">
                                                        <option value="${sr.room_id}">${sr.nameRoom}</option>
                                                    </c:forEach>
                                                </optgroup>
                                                <optgroup label="Đà Nẵng">
                                                    <c:forEach var="sr" items="${ShowRoomDAO.getAllShowRoomDN()}">
                                                        <option value="${sr.room_id}">${sr.nameRoom}</option>
                                                    </c:forEach>
                                                </optgroup>
                                            </select>         
                                        </div>
                                        <div class="form-group col-md-6 mb-3">
                                            <input style="width: 1000px" required="" placeholder="Tên xe " class="form-control" name="nameCar">
                                        </div>
                              <div class="form-group col-md-6 mb-3">
                                         
                                  <select style="width: 1000px; height: 50px" name="brand">
                                            <option value="">--Chọn hãng--</option>
                                          <c:forEach items="${BrandDAO.getBrands()}" var="b">
                                        
                                      <option value="${b.brandID}">${b.brandName}</option>
                                      </c:forEach>
                                  </select>
                                        </div>
                            
                            
                                        <div class="form-group col-md-6 mb-3">
                                            <input style="width: 1000px" required="" min="300" max="1000000000" placeholder="Nhập giá bán xe" type="number" class="form-control" name="price">
                                        </div>
                                        <div class="form-group col-md-6 mb-3">
                                            <input style="width: 1000px" required="" type="file" name="file" maxlength="255" accept=".jpg,.jpeg,.gif,.png,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.pdf,.mp4,.avi,.mov,.mpeg" autocomplete="off" placeholder="Nhập hình ảnh xe*">
                                        </div>
                            
                            
                                                                    <div class="form-group col-md-12 mb-3">
                                            <textarea style="width: 1000px"  placeholder="Message *" id="description" class="form-control" name="message" rows="4"></textarea>
                                        </div>
                            
                                            <div><input type="hidden" name="accId" value="${name.accID}"/></div>
                          
                    
                </div>
           

            </div>  </div>
                <div style="clear:both;"></div><br>
                   <div class="m-t-20 text-center">
                       <button type="submit" style="border-radius: 50px; background: red; margin-top: 20px" class="btn btn-primary submit-btn" name="action" value="saveOfferUser"> Đăng kí</button>
                                                        </div>
            </div></form>
                    </c:otherwise>
                </c:choose>
           
                </form>
                </div></div></div>
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
            <!-- START SECTION SHIPPING INFO -->
          
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