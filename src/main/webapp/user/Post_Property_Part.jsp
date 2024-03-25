<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>UniStay</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<link rel="stylesheet"  href="style.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300;400&display=swap');

  * {
    margin: 0;
    padding: 0;
  }

  body {
    background: #dcdcdc;
    padding-top: 80px; /* Add padding-top to body to compensate for form's position */
  }

  .form-container {
    position: fixed;
    top: 80px;
    left: 0;
    padding: 20px; /* Optional: Add padding for better spacing */
    background-color: #dcdcdc; /* Optional: Add background color for better visibility */
    border: 1px solid #ccc; /* Optional: Add border for better distinction */
  }

  form {
    /* Styles for the form if needed */
  }
</style>

</head>
<body>
  <!-- Navbar/Banner -->
  <%@include file="navbar2.jsp" %>
  <div class="form-container">
    <form>
    <h3>Sell or Rent your Property</h3>
    <h5>You are posting this property for <span>Free</span></h5>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
        <label class="form-check-label" for="flexRadioDefault1">
          Default radio
        </label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
        <label class="form-check-label" for="flexRadioDefault2">
          Default checked radio
        </label>
      </div>
    </form>
  </div>
</body>
</html>