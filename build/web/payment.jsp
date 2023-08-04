<%-- 
    Document   : payment
    Created on : Aug 3, 2023, 10:42:33 PM
    Author     : Đức Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dto.Car" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>CodePen - Daily UI #002 Credit Card Checkout</title>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900' rel='stylesheet' type='text/css'>
    <script src="https://use.typekit.net/hoy3lrg.js"></script>
    <script>try { Typekit.load({ async: true }); } catch (e) { }</script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
    <link rel="stylesheet" href="./payment.css">

</head>

<body>
    <!-- partial:index.partial.html -->
   
                     
    <div id="wrapper">
        <div id="container">
            <div id="left-col">
                <div id="left-col-cont">
                     <c:set value="${requestScope.carc}" var="c"/>
                            
                    <h2>Summary</h2>

                    <!--  item car -->
                    <div class="item">
                       
                       
                        
                        <div class="img-col">
                            <img src="${c.img}" alt="hinh_anh">
                        </div>
                        <div class="meta-col">
                            <h3>${c.carName}</h3>
                            <p >${c.description}</p>
                            
                        </div>
                    </div>

                    <!-- total money -->
                    <p id="total">Giá</p>
                    <h4 id="total-price"><span></span> ${c.price}Triệu</h4>
                </div>
            </div>
            <div id="right-col">
                <h2>Thanh Toán</h2>
                <div id="logotype">
                    <img id="mastercard" src="http://emilcarlsson.se/assets/MasterCard_Logo.png" alt="" />
                </div>

                <form action="MainController" method="post">
                    <label for="">Số thẻ</label>
                    <div id="cardnumber">
                        <input type="number" id="numberInput" name="cardNumber" placeholder="0123" required />
                        <!-- <span class="divider">-</span> -->
                    </div>
                    
                    <div id="bank">
                    <label for="">Ngân hàng</label>
                    <select name="bank" id="bank" onchange="" size="1">
                            <option value="0">Bank</option>
                            <option value="1">A Bank</option>
                            <option value="2">B Bank</option>
        
                        </select>
                    </div>

                    <label for="">Tên tài khoản</label>
                    <input id="cardholder" name="cardholder" type="text" placeholder="Your Name" />
                    
                    <div class="left">
                        <label for="">Hạn sử dụng</label>
                        <select name="month" id="month" onchange="" size="1">
                            <option value="0">Tháng</option>
                            <option value="1">Tháng 1</option>
                            <option value="2">Tháng 2</option>
                            <option value="3">Tháng 3</option>
                            <option value="4">Tháng 4</option>
                            <option value="5">Tháng 5</option>
                            <option value="6">Tháng 6</option>
                            <option value="7">Tháng 7</option>
                            <option value="8">Tháng 8</option>
                            <option value="9">Tháng 9</option>
                            <option value="10">Tháng 10</option>
                            <option value="11">Tháng 11</option>
                            <option value="12">Tháng 12</option>
                        </select>
                        <select name="year" id="year" onchange="" size="1">
                            <option value="0">Year</option>
                            <option value="1">2023</option>
                            <option value="2">2024</option>
                            <option value="3">2025</option>
                            <option value="4">2026</option>
                            <option value="5">2027</option>
                            <option value="6">2028</option>
                            <option value="7">2029</option>
                            <option value="8">2030</option>
                            <option value="9">2031</option>
                            <option value="10">2032</option>
                        </select>
                    </div>

                    <div class="right">
                        <label id="cvc-label"  for="">CVC <i class="fa fa-question-circle-o"
                                aria-hidden="true"></i></label>
                        <input id="cvc" name="cvc" type="number" placeholder="123" />
                    </div>
                    <!--<div><input type="hidden" name="idCar"   > </div>-->
                    <button id="purchase" type="submit" value="pay" name="action">Thanh Toán</button>
                    <!-- <button id="paypal"><i class="fa fa-paypal" aria-hidden="true"></i> Pay with PayPal</button> -->
                    <p id="support">Gặp vấn đề khi thanh toán? <a href="#">Liên hệ với chúng tôi</a>.</p>
                </form>
            </div>
        </div>
    </div>

    <script>
        const input = document.getElementById('numberInput');
        input.addEventListener('input', () => {
            const value = input.value;
            if (value.length > 16) {
                input.value = value.slice(0, 16);
            }
        });

        const input1 = document.getElementById('cvc');
        input1.addEventListener('input', () => {
            const value = input1.value;
            if (value.length > 3) {
                input1.value = value.slice(0, 3);
            }
        });
    </script>



</body>

</html>
