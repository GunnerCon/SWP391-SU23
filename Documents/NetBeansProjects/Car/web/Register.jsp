<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Form | Codehal</title>
        <link rel="stylesheet" type="text/css" href="css/form.css">
    </head>
    <body>
  <div class="form-wrapper sign-in">
                
                <form action="MainController" method = "post">
                   
                    <div class="input-group">
                        <input type="text" name="txtfullname" required="" value="<%= (request.getAttribute("txtfullname") == null) ? "" : request.getAttribute("txtfullname")%>">
                        <label for="">Username</label>
                    </div>
                    <div class="input-group">
                        <input type="text" name="txtemail" required  pattern="^[a-zA-Z0-9._%+-]+@gmail.com$"  value="<%= (request.getAttribute("txtemail") == null) ? "" : request.getAttribute("txtemail")%>">
                        <label for="">Email</label>
                    </div>
                    <div class="input-group">
                        <input type="password"  name="txtpassword" required="">
                        <label for="">Password</label>
                    </div>
                        
                        <div class="input-group">
                    <input  type="text" name="txtphone" value="<%= (request.getAttribute("txtphone")) == null ? "" : request.getAttribute("txtphone")%>" required="">

                    <label for="">Phone</label>
                    </div>

                    <div class="remember">
                        <label><input type="checkbox"> I agree to the terms & conditions</label>
                    </div>
                    <button type="submit" value="register" name="action">Sign Up</button>
                    <div class="signUp-link">
                        <p>Already have an account? <a href="Login.jsp" class="signInBtn-link">Sign In</a></p>
                    </div>
                </form>
</div>

            </div>
    

        <script src="js/form.js"></script>
    </body>

</html>