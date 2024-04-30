<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Photos Form</title>
    <!-- Custom CSS -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet"  href="style.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300;400&display=swap');
  
    body {
      background-color: #f2f2f2; /* Set background color to grey */
      display: flex;
      flex-direction: column;
      min-height: 100vh; /* Set minimum height to 100% of the viewport height */
    }

     .form-container {
      max-width: 400px;
      margin: 0 auto;
      text-align: left; /* Align the form to the left */
      background-color: #fff; /* Set form background color to white */
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
    }


    .form-group {
      margin-bottom: 20px;
      text-align: center; /* Center align the content within this group */
    }

    .form-group label {
      display: block;
      margin-bottom: 5px;
    }

    .form-group input[type="file"] {
      border: 1px solid #ffd300;
      padding: 10px;
      width: 100%;
      box-sizing: border-box;
    }

    .form-group input[type="submit"] {
      background-color: #FFD300; /* Change the background color to yellow */
      color: #000; /* Change text color to black */
      border: none;
      padding: 10px 20px;
      cursor: pointer;
      font-size: 16px;
      display: inline-block; /* Ensure the button respects its width */
    }

    .form-group input[type="submit"]:hover {
      background-color: #ffd300; /* Lighter yellow on hover */
    }

    .preview {
      margin-top: 20px;
    }

    .preview img {
      max-width: 100%;
      margin-bottom: 10px;
      display: block;
    }

    .add-more {
      color: #ffd300;
      cursor: pointer;
    }

    /* Styles for the centered and larger h4 */
    h4 {
      text-align: center; /* Center align */
      font-size: 24px; /* Larger font size */
    }
    
    /* Footer styles */
    footer {
      background-color: #343a40; /* Set footer background color */
      color: #fff; /* Set footer text color to white */
      padding: 10px 0; /* Add padding to top and bottom */
      margin-top: auto; /* Push the footer to the bottom */
      text-align: center; /* Center align the content */
    }
  </style>
</head>
<body>
<!--Photos-->
<h4>Upload Property Photos</h4> <!-- Updated to center align and larger font size -->
               
<div class="form-container">
  <form action="#" method="post" enctype="multipart/form-data" id="photoForm">
    <div class="form-group">
      <label for="photos">Select Photos:</label>
      <input type="file" id="photos" name="photos[]" accept="image/*" onchange="previewImages()">
    </div>
    <div class="form-group" id="additionalPhotos"></div>
    <div class="form-group">
      <span class="add-more" onclick="addMorePhotos()">Add More Photos</span>
    </div>
    <div class="form-group">
      <button type="submit" class="btn btn-warning">
  <a href="Home.jsp" style="text-decoration: none; color: black;">Post</a>
</button>
    </div>
  </form>

  <div class="preview" id="imagePreview"></div>
</div>


<!-- footer -->
<footer class="bg-dark p-2 text-center">
  <div class="container">
    <p class="text-white">
      Copyright: &copy; All rights reserved by:
      <a href="#" style="text-decoration: none">
        <strong class="text-warning">UniStay</strong>
      </a>
    </p>
  </div>
</footer> 

<script>
  function previewImages() {
    var preview = document.getElementById('imagePreview');
    var files = document.querySelectorAll('input[type=file]');

    preview.innerHTML = '';

    function readAndPreview(file) {
      if (/\.(jpe?g|png|gif)$/i.test(file.name)) {
        var reader = new FileReader();

        reader.onloadend = function () {
          var img = document.createElement('img');
          img.src = reader.result;
          preview.appendChild(img);
        }

        reader.readAsDataURL(file);
      } else {
        var para = document.createElement('p');
        para.textContent = 'File type not supported: ' + file.name;
        preview.appendChild(para);
      }
    }

    if (files) {
      [].forEach.call(files, function (fileInput) {
        if (fileInput.files) {
          [].forEach.call(fileInput.files, readAndPreview);
        }
      });
    }
  }

  function addMorePhotos() {
    var additionalPhotosContainer = document.getElementById('additionalPhotos');
    var currentPhotoInputs = additionalPhotosContainer.querySelectorAll('input[type="file"]');
    
    // Check if there are already three input elements
    if (currentPhotoInputs.length < 3) {
      var newInput = document.createElement('input');
      newInput.type = 'file';
      newInput.name = 'photos[]';
      newInput.accept = 'image/*';
      newInput.onchange = previewImages;
      additionalPhotosContainer.appendChild(newInput);
    } else {
      alert("You can only add four photos.");
    }
  }

</script>


 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
