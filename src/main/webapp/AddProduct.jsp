<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Product</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
  /* Form Controls */
.form-control {
  border-radius: 10px; /* Increased border radius */
  border-color: black; /* Changed border color to black */
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Added a soft box shadow */
}

/* Submit Button Styling */
.btn-primary {
  background-color: #007bff; /* Blue background */
  border-color: #007bff; /* Blue border */
  border-radius: 10px; /* Increased border radius */
  transition: all 0.3s ease; /* Smooth transition */
}

.btn-primary:hover {
  background-color: #0056b3; /* Darker blue on hover */
  border-color: #0056b3;
}

/* Form Title */
h2 {
  color: black; /* Black color */
  text-align: center; /* Centered text */
}

/* Form Container */
.container {
  max-width: 1000px; /* Limiting form width */
  padding: 30px; /* Increased padding */
  border-radius: 15px; /* Increased border radius */
  border: 1px solid black; /* Changed border color to black */
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); /* Increased box shadow */
}

/* Form Labels */
label {
  font-weight: bold; /* Bold font weight */
  color: black; /* Changed color to black */
}

.custom-file-upload {
  border: 1px solid black; /* Changed border color to black */
  display: inline-block;
  padding: 6px 12px;
  cursor: pointer;
  border-radius: 10px; /* Increased border radius */
  background-color: #f9f9f9;
}

</style>

</head>
<body>
  <div class="container mt-5">
    <h2 class="mb-4">Add Product</h2>
    <form action="Home" method="POST" >
      <div class="form-group row">
        <label for="productName" class="col-sm-2 col-form-label">Product Name:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control"  name="productName" >
        </div>
      </div>
      <div class="form-group row">
        <label for="productCategory" class="col-sm-2 col-form-label">Product Category:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control"  name="productCategory" >
        </div>
      </div>
      <div class="form-group row">
        <label for="productModel" class="col-sm-2 col-form-label">Product Model:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control"  name="productModel" >
        </div>
      </div>
      <div class="form-group row">
        <label for="price" class="col-sm-2 col-form-label">Price:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control"  name="price" >
        </div> h
      </div>
      <div class="form-group row">
        <label for="productDescription" class="col-sm-2 col-form-label">Product Description:</label>
        <div class="col-sm-10">
          <textarea class="form-control"  name="productDescription" rows="5" ></textarea>
        </div>
      </div>
      <div class="form-group row">
        <label for="productImage" class="col-sm-2 col-form-label">Product Image:</label>
        <div class="col-sm-10">
         <!--  <input type="file" class="form-control-file" id="productImage" name="productImage" required> -->
        </div>
      </div>
      <div class="form-group row">
        <div class="col-sm-10 offset-sm-2">
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
      </div>
    </form>
  </div>

  <!-- Bootstrap JS (optional, only if you need JS functionalities) -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>