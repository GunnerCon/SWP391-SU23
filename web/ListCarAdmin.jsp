<%@page import="dao.AccountDAO"%>
<%@page import="dao.CarDAO"%>
<%@page import="dao.ShowRoomDAO"%>
<%@page import="dao.BrandDAO"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Sidebar</title>

        <link rel="stylesheet" href="assets/css/car.css" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

        <script src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
                integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
    </head>

    <body style style="background-color: #fcfcfc">
        <div class="menu-btn">
            <i class="fas fa-bars"></i>
        </div>
        <div class="side-bar active">
            <header>
                <div class="close-btn">
                    <i class="fas fa-times"></i>
                </div>
                <img src="img/logo.jpg"
                     alt="" />
                <h1 style="color: aliceblue">Car World</h1>
            </header>
            <div class="menu">
                <div class="item">
                    <a href="adminPage.jsp"><i class="fas fa-desktop"></i>Thống kê</a>
                </div>

                <div class="item">
                    <a href="MainController?action=listAll&list=listCar"><i class="fas fa-car"></i>Xe</a>
                </div>

                <div class="item">
                    <a class="sub-btn"><i class="fas fa-user"> </i>Tài khoản<i class="fas fa-angle-right dropdown">
                        </i></a>
                    <div class="sub-menu">
                        <a href="MainController?action=listAll&list=listSeller" class="sub-item">Nhân viên</a>
                        <a href="MainController?action=listAll&list=listCustomer" class="sub-item">Khách hàng</a>
                    </div>
                </div>

                <div class="item">
                    <a class="sub-btn"><i class="fas fa-business-time"> </i>Đặt xe<i class="fas fa-angle-right dropdown">
                        </i></a>
                    <div class="sub-menu">
                        <a href="MainController?action=listAll&list=listOrder" class="sub-item">Đang xử lí</a>
                        <a href="MainController?action=listAll&list=listOrderDone" class="sub-item">Hoàn thành</a>
                        <a href="MainController?action=listAll&list=listOrderFail" class="sub-item">Không hoàn thành</a>
                    </div>
                </div>
                <div class="item">
                    <a class="sub-btn"><i class="fas fa-business-time"> </i>Đăng kí gửi xe<i class="fas fa-angle-right dropdown">
                        </i></a>
                    <div class="sub-menu">
                        <a href="MainController?action=listAll&list=listOffer" class="sub-item">Đang xác nhận</a>
                        <a href="MainController?action=listAll&list=listOfferApproach" class="sub-item">Chấp nhận</a>
                        <a href="MainController?action=listAll&list=listOfferReject" class="sub-item">Từ chối</a>
                    </div>
                </div>
                <div class="item">
                    <a href="#"><i class="fas fa-info-circle"></i>About</a>
                </div>
            </div>
        </div>

        <div class="table-total">
            <!-- <div class="container"> -->
            <div class="profile dropdown">
               <img style="width: 75px; height: 75px" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/VietnameseRegions.svg/640px-VietnameseRegions.svg.png" class="pro-img" id="menu" data-toggle="dropdown" />
                <ul class="dropdown-menu" role="menu" aria-labelledby="menu">
                    <li role="presentation">
                        <a role="button" tabindex="-1" href="#">Logout</a>
                    </li>
                    <li role="presentation">
                        <a role="menuitem" tabindex="-1" href="#">Change Something</a>
                    </li>
                </ul>
                <c:set var="name" value="${name}"></c:set>
                <p>${name.fullname}<span>Admin</span></p>
            </div>
            <!-- </div> -->

            <div class="clearfix"></div>
            <div class="clearfix"></div>



            <div class="clearfix"></div>
            <br />

            <div class="col-div-12">
                <div class="col-div-8">
                    <div class="title-container">
                        <p>Danh sách xe ô tô</p>
                        <br />
                        <form action="MainController" method="post">
                            <div class="input-group">
                                <input type="search"  name="txtsearch" placeholder="Search Data..." />
                                <button type="submit" value="search" name="action">
                                    <i class="fa fa-search"></i>
                                </button>
                                <c:set var="info" value="${info}"></c:set>
                                <c:if test="${info!=null}"> <h6>${info}</h6></c:if>
                                    <!-- <img src="admin_page/images/.png " alt="" /> -->
                                </div>
                            </form>

                            <div class="buttonNewItem">
                                <button class="button" role="button" data-toggle="modal" data-target="#myButton">
                                    <i class="fa fa-plus"></i>
                                    Thêm xe mới
                                </button>
                            </div>

                            <!-- Modal -->
                            <div class="modal fade" id="myButton" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="form">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel">Tạo thông tin xe mới</h4>
                                        </div>

                                        <form action="MainController" method="post">
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label>Tên xe</label>
                                                    <input type="text" class="form-control" name="carname"
                                                           placeholder="Tên xe...">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hãng xe</label>
                                                    <select class="form-control" name="brand" >
                                                    <c:forEach var="hang" items="${BrandDAO.getBrands()}">
                                                        <option value="${hang.brandID}">${hang.brandName}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Showroom</label>
                                                <select class="form-control" name="showroom" required="">
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
                                            <div class="form-group">
                                                <label >Giá</label>
                                                <input type="text" class="form-control" name="price" placeholder="Giá...">
                                            </div>
                                            <div class="form-group">
                                                <label>Kiểu giáng</label>
                                                <select class="form-control" name="style">
                                                    <option value="Sedan">Sedan</option>
                                                    <option value="Hatchback">Hatchback</option>
                                                    <option value="SUV">SUV</option>
                                                    <option value="Convertible">Convertible</option>
                                                    <option value="Crossover">Crossover</option>
                                                    <option value="Coupe">Coupe</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Chỗ ngồi</label>
                                                <input type="text" class="form-control"
                                                       placeholder="chỗ ngồi..." name="seat">
                                            </div>
                                            <div class="form-group">
                                                <label>Màu sắc</label>
                                                <input type="text" class="form-control"
                                                       placeholder="Màu..." name="color">
                                            </div>

                                        </div>
                                        <!-- <div class="modal-footer border-top-0 d-flex justify-content-center">
                                            <button type="submit" class="btn btn-success">Submit</button>
                                        </div> -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                                Close
                                            </button>
                                            <button type="submit" class="btn btn-primary" name="action" value="newCar">Save changes</button>
                                        </div>

                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>

                                    <table id="myTable" >
                        <thead>
                            <tr>
                                <th>Tên xe </th>
                                <th>Giá ban đầu</th>
                                <th>Giá bán</th>
                                <th>Showroom </th>                                                            
                                <th>Chủ xe</th>

                             
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach var="car" items="${requestScope.carId}">
                                <tr>
                                    <td>${car.carName}</td>
                                    <td>${car.priceBef} Triệu</td>
                                    <td>${car.price} Triệu</td>

                                    <td>${car.nameRoom}</td>
                                    <td>${car.owner} </td>
                                  
                                    
                                </tr>
                            </c:forEach>

                        </tbody>

                    </table>
                    <div class="pagination">
                        <ul id="paginationList"></ul>
                    </div>
                </div>

                <!-- total sell -->

            </div>
        </div>

        <div class="clearfix"></div>
        <br />

        <div class="theme-switch-wrapper">
            <label class="theme-switch" for="checkbox">
                <input type="checkbox" id="checkbox" name="changeTheme" />
                <div class="slider round"></div>
            </label>
        </div>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var table = document.getElementById("myTable");
                var tbody = table.getElementsByTagName("tbody")[0];
                var rows = tbody.getElementsByTagName("tr");
                var rowsPerPage = 8; // Số hàng hiển thị trên mỗi trang

                var pageCount = Math.ceil(rows.length / rowsPerPage);
                var currentPage = 1;

                function showPage(page) {
                    var start = (page - 1) * rowsPerPage;
                    var end = start + rowsPerPage;

                    for (var i = 0; i < rows.length; i++) {
                        if (i >= start && i < end) {
                            rows[i].style.display = "table-row";
                        } else {
                            rows[i].style.display = "none";
                        }
                    }
                }

                function createPaginationList() {
                    var paginationList = document.getElementById("paginationList");

                    // Tạo nút previous
                    var previousListItem = document.createElement("li");
                    var previousLink = document.createElement("a");
                    previousLink.href = "#";
                    previousLink.innerHTML = "&laquo;";

                    previousListItem.appendChild(previousLink);
                    paginationList.appendChild(previousListItem);

                    for (var i = 1; i <= pageCount; i++) {
                        var listItem = document.createElement("li");
                        var link = document.createElement("a");
                        link.href = "#";
                        link.textContent = i;

                        listItem.appendChild(link);
                        paginationList.appendChild(listItem);
                    }

                    // Tạo nút next
                    var nextListItem = document.createElement("li");
                    var nextLink = document.createElement("a");
                    nextLink.href = "#";
                    nextLink.innerHTML = "&raquo;";

                    nextListItem.appendChild(nextLink);
                    paginationList.appendChild(nextListItem);

                    // Xử lý sự kiện click cho các nút phân trang
                    var paginationLinks = paginationList.getElementsByTagName("a");

                    for (var j = 0; j < paginationLinks.length; j++) {
                        paginationLinks[j].addEventListener("click", function (event) {
                            event.preventDefault();

                            var target = event.target;
                            var targetPage = parseInt(target.textContent);

                            if (targetPage) {
                                currentPage = targetPage;
                                showPage(currentPage);

                                for (var k = 0; k < paginationLinks.length; k++) {
                                    paginationLinks[k].parentNode.classList.remove("active");
                                }

                                target.parentNode.classList.add("active");
                            } else if (target === previousLink) {
                                if (currentPage > 1) {
                                    currentPage--;
                                    showPage(currentPage);

                                    for (var k = 0; k < paginationLinks.length; k++) {
                                        paginationLinks[k].parentNode.classList.remove("active");
                                    }

                                    paginationLinks[currentPage].parentNode.classList.add("active");
                                }
                            } else if (target === nextLink) {
                                if (currentPage < pageCount) {
                                    currentPage++;
                                    showPage(currentPage);

                                    for (var k = 0; k < paginationLinks.length; k++) {
                                        paginationLinks[k].parentNode.classList.remove("active");
                                    }

                                    paginationLinks[currentPage].parentNode.classList.add("active");
                                }
                            }
                        });
                    }
                }

                showPage(currentPage); // Hiển thị trang đầu tiên mặc định
                createPaginationList(); // Tạo danh sách phân trang
            });
        </script>

        <script type="text/javascript">
            $(document).ready(function () {
                //jquery for toggle sub menus
                $(".sub-btn").click(function () {
                    $(this).next(".sub-menu").slideToggle();
                    $(this).find(".dropdown").toggleClass("rotate");
                });

                //jquery for expand and collapse the sidebar
                $(".menu-btn").click(function () {
                    $(".side-bar").addClass("active");
                    $(".menu-btn").css("visibility", "hidden");
                    $(".side-bar").css("width", "260px");
                    $(".col-div-12").css("margin-left", "300px");
                    $(".buttonNewItem").css("margin-right", "0px");
                    $(".stats").css("margin-left", "300px");

                    // $(".container").css("margin-right", "300px");
                });

                $(".close-btn").click(function () {
                    $(".side-bar").removeClass("active");
                    $(".menu-btn").css("visibility", "visible");
                    $(".side-bar").css("width", "0px");
                    $(".col-div-12").css("margin-left", "200px");
                    $(".col-div-12").css("width", "100%");
                    $(".input-group").css("margin-right", "55px");
                    $(".stats").css("margin-left", "200px");

                    // $(".container").css("margin-right", "280px");
                    // $(".table-total").css("align-items", "center");
                    // $(".table-total").css("justify-content", "center");
                });
            });
        </script>
        <!-- <script>
            document.addEventListener("DOMContentLoaded", function () {
                const menuBtn = document.querySelector(".menu-btn");
                const sideBar = document.querySelector(".side-bar");

                menuBtn.addEventListener("click", function () {
                    sideBar.classList.toggle("active");
                });
            });
        </script> -->
    </body>

</html>