<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Edit Details</title>
<style>h2 {text-align: center;

  color: black;
  font-family: verdana;
  font-size: 200%;
   background-color: #d8bfd8;
   
}
h6{text-align: right;

  color: black;
  font-style: italic;
  font-family: verdana;
  font-size: 60%;
   
   
}
body{
  background-color: #e6e6fa ;
}
</style>
</head>
<body>
<h2>Edit Details of Selected Customer</h2>
<br>

<form method = "post">
  <div class="form-group">
    <label for="id">USER ID NUMBER</label>
    <input type="text" class="form-control" name = "id" id="id" Placeholder = <%= request.getParameter("id") %> disabled >
  </div>
  <div class="form-group">
    <label for="name">Name of the Customer</label>
    <input type="text" class="form-control" name = "name" id="name" >
  </div>
  <div class="form-group">
    <label for="phone">Phone Number of the Customer</label>
    <input type="text" class="form-control" name = "phone" id="phone" >
  </div>
  <div class="form-group">
    <label for="address">Permanent Address of Customer</label>
    <input type="text" class="form-control" name = "address" id="address">
  </div>
  
  <button type="submit" class="btn btn-primary">Update</button>
</form>
<br>
<h6>NOTE- ID number is immutable, to change ID number please delete the record and create new customer</h6>
</body>
</html>