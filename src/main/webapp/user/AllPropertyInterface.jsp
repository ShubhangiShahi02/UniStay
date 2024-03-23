<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Property Details</title>
</head>
<body>
    <h2>Add Property Details</h2>
    <form action="AddPropertyServlet" method="post">
        <label>Email:</label><br>
        <input type="email" name="email" required><br>
        <label>Property Name:</label><br>
        <input type="text" name="property_name" required><br>
        <label>Property Description:</label><br>
        <input type="text" name="property_desc" required><br>
        <label>Property Type:</label><br>
        <input type="text" name="property_type" required><br>
        <label>Location:</label><br>
        <input type="text" name="location" required><br>
        <label>Price:</label><br>
        <input type="number" name="price" required><br>
        <label>Upload Date:</label><br>
        <input type="date" name="upload_date" required><br>
        <label>Status:</label><br>
        <select name="status">
            <option value="Available">Available</option>
            <option value="Rented">Rented</option>
        </select><br>
        <label>Image URL:</label><br>
        <input type="url" name="image_url"><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
