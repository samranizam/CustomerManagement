<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Customer List</title>
<style>h2 {text-align: center;

  color: black;
  font-family: verdana;
  font-size: 200%;
   background-color: #d8bfd8;
   
}
body{
  background-color: #e6e6fa ;
}
button {
background-color:#d8bfd8 ; 
color: black; 
  border: 5px solid #008CBA;

}
button:hover {
  background-color: #008CBA;
  color: white;
}
thead{
background-color:#d8bfd8 ;
}
</style>
</head>
<body>
<h2>CUSTOMER DETAILS</h2>
<button onclick = "window.location.href='/customer/form';">Add Customer</button>
<br>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name of Customer</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Permanent Address</th>
      <th scope="col">Delete the record</th>
      <th scope="col">Edit the record</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${mycustomer}" var="e">
				<tr>
					<td>${e.id}</td>
					<td>${e.name}</td>
					<td>${e.phone}</td>
					<td>${e.address}</td>
					<td style="color:red;"><a style="color:red;" href = "/customer/delete/${e.id}">Delete</td>
					<td style="color:blue;"><a style="color:green;" href = "/customer/edit?id=${e.id}">Edit</td>
				</tr>
				</c:forEach>
  </tbody>
</table>
	
</body>
</html>
