<%@page import="dao.AccountDAO"%>
<%@page import="dao.CarDAO"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

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
        <link rel="stylesheet" href="assets/css/animate.css">	
        <!-- Latest Bootstrap min CSS -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet"> 
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
        <link rel="stylesheet" href="assets/css/all.min.css">
        <link rel="stylesheet" href="assets/css/ionicons.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/linearicons.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/simple-line-icons.css">
         <link rel="stylesheet" href="assets/owlcarousel/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/owlcarousel/css/owl.theme.css">
        <link rel="stylesheet" href="assets/owlcarousel/css/owl.theme.default.min.css">
      
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
     
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/slick-theme.css">
      
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <!-- Helpers -->
        <script src="./assets/vendor/js/helpers.js"></script>


        <script src="../assets/js/config.js"></script>

    </head>


 <body>



 
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
                        <li class="menu-item active open ">
                            <a href="adminPage.jsp" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                                <div data-i18n="Analytics">Thống kê</div>
                            </a>
                        </li>


                    <li class="menu-item  ">
                            <a href="MainController?action=listAll&list=listCar" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-collection"></i>
                                <div data-i18n="Basic">Xe</div>
                            </a>
                        </li>
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
                        <li class="menu-item ">
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
                    
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="row">
                
                  <div style="text-align: center;width: 100%" class="col-lg-10 col-md-6 order-1">
                  <div class="row">
                    <div class="col-lg-6 col-md-12 col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                            <c:set value="${sessionScope.count}" var="co"/>
                          <span class="fw-semibold d-block mb-1"> Tài Khoản khách hàng</span>
                          <h3 class="card-title mb-2">${co}</h3>
                          <!--<small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +72.80%</small>-->
                        </div>
                      </div>
                    </div>
                      
                      
                    <div class="col-lg-6 col-md-12 col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                           <c:set value="${sessionScope.countC}" var="car"/>
                          <span>Thống kê xe</span>
                          <h3 class="card-title text-nowrap mb-1">${car}</h3>
                          <!--<small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.42%</small>-->
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Total Revenue -->
               
                <!--/ Total Revenue -->
                <div style="text-align: center; width: 100%" class="col-12 col-md-8 col-lg-4 order-3 order-md-2">
                  <div class="row">
                    <div class="col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                         <c:set value="${sessionScope.countCof}" var="offer"/>
                          <span class="d-block mb-1">Người kí gửi xe</span>
                          
                          <h3 class="card-title text-nowrap mb-2">${offer}</h3>
                          
                        </div>
                      </div>
                    </div>
                    <div class="col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                         <c:set value="${sessionScope.countCod}" var="order"/>
                          <span class="d-block mb-1">Người mua xe</span>
                          
                          <h3 class="card-title text-nowrap mb-2">${order}</h3>
                          
                        </div>
                      </div>
                    </div>
                    <!-- </div>
    <div class="row"> -->
<!--                    <div class="col-12 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="d-flex justify-content-between flex-sm-row flex-column gap-3">
                            <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                              <div class="card-title">
                                <h5 class="text-nowrap mb-2"></h5>
                                <span class="badge bg-label-warning rounded-pill">Doanh thu</span>
                              </div>
                              <div class="mt-sm-auto">
                                <small class="text-success text-nowrap fw-semibold"
                                  ><i class="bx bx-chevron-up"></i> 68.2%</small
                                >
                                <h3 class="mb-0">$84,686k</h3>
                              </div>
                            </div>
                            <div id="profileReportChart"></div>
                          </div>
                        </div>
                      </div>
                    </div>-->
                  </div>
                </div>
              </div>
             
            </div>
            <!-- / Content -->

            <!-- Footer -->
         
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>











    

<!--    <div class="table-total">
         <div class="head "> 
        <div class="container">
            <div class="profile dropdown">
                <img src="./admin_page/images/user.png" class="pro-img" id="menu" data-toggle="dropdown" />
                <ul class="dropdown-menu" role="menu" aria-labelledby="menu">
                    <li role="presentation"><a role="button" tabindex="-1" href="MainController?action=logout">Đăng xuất</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#"></a></li>
                </ul>
                <c:set var="name" value="${name}"></c:set>
                <p>${name.fullname}<span>Seller</span></p>

            </div>
        </div>

         </div> 

        <div class="clearfix"></div>

        <div class="stats">
            <div class="col-div-3">
                <div class="box">
                    <c:set var="ac" value="${count}"></c:set>
                    <p>${ac}<br /><span>Khách hàng</span></p>
                    
                    <i class="fa fa-users box-icon"></i>
                </div>
            </div>
            <div class="col-div-3">
                <div class="box">
                    <c:set var="car" value="${car}"></c:set>
                    <p>${car}<br /><span>Xe</span></p>
                    
                    <i class="fa fa-list box-icon"></i>
                </div>
            </div>
            <div class="col-div-3">
                <div class="box">
                    <c:set var="carod" value="${order}"></c:set>
                    <p>${carod}<br /><span>Đặt hàng</span></p>
                    <i class="fa fa-shopping-bag box-icon"></i>
                </div>
            </div>
            <div class="col-div-3">
                <div class="box">
                    <c:set var="carof" value="${carOffer}"></c:set>
                    <p>${carof}<br /><span>Đăng kí gửi xe</span></p>
                    <i class="fa fa-tasks box-icon"></i>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
        <br />

        <div class="col-div-12">
            <div class="col-div-8">
                <div class="title-container">
                    <p>
                        Top View Cars
                    </p>
                    <br />
                    <form action="search" method="post">
                        <div class="input-group">
                            <input type="search" value="" name="" type="" placeholder="Search Data..." />
                            <button type="submit">
                                <i class="fa fa-search"></i>
                            </button>

                             <img src="admin_page/images/.png " alt="" /> 
                        </div>
                    </form>

                    <div class="buttonNewItem">
                        <button class="button" role="button" data-toggle="modal" data-target="#myButton">
                            <i class="fa fa-plus"></i>
                            New Item
                        </button>
                    </div>

                     Modal 
                    <div class="modal fade" id="myButton" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="form">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel">Thêm thông tin</h4>
                                </div>

                                <form>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label for="email1">Email address</label>
                                            <input type="email" class="form-control" id="email1"
                                                aria-describedby="emailHelp" placeholder="Enter email">
                                            <small id="emailHelp" class="form-text text-muted">Your
                                                information is safe with us.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="password1">Password</label>
                                            <input type="password" class="form-control" id="password1"
                                                placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <label for="password1">Confirm Password</label>
                                            <input type="password" class="form-control" id="password2"
                                                placeholder="Confirm Password">
                                        </div>
                                    </div>
                                     <div class="modal-footer border-top-0 d-flex justify-content-center">
                                        <button type="submit" class="btn btn-success">Submit</button>
                                    </div> 
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">
                                            Close
                                        </button>
                                        <button type="button" class="btn btn-primary">Save changes</button>
                                    </div>

                                </form>

                            </div>
                        </div>
                    </div>

                </div>

                <table>
                    <tr>
                        <th>Car</th>
                        <th>Contact</th>
                        <th>Origin</th>
                        <th>note</th>
                    </tr>
                    <tr>
                         Tên xe, cột 1 
                        <td>BMW</td>
                         sđt liên hệ, cột 2 
                        <td>054821554</td>
                         Xuất xứ, cột 3 
                        <td>Germany</td>
                         cột gì đó, cột 4 
                        <td>
                            <i class="fa fa-plus-circle" data-toggle="modal" data-target="#myModal"></i>

                             Modal 
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="form">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                        </div>

                                        <form>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="email1">Email address</label>
                                                    <input type="email" class="form-control" id="email1"
                                                        aria-describedby="emailHelp" placeholder="Enter email">
                                                    <small id="emailHelp" class="form-text text-muted">Your
                                                        information is safe with us.</small>
                                                </div>
                                                <div class="form-group">
                                                    <label for="password1">Password</label>
                                                    <input type="password" class="form-control" id="password1"
                                                        placeholder="Password">
                                                </div>
                                                <div class="form-group">
                                                    <label for="password1">Confirm Password</label>
                                                    <input type="password" class="form-control" id="password2"
                                                        placeholder="Confirm Password">
                                                </div>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    Close
                                                </button>
                                                <button type="button" class="btn btn-primary">Save changes</button>
                                            </div>

                                        </form>

                                    </div>
                                </div>
                            </div>

                            <i class="fa fa-trash" data-toggle="modal" data-target="#myModal"></i>
                             Modal 
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="form">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                        </div>

                                        <form>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="email1">Email address</label>
                                                    <input type="email" class="form-control" id="email1"
                                                        aria-describedby="emailHelp" placeholder="Enter email">
                                                    <small id="emailHelp" class="form-text text-muted">Your
                                                        information is safe with us.</small>
                                                </div>
                                                <div class="form-group">
                                                    <label for="password1">Password</label>
                                                    <input type="password" class="form-control" id="password1"
                                                        placeholder="Password">
                                                </div>
                                                <div class="form-group">
                                                    <label for="password1">Confirm Password</label>
                                                    <input type="password" class="form-control" id="password2"
                                                        placeholder="Confirm Password">
                                                </div>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    Close
                                                </button>
                                                <button type="button" class="btn btn-primary">Save changes</button>
                                            </div>

                                        </form>

                                    </div>
                                </div>
                            </div>
                            <i class="fa fa-edit" data-toggle="modal" data-target="#myModal"></i>
                             Modal 
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="form">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                        </div>

                                        <form>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="email1">Email address</label>
                                                    <input type="email" class="form-control" id="email1"
                                                        aria-describedby="emailHelp" placeholder="Enter email">
                                                    <small id="emailHelp" class="form-text text-muted">Your
                                                        information is safe with us.</small>
                                                </div>
                                                <div class="form-group">
                                                    <label for="password1">Password</label>
                                                    <input type="password" class="form-control" id="password1"
                                                        placeholder="Password">
                                                </div>
                                                <div class="form-group">
                                                    <label for="password1">Confirm Password</label>
                                                    <input type="password" class="form-control" id="password2"
                                                        placeholder="Confirm Password">
                                                </div>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    Close
                                                </button>
                                                <button type="button" class="btn btn-primary">Save changes</button>
                                            </div>

                                        </form>

                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>


             total sell 
            <div class="col-div-4">
                 <div class="box-4"> 
                <p>
                    Total Sale
                     <span>Sell All</span> 
                </p>

                <div class="circle-wrap">
                    <div class="circle">
                        <div class="mask full">
                            <div class="fill"></div>
                        </div>
                        <div class="mask half">
                            <div class="fill"></div>
                        </div>
                        <div class="inside-circle">70%</div>
                    </div>
                </div>
                 </div> 
            </div>
        </div>



    </div>-->

    <div class="theme-switch-wrapper">
        <label class="theme-switch" for="checkbox">
            <input type="checkbox" id="checkbox" name="changeTheme" />
            <div class="slider round"></div>
        </label>
    </div>

    <!-- <script src="darkTheme.js"> </script> -->
  <script>
        document.addEventListener("DOMContentLoaded", function () {
            var table = document.getElementById("myTable");
            var tbody = table.getElementsByTagName("tbody")[0];
            var rows = tbody.getElementsByTagName("tr");
            var rowsPerPage = 2; // Số hàng hiển thị trên mỗi trang

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