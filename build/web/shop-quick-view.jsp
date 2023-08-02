<%-- 
    Document   : shop-quick-view
    Created on : 06/07/2023, 11:19:20 AM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.ShowRoomDAO" %>
<%@page import="dto.Showroom" %>
<%@page import="java.util.ArrayList" %>
<div class="ajax_quick_view">
    <div class="row">
        <div class="col-lg-6 col-md-6 mb-4 mb-md-0">
            <c:forEach items="${requestScope.profileShowRoom}" var="s">
            <div class="product-image">
                <div class="product_img_box">
                    <img id="product_img" src='${s.image}' data-zoom-image="${s.image}" alt="product_img1" />
                </div>

            </div>
                </c:forEach>  
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="pr_detail">
                <c:forEach items="${requestScope.profileShowRoom}" var="s">  
                    <div class="product_description">
                        <h4 class="product_title"><a href="#"></a>${s.nameRoom} </h4>
                        <div class="product_price">
                            <span class="price">0${s.phone}</span>
                           

                        </div>  
                        <div class="rating_wrap">
                            <div class="rating">
                                <div class="product_rate" style="width:80%"></div>
                            </div>
                            <span class="rating_num">(21)</span>
                        </div>
                        <div class="pr_desc">
                             <p>${s.addressfull}</p>
                        </div>
                        <div class="product_sort_info">
                            <ul>
                                <li><i class="linearicons-shield-check"></i> Cam kết bảo hành xe 1 năm</li>
                                
                                <li><i class="linearicons-bag-dollar"></i>Thanh toán trục tiếp trên ShowRoom</li>
                            </ul>
                        </div>
<!--                        <div class="pr_switch_wrap">
                            <span class="switch_lable">Color</span>
                            <div class="product_color_switch">
                                <span class="active" data-color="#87554B"></span>
                                <span data-color="#333333"></span>
                                <span data-color="#DA323F"></span>
                            </div>
                        </div>-->
<!--                        <div class="pr_switch_wrap">
                            <span class="switch_lable">Size</span>
                            <div class="product_size_switch">
                                <span>xs</span>
                                <span>s</span>
                                <span>m</span>
                                <span>l</span>
                                <span>xl</span>
                            </div>
                        </div>-->
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
                            <a class="btn btn-fill-out btn-addtocart" href="#">Thông Tin Về ShowRooms</a>
<!--                            <a class="add_compare" href="#"><i class="icon-shuffle"></i></a>
                            <a class="add_wishlist" href="#"><i class="icon-heart"></i></a>-->
                        </div>
                    </div>
                    <hr />
                    <ul class="product-meta">
                        <li>Quản lý:  <a href="#">${s.sales}</a></li>
                        <li>Category: <a href="#">${s.address}</a></li>
<!--                        <li>Tags: <a href="#" rel="tag">Cloth</a>, <a href="#" rel="tag">printed</a> </li>-->
                    </ul>

                    <div class="product_share">
                        <span>Share:</span>
                        <ul class="social_icons">
                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                            <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                            <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li>
                            <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
                        </ul>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

<script src="assets/js/scripts.js"></script>
