<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>UniStay | login | Registration</title>
    <link rel="stylesheet"  href="style.css" >
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300;400&display=swap');
    *{
        margin: 0;
        padding: 0;
    }

    .hero{
        height: 100%;
        width: 100%;
        background-image: linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url(image/second.jpg);
        background-position: center;
        background-size: cover;
        position: absolute;
       
    }

    .form-box{
        width: 380px;
        height: 500px;
        position: relative;
        margin: 3% auto;
        background:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)), transparent;
        padding: 5px;
        overflow: hidden;
    }

    .button-box{
        width: 220px;
        margin: 35px auto;
        position: relative;
        box-shadow: 0 0 20px 9px #ffd3001f;
        border-radius: 30px;
    }

    .toggle-btn{
        padding: 10px 30px;
        cursor: pointer;
        background: transparent;
        border: 0;
        outline: none;
        position: relative;
        color: #fff;
        font-size: 14px;
    }

    #btn{
        top: 0;
        left: 0;
        position: absolute;
        width: 110px;
        height: 100%;
        background: linear-gradient(to right, #5d4f08, #ffd300);
        border-radius: 30px;
        transition: .5s;
    }

    .social-icons{
        margin: 10px auto;
        text-align: center;
    }

    .social-icons .bi{
    width: 50px;
    box-shadow: 0 0 20px 0 #ffd3001f;
    margin: 0 12px;
    cursor: pointer;
    border-radius: 50%;
    color:#ffd300;
    font-size: 25px;
    transition: all 0.4s ease;
    }

    .social-icons .bi:hover{
    background: transparent;
     color: #fff;
    }

.input-group{
    top: 180px;
    position: absolute;
    width: 280px;
    transition: .5s;
}

.input-field{
    width: 100%;
    padding: 10px 0;
    margin: 5px 0;
    border-left: 0;
    border-top: 0;
    border-right: 0;
    border-bottom: 1px solid #eee7e7;
    outline: none;
    background: transparent;
    color: white;
}

.input-field::placeholder{
    color: #eee7e7;
}

.submit-btn{
    width: 85%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: auto;
    background: linear-gradient(to right, #5d4f08, #ffd300);
    border: 0;
    outline: none;
    border-radius: 30px;
     color: #fff;
}
.check-box{
   margin: 30px 10px 30px 0;
}

span{
    margin: 30px 10px 30px 0;
    color: #f6ecec;
    font-size: 12px;
    position: absolute;
}
    
#login{
    left: 50px;
}

#register{
    left: 450px;
}

.text{
color: #fff;
margin-left: 80px;
text-decoration: none;
}

.text:hover{
text-decoration: underline;
}

.navbar a{
display: flex;
align-items: center;
padding: 20px;
padding-left: 30px;
padding-right: 30px;
padding-top: 10px;
color:  #ffd300;
text-decoration: none;
font-size: 25px;
}

.navbar span{
margin:41px;
text-decoration: none;
font-size: 25px;
}
</style>

</head>
  <body>
    <div class="hero">
    <div class="navbar">
    <div>
     <a href="index.jsp">Uni<span>Stay</span></a>
    </div>
    </div>
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button  type="button" class="toggle-btn" id="login-form-link" onclick="login()">Login</button>
                <button  type="button" class="toggle-btn" id="register-form-link" onclick="register()">Register</button>
            </div>
            <div class="social-icons">
                <i class="bi bi-facebook"></i>
                <i class="bi bi-whatsapp"></i>
                <i class="bi bi-google"></i>
            </div> 

<!--Login-->
 <%
    // Check if the message is not null before displaying it
    String message = (String)session.getAttribute("message");
    if (message != null) {
    %>
    <p style="color: white; text-align: center;"><%= message %></p>
    <%
        // Remove the message from the session
        session.removeAttribute("message");
    }
    %>
            <form action="Login_Action_JDBC.jsp" method="post" id="login" class="input-group">
                <input type="email" name="email" class="input-field" placeholder="Email" required>
                <input type="password" name="password" class="input-field" placeholder="Password" required>
                <input type="checkbox" class="check-box"><span>Remember Password</span>
                <button type="submit" class="submit-btn">Login</button>
                <a href="forgotpas.jsp" class="text">Forgot Password</a>
            </form>
            
            <%
    String error = request.getParameter("error");
    if (error != null && error.equals("1")) {
%>
    <script>alert("Incorrect email or password");</script>
<%
    }
%>
<!--Register-->

            <form action="Signup_Action_JDBC.jsp" method="post" id="register" class="input-group">
                <input type="text" name="username" class="input-field" placeholder="User-Name" required>
                <input type="text" name="mobileno" class="input-field" placeholder="Mobile Number" required>
                <input type="email" name="email" class="input-field" placeholder="Email" required>
                <input type="password" name="password" class="input-field" placeholder="Password" required>
                <input type="checkbox" class="check-box"><span>I agree to the terms and conditions.</span>
                <button type="submit" class="submit-btn">Signup</button>
            </form>
        </div>
    </div>
  
    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var btn = document.getElementById("btn");
    
        function register(){
            x.style.left = "-400px";
            y.style.display = "block";
            y.style.left = "50px";
            btn.style.left = "110px";
        }
    
        function login(){
            x.style.left = "50px";
            y.style.display = "none";
            btn.style.left = "0px";
        }
    </script>


  </body>
</html>