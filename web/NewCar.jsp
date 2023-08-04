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
<%@page import="dao.ShowRoomDAO" %>
<%@page import="dto.Showroom" %>
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
                            <a href="seller.jsp" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                                <div data-i18n="Analytics">Thống kê</div>
                            </a>
                        </li>


                        <li class="menu-item active open ">
                            <a href="MainController?action=listAllSeller&list=listCar" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-collection"></i>
                                <div data-i18n="Basic">Xe</div>
                            </a>
                        </li>
                        <!-- User interface -->

                        <!-- Extended components -->
                        <li class="menu-item ">
                            <a href="javascript:void(0)" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-copy"></i>
                                <div data-i18n="Extended UI">Đặt mua xe</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item ">
                                    <a href="MainController?action=listAllSeller&list=listOrder" class="menu-link">
                                        <div data-i18n="Perfect Scrollbar">Đang xử lí</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAllSeller&list=listOrderDone" class="menu-link">
                                        <div data-i18n="Text Divider">Hoàn thành</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAllSeller&list=listOrderFail" class="menu-link">
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
                                    <a href="MainController?action=listAllSeller&list=listOffer" class="menu-link">
                                        <div data-i18n="Basic Inputs">Đang xử lý</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAllSeller&list=listOfferApproach" class="menu-link">
                                        <div data-i18n="Input groups">Chấp nhận</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAllSeller&list=listOfferReject" class="menu-link">
                                        <div data-i18n="Input groups">Từ chối </div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="MainController?action=listAllSeller&list=listOfferSuccess" class="menu-link">
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
                                <div class="nav-item d-flex align-items-center">
                                    <i class="bx bx-search fs-4 lh-0"></i>
                                    <input
                                        type="text"
                                        class="form-control border-0 shadow-none"
                                        placeholder="Search..."
                                        aria-label="Search..."
                                        />
                                </div>
                            </div>
                            <!-- /Search -->

                            <ul class="navbar-nav flex-row align-items-center ms-auto">
                                <!-- Place this tag where you want the button to render. -->
                               

                                <!-- User -->
                                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <div class="avatar avatar-online">
                                            <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <div class="d-flex">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar avatar-online">
                                                            <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <span class="fw-semibold d-block">John Doe</span>
                                                        <small class="text-muted">Admin</small>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <i class="bx bx-user me-2"></i>
                                                <span class="align-middle">My Profile</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <i class="bx bx-cog me-2"></i>
                                                <span class="align-middle">Settings</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <span class="d-flex align-items-center align-middle">
                                                    <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                                                    <span class="flex-grow-1 align-middle">Billing</span>
                                                    <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="auth-login-basic.html">
                                                <i class="bx bx-power-off me-2"></i>
                                                <span class="align-middle">Log Out</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <!--/ User -->
                            </ul>
                        </div>
                    </nav>

                    <!-- / Navbar -->

                    <!-- Content wrapper -->
                    <div class="content-wrapper">
                        <!-- Content -->
                    
                        <div class="container-xxl flex-grow-1 container-p-y">
                            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Xe /</span> Thêm xe</h4>

                            <div class="row">
                                <div class="card mb-4">
                                    <!--                    <h5 class="card-header">HTML5 Inputs</h5>-->
                                    <form action="MainController" method="post">
                                    <div class="card-body">
                                        
                                        <div class="mb-3 row">
                                            <label for="html5-text-input" class="col-md-2 col-form-label">Tên xe</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="carname" placeholder="Tên xe" id="html5-text-input" />
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="html5-search-input" class="col-md-2 col-form-label">Giá </label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="price" placeholder="Giá..." id="html5-search-input" />
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="html5-email-input" class="col-md-2 col-form-label">Hình ảnh</label>
                                            <div class="col-md-10"><div class="input-group">
                                                    <input type="file" name="file" class="form-control"  multiple=""/>
                                                <label class="input-group-text" for="inputGroupFile02">Tải lên</label>
                                            </div></div> 
                                        </div>
                                        <div class="mb-3 row">
                                            <div class="input-group">
                                                <label for="html5-email-input" class="col-md-2 col-form-label">Showrooms</label>

                                                <select class="form-select" id="inputGroupSelect01" name="showrooms">
                                                    <option selected>Showrooms...</option>
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
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="html5-tel-input" class="col-md-2 col-form-label">Chủ xe</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="owner" pceholder="Tên chủ xe..." id="html5-tel-input" />
                                            </div>
                                        </div>

                                        <div class="mb-3 row">
                                            <label for="html5-number-input" class="col-md-2 col-form-label">Thời gian kí gửi</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="date" name="yearbycar" placeholder="Ngày mua xe...." id="html5-number-input" />
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="html5-number-input" class="col-md-2 col-form-label">Năm sản xuất</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="number" name="year" placeholder="Năm sản xuất...." id="html5-number-input" />
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <div class="input-group">
                                                <label for="html5-email-input" class="col-md-2 col-form-label">Thương hiệu</label>

                                                <select class="form-select" id="inputGroupSelect01" name="brand">
                                                    
                                                    
                                                        <c:forEach var="sr" items="${BrandDAO.getBrands()}">
                                                            <option value="${sr.brandID}">${sr.brandName}</option>
                                                        </c:forEach>
                                                   
                                                    
                                                </select>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="html5-number-input" class="col-md-2 col-form-label">Kiểu dáng</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" placeholder="Kiểu dáng" name="style" id="html5-number-input" />
                                            </div>
                                        </div>
                                         <div class="mb-3 row">
                                            <label for="html5-number-input" class="col-md-2 col-form-label">Km đã đi </label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="km" placeholder="Km đã đi ....." id="html5-number-input" />
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="html5-number-input" class="col-md-2 col-form-label">Nguyên liệu</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="fuel" id="html5-number-input" />
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="html5-number-input" class="col-md-2 col-form-label">Tài nguyên</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="gear" placeholder="Xăng,Dầu...." id="html5-number-input" />
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="html5-number-input" class="col-md-2 col-form-label">Xuất xứ</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="origin" placeholder="Xuất xứ" id="html5-number-input" />
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="html5-color-input" class="col-md-2 col-form-label">Màu</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="color" placeholder="Màu xe" id="html5-color-input" />
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="html5-number-input" class="col-md-2 col-form-label">Chỗ ngồi</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="number" name="seats" placeholder="Chỗ ngồi" id="html5-number-input" />
                                            </div>
                                        </div>
                                         <div class="mb-3 row">
                                            <label for="html5-number-input" class="col-md-2 col-form-label">Thông tin thêm về xe</label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="desc" placeholder="Thông tin thêm.." id="html5-number-input" />
                                            </div>
                                        </div>
                                          <div class="card-body">

                                    <div class="demo-inline-spacing">
                                        <button type="submit" name="action" value="new" class="btn btn-outline-primary">Lưu xe</button>

                                    </div>
                                </div>
                                    </div>
                                    </form>
                                </div>

                                <!-- File input -->

                                
                                <!-- / Content -->

                                <!-- Footer -->
                                <footer class="content-footer footer bg-footer-theme">
                                    <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                                        <div class="mb-2 mb-md-0">
                                            ©
                                            <script>
                                                document.write(new Date().getFullYear());
                                            </script>
                                            , made with ❤️ by
                                            <a href="#" target="_blank" class="footer-link fw-bolder">Car World</a>
                                        </div>
                                        <div>
                                            <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                                            <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                                            <a
                                                href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                                                target="_blank"
                                                class="footer-link me-4"
                                                >Documentation</a
                                            >

                                            <a
                                                href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                                                target="_blank"
                                                class="footer-link me-4"
                                                >Support</a
                                            >
                                        </div>
                                    </div>
                                </footer>
                                <!-- / Footer -->

                                <div class="content-backdrop fade"></div>
                            </div>
                            <!-- Content wrapper -->
                        </div>

                    </div>

                    <!-- Overlay -->

                </div>


                <!-- / Footer -->


                <!-- Content wrapper -->




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
