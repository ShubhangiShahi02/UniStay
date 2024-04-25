<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Photos Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }

    .form-container {
      max-width: 400px;
      margin: 0 auto;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      margin-bottom: 5px;
    }

    .form-group input[type="file"] {
      border: 1px solid #ccc;
      padding: 10px;
      width: 100%;
      box-sizing: border-box;
    }

    .form-group input[type="submit"] {
      background-color: #007bff;
      color: #fff;
      border: none;
      padding: 10px 20px;
      cursor: pointer;
      font-size: 16px;
    }

    .form-group input[type="submit"]:hover {
      background-color: #0056b3;
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
      color: #007bff;
      cursor: pointer;
    }
  </style>
</head>
<body>
<!--Photos-->
                <h4>Photos</h4>
               
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
      <input type="submit" value="Upload Photos">
    </div>
  </form>

  <div class="preview" id="imagePreview"></div>
</div>

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

</body>
</html>
