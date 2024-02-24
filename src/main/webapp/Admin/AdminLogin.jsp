<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>UniStay | Admin Login</title>
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
        background-image: linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url(image/New2.webp);
        background-position: center;
        background-size: cover;
        position: absolute;
    }

.form-box{
        width: 380px;
        height: 330px;
        position: relative;
        margin: 6% auto;
        background:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)), transparent;
        padding: 5px;
        overflow: hidden;
        border-radius: 10px;
    }

.button-box{
        display: flex;
        width: 220px;
        margin: 35px auto;
        position: relative;
        justify-content: center;
        align-items: center;
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
        position: absolute;
        width: 110px;
        height: 100%;
        background: linear-gradient(to right, #5d4f08, #ffc107);
        border-radius: 30px;
    }

.input-group{
    top: 100px;
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
    background: linear-gradient(to right, #5d4f08, #ffc107);
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
color:  #ffc107;
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
                <button  type="button" class="toggle-btn" id="login-form-link" onclick="login()">Admin Login</button>
            </div>

<!--Login-->
            <form action="JDBC_adminlogin_action.jsp" method="post" id="login" class="input-group">
    <input type="email" name="email" class="input-field" placeholder="Email" required>
    <input type="password" name="password" class="input-field" placeholder="Password" required>
    <input type="checkbox" class="check-box"><span>Remember Password</span>
    <button type="submit" class="submit-btn">Login</button>
</form>
       
        </div>
    </div>

</body>
</html>