<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
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
        height: 510px;
        position: relative;
        margin: 5% auto;
        background:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)), transparent;
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

    h3{
    color: #ffd300;
    text-align: center;
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
margin-left: 110px;
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
                <h3>Forgot-Password</h3>
            </div>
            <div class="social-icons">
                <i class="bi bi-facebook"></i>
                <i class="bi bi-whatsapp"></i>
                <i class="bi bi-google"></i>
            </div> 

            <form action="" id="login" class="input-group">
                <input type="email" class="input-field" placeholder="Email" required>
                <input type="password" class="input-field" placeholder="Password" required>
                <input type="checkbox" class="check-box"><span>Remember Password</span>
                <button type="button" class="submit-btn">Login</button>
                <a href="Login.jsp" class="text">Register</a>
            </form>
        </div>
     
    </div>
  
</body>
</html>