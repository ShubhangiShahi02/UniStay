<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>UniStay</title>
    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- Custom CSS -->
     <link rel="stylesheet"  href="style.css" >
    <style>
   @import url('https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300;400&display=swap');

        body {
            background: #dcdcdc;
            padding-top: 80px;
        }

       .form-container {
            padding: 30px;
            position: absolute;
            left: 0;
            top: 60px;
            max-width: 1000px; /* Adjust the max-width as needed */
            width: 100%; /* Ensure the form takes up the full width of its container */
            margin: 0 auto; /* Center the form horizontally */
        }

        .form-check-inline .form-check-input {
            margin-right: 10px;
        }

        .Per-Det p,
        .Pro-Det p {
            display: inline-block;
            margin-right: 10px;
        }
    </style>
</head>
<body>
<!-- Navbar/Banner -->
<%@include file="navbar2.jsp" %>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <form class="form-container">
                <h3>Sell or Rent your Property</h3>
                <h5>You are posting this property for <span>Free</span></h5>
                <br>
                <!-- Personal Details -->
                <h6>Personal Details</h6>
                <div class="Per-Det">
                    <p>I am</p>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="ownerType" id="ownerRadio" value="owner">
                        <label class="form-check-label" for="ownerRadio">Owner</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="ownerType" id="agentRadio" value="agent" checked>
                        <label class="form-check-label" for="agentRadio">Agent</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="ownerType" id="builderRadio" value="builder">
                        <label class="form-check-label" for="builderRadio">Builder</label>
                    </div>
                    <input type="text" name="username" class="input-field form-control mb-2" placeholder="Enter your Name" required>
                    <input type="text" name="mobileno" class="input-field form-control mb-2" placeholder="Mobile Number" required>
                    <input type="email" name="email" class="input-field form-control mb-2" placeholder="Email" required>
                </div>
                <br>
                <!-- Property Details -->
                <h6>Property Details</h6>
                <div class="Pro-Det">
                    <p>For</p>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="propertyType" id="saleRadio" value="sale">
                        <label class="form-check-label" for="saleRadio">Sale</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="propertyType" id="rentRadio" value="rent" checked>
                        <label class="form-check-label" for="rentRadio">Rent/ Lease</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="propertyType" id="pgRadio" value="pg">
                        <label class="form-check-label" for="pgRadio">PG/Hostel</label>
                    </div>
                    <!-- Dropdown for property type -->
                    <div class="dropdown mt-3">
                        <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="propertyTypeDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            Select Property type
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="propertyTypeDropdown">
                            <li><a class="dropdown-item" href="#">Flat/Apartment</a></li>
                            <li><a class="dropdown-item" href="#">Full House</a></li>
                            <li><a class="dropdown-item" href="#">Sharing Basis</a></li>
                        </ul>
                    </div>
                </div>
                <br>
                <!-- Property Location -->
                <h6>Property Location</h6>  
                <div class="Pro-Loc">
                    <input type="text" name="city" class="input-field" placeholder="Enter City" required>
                    <input type="text" name="locality" class="input-field" placeholder="Enter Locality" required>
                </div>
                <br>    
                <!-- Property Features -->
                <h6>Property Features</h6>  
                <div class="Pro-Fea">
                    <p>Rooms</p>
                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <button type="button" class="btn btn-outline-secondary">1</button>
                        <button type="button" class="btn btn-outline-secondary">2</button>
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                2+
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">3</a></li>
                                <li><a class="dropdown-item" href="#">4</a></li>
                                <li><a class="dropdown-item" href="#">5</a></li>
                                <li><a class="dropdown-item" href="#">6</a></li>
                            </ul>
                        </div>
                    </div>

                    <p>Balconies</p>
                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <button type="button" class="btn btn-outline-secondary">0</button>    
                        <button type="button" class="btn btn-outline-secondary">1</button>
                        <button type="button" class="btn btn-outline-secondary">2</button>
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                2+
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">3</a></li>
                                <li><a class="dropdown-item" href="#">4</a></li>
                                <li><a class="dropdown-item" href="#">5</a></li>
                                <li><a class="dropdown-item" href="#">6</a></li>
                            </ul>
                        </div>
                    </div>

                    <p>Floor No.</p>
                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <button type="button" class="btn btn-outline-secondary">Lower Basement</button>    
                        <button type="button" class="btn btn-outline-secondary">Upper Basement</button>
                        <button type="button" class="btn btn-outline-secondary">Ground</button>
                        <button type="button" class="btn btn-outline-secondary">1</button>    
                        <button type="button" class="btn btn-outline-secondary">2</button>
                        <button type="button" class="btn btn-outline-secondary">3</button>
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                3+
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">4</a></li>
                                <li><a class="dropdown-item" href="#">5</a></li>
                                <li><a class="dropdown-item" href="#">6</a></li>
                                <li><a class="dropdown-item" href="#">7</a></li>
                            </ul>
                        </div>
                    </div>
                    
                     <p>Total Floors</p>
                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <button type="button" class="btn btn-outline-secondary">1</button>    
                        <button type="button" class="btn btn-outline-secondary">2</button>
                        <button type="button" class="btn btn-outline-secondary">3</button>
                        <button type="button" class="btn btn-outline-secondary">4</button>    
                        <button type="button" class="btn btn-outline-secondary">5</button>
                        <button type="button" class="btn btn-outline-secondary">6</button>
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                6+
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">7</a></li>
                                <li><a class="dropdown-item" href="#">8</a></li>
                                <li><a class="dropdown-item" href="#">9</a></li>
                                <li><a class="dropdown-item" href="#">10</a></li>
                            </ul>
                        </div>
                    </div>
                    
      <p>Furnished Status</p>
                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <button type="button" class="btn btn-outline-secondary">Furnished</button>    
                        <button type="button" class="btn btn-outline-secondary">Unfurnished</button>
                        <button type="button" class="btn btn-outline-secondary">Semi-Furnished</button>
                        </div>               
              
               <p>Bathrooms</p>
                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <button type="button" class="btn btn-outline-secondary">1</button>
                        <button type="button" class="btn btn-outline-secondary">2</button>
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                2+
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">3</a></li>
                                <li><a class="dropdown-item" href="#">4</a></li>
                                <li><a class="dropdown-item" href="#">5</a></li>
                                <li><a class="dropdown-item" href="#">6</a></li>
                            </ul>
                        </div>
                    </div>      
                    
                 <p>How old is the PG</p>    
                    <div class="dropdown mt-3">
                        <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="propertyTypeDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            Select 
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="propertyTypeDropdown">
                            <li><a class="dropdown-item" href="#">1 year</a></li>
                            <li><a class="dropdown-item" href="#">2 years</a></li>
                            <li><a class="dropdown-item" href="#">3 years</a></li>
                             <li><a class="dropdown-item" href="#">4 years</a></li>
                            <li><a class="dropdown-item" href="#">4+ years</a></li>
                        </ul>
                    </div>
                    
               <p>Tenants You Prefer</p>    
                    <div class="dropdown mt-3">
                        <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="propertyTypeDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            Select 
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="propertyTypeDropdown">
                            <li><a class="dropdown-item" href="#">Professionals</a></li>
                            <li><a class="dropdown-item" href="#">Student</a></li>
                            <li><a class="dropdown-item" href="#">Both</a></li>
                        </ul>
                    </div>     
                    
                        <p>No. of Rooms in PG</p>    
                    <div class="dropdown mt-3">
                        <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="propertyTypeDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            Select 
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="propertyTypeDropdown">
                            <li><a class="dropdown-item" href="#">1</a></li>
                            <li><a class="dropdown-item" href="#">2</a></li>
                            <li><a class="dropdown-item" href="#">3</a></li>
                            <li><a class="dropdown-item" href="#">4</a></li>
                            <li><a class="dropdown-item" href="#">5</a></li>
                            <li><a class="dropdown-item" href="#">6</a></li>
                            <li><a class="dropdown-item" href="#">7</a></li>
                            <li><a class="dropdown-item" href="#">8</a></li>
                            <li><a class="dropdown-item" href="#">8+</a></li>
                        </ul>
                    </div>                                   
                </div>
                
                  <br>    
                <!-- Furnishing Details -->
                <h6>Furnishing Details</h6>
                <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
  <input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btncheck1">Cupboards</label>

  <input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btncheck2">Study Table</label>

<input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btncheck3">AC</label>
  
  <input type="checkbox" class="btn-check" id="btncheck4" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btncheck4">Geyser</label>
  
  <input type="checkbox" class="btn-check" id="btncheck5" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btncheck5">Washing Machine</label>
  
  <input type="checkbox" class="btn-check" id="btncheck6" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btncheck6">Fridge</label>
  
  <input type="checkbox" class="btn-check" id="btncheck7" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btncheck7">Cooler</label>
  
  <input type="checkbox" class="btn-check" id="btncheck8" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btncheck8">TV</label>

  <input type="checkbox" class="btn-check" id="btncheck9" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btncheck9">WiFi</label>
</div>
 <br>  
                <!--Price Details -->
                <h6>Price Details</h6>
                <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
  					<p>Expected Price</p>	
  					 <input type="text" name="username" class="input-field form-control mb-2" placeholder="Enter Total Price" required>
  				</div>

            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>