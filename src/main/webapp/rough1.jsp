<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get Browser Screen Size</title>
    
</head>
<body>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Your code here
        var screenWidth = window.innerWidth;
        var screenHeight = window.innerHeight;

        console.log("Browser screen width: " + screenWidth);
        console.log("Browser screen height: " + screenHeight);
    });
</script>

</body>
</html>
