<%-- 
    Document   : Login
    Created on : 23/05/2023, 10:50:20 PM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="indexE.css">
        <title>HASH TECHIE OFFICIAL</title>
    </head>



    <body>
        <section>
            <div class="form-box">

                <div class="form-value">
                    <form action="MainController" method = "post" class="formlogin">
                        <h2>Login</h2>
                        <div class="inputbox">
                            <input type="text" name="txtname" required="" >
                            <label for="">Username</label>
                        </div>
                        <div class="inputbox">
                            <input type="password" name="txtpassword" required="">
                            <label for="">Password</label>
                        </div>
                        <%= (request.getAttribute("WARNING") == null) ? "" : request.getAttribute("WARNING")%>
                        <div class="forget" >
                            <label for=""><input type="checkbox">Remember Me  <a href="#" style="margin-left: 100px;">  Forget Password</a></label>

                        </div>
                        <button type="submit" value ="login" name="action">Login</button>
                        <button style="margin-top:  10px"><a style="text-decoration: none; color: #000"href="index.html">Back Home Car</a></button>

                        <div class="register">
                            <p>Don't have a account <a href="Register.jsp">Register</a></p>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>