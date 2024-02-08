<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset Instructions</title>
    <link rel="stylesheet"  href="style.css" >
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

    

span{
    margin: 30px 10px 30px 0;
    color: #f6ecec;
    font-size: 12px;
    position: absolute;
}

.form-box{
        width: 380px;
        height: 310px;
        position: relative;
        margin: 5% auto;
        background:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)), transparent;
        padding: 5px;
        overflow: hidden;
    }
.form-box h2{
color: white;
font-size: 40px;
margin: 10px;
text-decoration: underline;
}

.form-box p{
color: white;
font-size: 20px;
margin: 10px;
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
margin:39px;
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
     <h2  style = "text-align:center" >Password Reset Instructions Sent</h2>
    <p style = "text-align:center" >Instructions to reset your password have been sent to
     your email address. Please check your inbox and follow the instructions provided.</p>
       </div>     
    </div>
  
    
</body>
</html>
