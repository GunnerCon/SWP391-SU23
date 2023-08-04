<%-- 
    Document   : NewAdmin
    Created on : 17/07/2023, 10:30:29 AM
    Author     : hoang
--%>
<%@page import="dao.AccountDAO"%>
<%@page import="dao.CarOfferDAO"%>
<%@page import="dao.CarDAO"%>
<%@page import="dao.BrandDAO"%>
<%@page import="dao.OrderDAO"%>
<%@page import="dto.Order"%>
<%@page import="dto.CarInfo"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html
    lang="en"
    class="light-style layout-menu-fixed"
    dir="ltr"
    data-theme="theme-default"
    data-assets-path="../assets/"
    data-template="vertical-menu-template-free"
    >
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
            />

        <title>Car World</title>

        <meta name="description" content="" />

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet"
            />

        <!-- Icons. Uncomment required icon fonts -->
        <link rel="stylesheet" href="./assets/vendor/fonts/boxicons.css" />

        <!-- Core CSS -->
        <link rel="stylesheet" href="./assets/vendor/css/core.css" class="template-customizer-core-css" />
        <link rel="stylesheet" href="./assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
        <link rel="stylesheet" href="./assets/csss/demo.css" />

        <!-- Vendors CSS -->
        <link rel="stylesheet" href="./assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

        <!-- Page CSS -->

        <!-- Helpers -->
        <script src="./assets/vendor/js/helpers.js"></script>


        <script src="../assets/js/config.js"></script>
    </head>
    <style>.pagination {
            float: right;

        }

        .pagination li {
            display: inline-block;
            margin-right: 5px;
        }

        .pagination a {
            padding: 5px 12px;
            border-radius: 8px;
            text-decoration: none;
            background-color: white;
            color: #000000;
        }

        .pagination .active a {
            background-color: white;
            color: #fff;
        }</style>
    <body>
        <!-- Layout wrapper -->
        <div class="layout-wrapper layout-content-navbar">
            <div class="layout-container">
                <!-- Menu -->

                <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
                    <div class="app-brand demo">
                        <a href="index.html" class="app-brand-link">
                            <span class="app-brand-logo demo">
                                <svg
                                    width="25"
                                    viewBox="0 0 25 42"
                                    version="1.1"
                                    xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink"
                                    >
                                <defs>
                                <path
                                    d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                                    id="path-1"
                                    ></path>
                                <path
                                    d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                                    id="path-3"
                                    ></path>
                                <path
                                    d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                                    id="path-4"
                                    ></path>
                                <path
                                    d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                                    id="path-5"
                                    ></path>
                                </defs>
                                <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                                <g id="Icon" transform="translate(27.000000, 15.000000)">
                                <g id="Mask" transform="translate(0.000000, 8.000000)">
                                <mask id="mask-2" fill="white">
                                    <use xlink:href="#path-1"></use>
                                </mask>
                                <use fill="#696cff" xlink:href="#path-1"></use>
                                <g id="Path-3" mask="url(#mask-2)">
                                <use fill="#696cff" xlink:href="#path-3"></use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                                </g>
                                <g id="Path-4" mask="url(#mask-2)">
                                <use fill="#696cff" xlink:href="#path-4"></use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                                </g>
                                </g>
                                <g
                                    id="Triangle"
                                    transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) "
                                    >
                                <use fill="#696cff" xlink:href="#path-5"></use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                                </g>
                                </g>
                                </g>
                                </g>
                                </svg>
                            </span>
                            <span class="app-brand-text demo menu-text fw-bolder ms-2">Car World</span>
                        </a>

                        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
                            <i class="bx bx-chevron-left bx-sm align-middle"></i>
                        </a>
                    </div>

                    <div class="menu-inner-shadow"></div>

                    <ul class="menu-inner py-1">
                        <!-- Dashboard -->
                        <li class="menu-item  ">
                            <a href="adminPage.jsp" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                                <div data-i18n="Analytics">Thống kê</div>
                            </a>
                        </li>


                        <li class="menu-item active open  ">
                            <a href="MainController?action=listAll&list=listCar" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-collection"></i>
                                <div data-i18n="Basic">Xe</div>
                            </a>
                        </li>
                        <!-- User interface -->
                        <li class="menu-item  ">
                            <a href="javascript:void(0)" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-box"></i>
                                <div data-i18n="User interface">Tài Khoản</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="MainController?action=listAll&list=listSeller" class="menu-link">
                                        <div data-i18n="Accordion">Nhân viên</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAll&list=listCustomer" class="menu-link">
                                        <div data-i18n="Alerts">Khách hàng</div>
                                    </a>
                                </li>

                            </ul>
                        </li>

                        <!-- Extended components -->
                        <li class="menu-item  ">
                            <a href="javascript:void(0)" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-copy"></i>
                                <div data-i18n="Extended UI">Đặt mua xe</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item ">
                                    <a href="MainController?action=listAll&list=listOrder" class="menu-link">
                                        <div data-i18n="Perfect Scrollbar">Đang xử lí</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAll&list=listOrderDone" class="menu-link">
                                        <div data-i18n="Text Divider">Hoàn thành</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAll&list=listOrderFail" class="menu-link">
                                        <div data-i18n="Text Divider">Không hoàn thành</div>
                                    </a>
                                </li>
                            </ul>
                        </li>



                        <!-- Forms & Tables -->

                        <!-- Forms -->
                        <li class="menu-item  ">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-detail"></i>
                                <div data-i18n="Form Elements">Đăng kí gửi xe</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item " >
                                    <a href="MainController?action=listAll&list=listOffer" class="menu-link">
                                        <div data-i18n="Basic Inputs">Đang xử lý</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAll&list=listOfferApproach" class="menu-link">
                                        <div data-i18n="Input groups">Chấp nhận</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAll&list=listOfferReject" class="menu-link">
                                        <div data-i18n="Input groups">Từ chối </div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAll&list=listOfferSuccess" class="menu-link">
                                        <div data-i18n="Input groups">Xe đã thêm</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- Tables -->
                        <!--                        <li class="menu-item active">
                                                    <a href="" class="menu-link">
                                                        <i class="menu-icon tf-icons bx bx-table"></i>
                                                        <div data-i18n="Tables">Đang xử lý</div>
                                                    </a>
                                                </li>-->
                        <!-- Misc -->

                        <li class="menu-item  ">
                            <a
                                href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                                target="_blank"
                                class="menu-link"
                                >
                                <i class="menu-icon tf-icons bx bx-support"></i>
                                <div data-i18n="Support">Thông tin thêm</div>
                            </a>
                        </li>

                    </ul>
                </aside>
                <!-- / Menu -->

                <!-- Layout container -->
                <div class="layout-page">
                    <!-- Navbar -->

                    <nav
                        class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
                        id="layout-navbar"
                        >
                        <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
                            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                                <i class="bx bx-menu bx-sm"></i>
                            </a>
                        </div>

                        <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                            <!-- Search -->
                            <div class="navbar-nav align-items-center">
                                <form action="MainController" method="post">
                                    <div class="nav-item d-flex align-items-center">
                                        <button type="submit" value="searchSeller" name="action" class="bx bx-search fs-4 lh-0"></button> 
                                        <input
                                            type="search" name="txtsearch"
                                            class="form-control border-0 shadow-none"
                                            placeholder="Tìm kiếm..."

                                            />
                                    </div>
                                </form>
                            </div>


                            <ul class="navbar-nav flex-row align-items-center ms-auto">


                                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <div class="avatar avatar-online">
                                            <img src="img/logo.jpg" alt class="w-px-40 h-auto rounded-circle" />
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <div class="d-flex">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar avatar-online">
                                                            <img src="img/logo.jpg" alt class="w-px-40 h-auto rounded-circle" />
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <!--<span class="fw-semibold d-block">John Doe</span>-->
                                                        <small class="text-muted">Admin</small>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>

                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="MainController?action=logout">
                                                <i class="bx bx-power-off me-2"></i>
                                                <span class="align-middle">Đăng xuất</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </nav>

                    <!-- / Navbar -->
                    <style>
                        /* CSS để tùy chỉnh popup */
                        .popup {
                            position: fixed;
                            top: 57%;
                            left: 53%;
                            transform: translate(-50%, -50%);
                            width: 70%;
                            height: 70%;
                            background-color: #ffffff;
                            border: 1px solid #cccccc;
                            border-radius: 5px;
                            padding: 20px;
                            overflow: auto;
                        }
                        .close {
                            color: #aaa;
                            float: right;
                            font-size: 40px;
                            font-weight: bold;
                            cursor: pointer;
                            position: absolute;
                            bottom:  92%;
                            left: 97%
                        }

                        .close:hover,
                        .close:focus {
                            color: black;
                            text-decoration: none;
                            cursor: pointer;
                        }
                        .closehuy {
                            color: #aaa;
                            float: right;
                            font-size: 40px;
                            font-weight: bold;
                            cursor: pointer;
                            position: absolute;
                            bottom:  92%;
                            left: 97%
                        }

                        .closehuy :hover,
                        .closehuy :focus {
                            color: black;
                            text-decoration: none;
                            cursor: pointer;
                        }
                    </style>
                    <!-- Content wrapper -->
                    <div class="content-wrapper">
                        <!-- Content -->

                        <div class="container-xxl flex-grow-1 container-p-y">
                            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">xe /</span> Quản lý xe </h4>

                            <!-- Basic Bootstrap Table -->
                            <div class="card">
                                <h5 class="card-header">Xe</h5>
                                <div class="table-responsive text-nowrap">
                                    <table id="myTable" class="table">
                                        <thead>
                                            <tr>
                                                <th>Tên xe </th>

                                                <th>Giá bán </th>
                                                <th>Phần trăm </th>
                                                <th>Showroom </th> 
                                                <th>Chủ xe </th>
                                                <th>Thông số xe </th>
                                                <th>Trạng thái</th>
                                                <th>Chỉnh sửa</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="car" items="${listCar}">
                                                <tr>

                                                    <td>${car.carName}</td>

                                                    <td>${car.price} Triệu</td>
                                                    <td>${car.percentearn} %</td>
                                                    <td>${car.nameRoom}</td>
                                                    <td>${car.owner}</td>
                                                    <td>

                                                        <button  class="btn rounded-pill btn-outline-success  "  value="${car.carId}" name="carId" onclick="showPopup('${car.carId}')">Chi tiết</button>
                                                        <div id="popup-${car.carId}" class="popup" style="display: none;">
                                                            <h1 style="text-align: center">Thông số xem xe</h1>
                                                            <c:forEach items="${CarDAO.getAllCarInfo(car.carId)}" var="cf">

                                                                <h3>Năm Xuất Xứ
                                                                    ${cf.infoId}</h3>

                                                                <h3>Màu
                                                                    ${cf.color}</h3> 

                                                                <h3>Km đã đi:
                                                                    ${cf.km_gone}km</h3> 
                                                                <h3>
                                                                    Xuất xứ:
                                                                    ${cf.origin}
                                                                </h3>
                                                                <h3>
                                                                    Kiểu dáng:
                                                                    ${cf.style} </h3>
                                                                <h3>
                                                                    Hộp số
                                                                    ${cf.gear} 
                                                                </h3><h3>
                                                                    Nhiên Liệu
                                                                    ${cf.fuel}</h3>
                                                                <h3>
                                                                    Chỗ Ngồi:
                                                                    ${cf.seats} 
                                                                </h3>

                                                            </c:forEach>
                                                        </div>


                                                    </td>


                                                    <td><c:choose>
                                                            <c:when  test="${car.status=='1'}">
                                                                Đang bán
                                                            </c:when>

                                                            <c:otherwise>
                                                                Đã mua
                                                            </c:otherwise>
                                                        </c:choose></td>

                                                   <td> 
                                                    <button type="button" class="btn btn-outline-info" value="${car.carId}" name="carId" onclick="showPopupUpdateCar('${car.carId}')">Chỉnh sửa</button>

                                                    <div id="popupUpdate-${car.carId}" class="popup" style="display: none;">
                                                        <h1 style="text-align: center">Chỉnh sửa thông tin xe</h1>
                                                        <div class="row">  
                                                            
                                                            <c:forEach items="${CarDAO.getCar(car.carId)}" var="c">
                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-email-input" class="col-md-2 col-form-label">Tên xe</label>
                                                                <input type="text" name="nameCar" class="form-control" value="${c.carName}" multiple=""/>
                                                            </div>

                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-email-input" class="col-md-2 col-form-label">Giá bán</label>

                                                                <input type="text" value="${c.price}triệu" name="price" class="form-control"  />

                                                            </div>

                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-email-input" class="col-md-2 col-form-label">Trạng thái </label>

                                                              
                                                                <select class="form-control" name="status">
                                                                    <option value=" ${c.status} ">Đang bán</option>
                                                                   
                                                                    <option value="0">Đã bán</option>
                                                                </select>

                                                            </div>
                                                            </c:forEach>
                                                                <c:forEach items="${CarDAO.getAllCarInfo(car.carId)}" var="cf">

                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-number-input" class="col-md-2 col-form-label">Năm sản xuất</label>

                                                                <input class="form-control" type="number" name="year" value="${cf.infoId}" id="html5-number-input" />

                                                            </div>
                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-number-input" class="col-md-2 col-form-label">Kiểu dáng</label>

                                                                <input class="form-control" type="text" value=" ${cf.style}" name="style" id="html5-number-input" />

                                                            </div>
                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-number-input" class="col-md-2 col-form-label">Km đã đi </label>

                                                                <input class="form-control" type="text" name="km" value=" ${cf.km_gone}" id="html5-number-input" />

                                                            </div>
                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-number-input" class="col-md-2 col-form-label">Nguyên liệu</label>

                                                                <input class="form-control" type="text" value="${cf.fuel}" name="fuel" id="html5-number-input" />

                                                            </div>
                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-number-input" class="col-md-2 col-form-label">Tài nguyên</label>

                                                                <input class="form-control" type="text" name="gear" value=" ${cf.gear} " id="html5-number-input" />

                                                            </div>
                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-number-input" class="col-md-2 col-form-label">Xuất xứ</label>

                                                                <input class="form-control" type="text" name="origin" value="${cf.origin}" id="html5-number-input" />

                                                            </div>
                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-color-input" class="col-md-2 col-form-label">Màu</label>

                                                                <input class="form-control" type="text" name="color" value=" ${cf.color}" id="html5-color-input" />

                                                            </div>
                                                            <div class="mb-3 row col-md-6">
                                                                <label for="html5-number-input" class="col-md-2 col-form-label">Chỗ ngồi</label>

                                                                <input class="form-control" type="number" name="seats" value="${cf.seats}" id="html5-number-input" />

                                                            </div>
                                                                    
                                                                    </c:forEach>
                                                                    
                                                            <div class="demo-inline-spacing" style="position: absolute; left: 85%; top: 96%">
                                                                <button type="submit" name="action" value="new" class="btn btn-outline-primary">Lưu xe</button>

                                                            </div>


                                                            <div class="mt-2">

                                                                <span  class="closeUpdate">&times;</span>

                                                            </div>
                                                        </div>
                                                </td>






                                                </tr>
                                            </c:forEach>

                                        </tbody>

                                    </table>
                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">

                                                    <div class="demo-inline-spacing">
                                                        <!-- Basic Pagination -->
                                                        <nav aria-label="Page navigation">
                                                            <ul class="pagination" id="paginationList"></ul></nav> </div> </div> </div> </div>
                                    </div>
                                </div>

                            </div>

                        </div>




                    </div>
<script>

                     function showPopupUpdateCar(carId) {
                                var popup = document.getElementById("popupUpdate-" + carId);
                                popup.style.display = "block";
                            }
                        </script>

                    <script>

                        function showPopup(carId) {
                            var popup = document.getElementById("popup-" + carId);
                            popup.style.display = "block";
                        }

                        document.querySelector(".close").addEventListener("click", function () {
                            document.getElementById("popup" + carId).style.display = "none"; // Ẩn popup khi nhấn vào nút đóng
                        });

                    </script>

                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            var table = document.getElementById("myTable");
                            var tbody = table.getElementsByTagName("tbody")[0];
                            var rows = tbody.getElementsByTagName("tr");
                            var rowsPerPage = 10; // Số hàng hiển thị trên mỗi trang

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

                    <!-- Core JS -->
                    <!-- build:js assets/vendor/js/core.js -->
                    <script src="./assets/vendor/libs/jquery/jquery.js"></script>
                    <script src="./assets/vendor/libs/popper/popper.js"></script>
                    <script src="./assets/vendor/js/bootstrap.js"></script>
                    <script src="./assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

                    <script src="./assets/vendor/js/menu.js"></script>
                    <!-- endbuild -->

                    <!-- Vendors JS -->

                    <!-- Main JS -->    

                    <script src="./assets/jss/main.js"></script>
                    <!-- Page JS -->

                    <!-- Place this tag in your head or just before your close body tag. -->
                    <script async defer src="https://buttons.github.io/buttons.js"></script>
                    </body>

                    </html>
