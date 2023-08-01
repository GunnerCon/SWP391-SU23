<%@page import="dao.AccountDAO"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Account</title>

        <link rel="stylesheet" href="assets/css/dashboard2.css" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

        <script src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
                integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>



    </head>

    <body style="background-color: #272c4a;">
        <div class="menu-btn">
            <i class="fas fa-bars"></i>
        </div>
        <div class="side-bar">
            <header>
                <div class="close-btn">
                    <i class="fas fa-times"></i>
                </div>
                <img src="img/logo.jpg"
                     alt="" />
                <h1 style="color: aliceblue;">Car World</h1>
            </header>
            <div class="menu">
                <div class="item">
                    <a href="adminPage.jsp"><i class="fas fa-desktop"></i>Dashboard</a>
                </div>

                <div class="item">
                    <a href="MainController?action=listAll&list=listCar"><i class="fas fa-car"></i>Cars</a>
                </div>

                <div class="item">
                    <a class="sub-btn"><i class="fas fa-user"> </i>Accounts<i class="fas fa-angle-right dropdown">
                        </i></a>
                    <div class="sub-menu">
                        <a href="MainController?action=listAll&list=listSeller" class="sub-item">Sellers</a>
                        <a href="MainController?action=listAll&list=listCustomer" class="sub-item">Customers</a>
                    </div>
                </div>

                <div class="item">
                    <a class="sub-btn"><i class="fas fa-business-time"> </i>Orders<i class="fas fa-angle-right dropdown">
                        </i></a>
                    <div class="sub-menu">
                        <a href="#" class="sub-item">Marked</a>
                        <a href="#" class="sub-item">Not Yet</a>
                    </div>
                </div>
                <div class="item">
                    <a class="sub-btn"><i class="fas fa-cogs"></i>Settings<i class="fas fa-angle-right dropdown"></i></a>
                    <div class="sub-menu">
                        <a href="#" class="sub-item">Sub Item 01</a>
                        <a href="#" class="sub-item">Sub Item 02</a>
                    </div>
                </div>
                <div class="item">
                    <a href="#"><i class="fas fa-info-circle"></i>About</a>
                </div>
            </div>
        </div>

        <div class="table-total">
            <!-- <div class="head "> -->
            <div class="container">
                <div class="profile dropdown">
                   <img style="width: 75px; height: 75px" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/VietnameseRegions.svg/640px-VietnameseRegions.svg.png" class="pro-img" id="menu" data-toggle="dropdown" />
                    <ul class="dropdown-menu" role="menu" aria-labelledby="menu">
                        <li role="presentation"><a role="button" tabindex="-1" href="MainController?action=logout">Logout</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Change Something</a></li>
                    </ul>
                    <c:set var="ad" value="${sessionScope.name}"></c:set>
                    <p>${ad}<span>Admin</span></p>

                </div>
            </div>


            <!-- </div> -->

            <div class="clearfix"></div>

            <button class="button" role="button" data-toggle="modal" data-target="#myButton">
                <i class="fa fa-plus"></i>
                New Item
            </button>

            <!-- Modal -->
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
                                    <input type="email" class="form-control" id="email1" aria-describedby="emailHelp"
                                           placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">Your
                                        information is safe with us.</small>
                                </div>
                                <div class="form-group">
                                    <label for="password1">Password</label>
                                    <input type="password" class="form-control" id="password1" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <label for="password1">Confirm Password</label>
                                    <input type="password" class="form-control" id="password2"
                                           placeholder="Confirm Password">
                                </div>
                            </div>
                            <!-- <div class="modal-footer border-top-0 d-flex justify-content-center">
                                <button type="submit" class="btn btn-success">Submit</button>
                            </div> -->
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

            <div class="col-div-12">
                <div class="box-12">
                    <div class="content-box">
                        <div class="title-container">
                            <p>
                                All sellers
                                <!-- <span>Sell All</span> -->
                            </p>
                            <br />
                            <form action="MainController" method="post">
                                <div class="input-group">
                                    <input type="text" name="txtsearchCus" placeholder="Search..." />
                                    <button type="submit"name="action" value="search">
                                        <i class="fa fa-search"></i>
                                    </button>
                                    <!-- <img src="admin_page/images/search.png " alt="" /> -->
                                </div>
                            </form>
                        </div>

                        <table>
                            <tr>

                                <th>Email</th>
                                <th>Fullname</th>
                                <th>Phone</th>
                                <th>Status</th>
                                <th>Role</th>
                                <th>Edit</th>
                            </tr>

                            <c:forEach var="sl" items="${listCustomer}">
                                <c:set var="no" value="0"></c:set>
                                    <tr>

                                        <td>${sl.email}</td>                       
                                    <td>${sl.fullname}</td>                       
                                    <td>${sl.phone}</td>                       
                                    <td><c:choose>
                                            <c:when test="${sl.status}eq'1'">
                                                Active
                                            </c:when>
                                            <c:otherwise>
                                                Non Active
                                            </c:otherwise>
                                        </c:choose></td>                       
                                    <td>Customer</td>                       
                                    <td> <i class="fa fa-edit" data-toggle="modal" data-target="#myModal"></i>
                                        <!-- Modal -->
                                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                             aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="form">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <h4 class="modal-title" id="myModalLabel">Edit Information</h4>
                                                    </div>

                                                    <form>
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <label for="email1">Customer name</label>
                                                                <input type="email" class="form-control" id="email1"
                                                                       aria-describedby="emailHelp" value="${sl.fullname}"">
                                                                <small id="emailHelp" class="form-text text-muted">Your
                                                                    information is safe with us.</small>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="password1">Status</label>
                                                                <input type="radio" class="form-control" id="password1" value="" checked>
                                                                <label for="huey">Active</label>  
                                                                <input type="radio" class="form-control" id="password1" value="">
                                                                <label for="huey">Non Active</label>
                                                                
                                                            </div>                                                   
                                                        </div>

                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal"> Close </button>
                                                            <button type="button" class="btn btn-primary">Save changes</button>
                                                        </div>

                                                    </form>

                                                </div>
                                            </div>
                                        </div></td>                       

                                </tr>
                            </c:forEach>


                        </table>
                    </div>
                </div>

            </div>

        </div>

        <div class="clearfix"></div>

        <!--    <div class="pagination" id="pagination" style="display: flex; 
            align-items: center; 
            justify-content: center;">
                <div class="pagination">
                    <a href="#">&laquo;</a>
                    <a href="#">1</a>
                    <a href="#" class="active">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">6</a>
                    <a href="#">&raquo;</a>
                </div>
            </div>-->



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
                });

                $(".close-btn").click(function () {
                    $(".side-bar").removeClass("active");
                    $(".menu-btn").css("visibility", "visible");
                });

            });

        </script>

    </body>

</html>