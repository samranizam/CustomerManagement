<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" 
integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<style>
h2 {
text-align: center;
  color: black;
  font-family: verdana;
  font-size: 200%;
   background-color: #d8bfd8;
}
body{
  background-color: #e6e6fa;
}
</style>
</head>
<body>
<h2>Please Enter Customer Details</h2>
<br>
<form method = "post">
  <div class="form-group">
    <label for="name">Full Name</label>
    <input type="text" class="form-control" name = "name" id="name" >
  </div>
  <div class="form-group">
    <label for="phone">Phone Number</label>
    <input type="text" class="form-control" name = "phone" id="phone">
  </div>
  <div class="form-group">
    <label for="address">Permanent Address</label>
    <input type="text" class="form-control" name = "address" id="address">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit Details</button>
</form>
</body>
</html>