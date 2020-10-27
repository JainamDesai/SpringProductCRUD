<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="./base.jsp"  %>
<title>Add Product Form</title>
</head>
<body style="background: rgba(178,75,280, 0.3)">
<div class="container mt-5">
<div class="jumbotron">
<h1><b>Product Registration Form:-</b></h1>
</div>
<form action="handleSaveProduct" method="post">
  <div class="form-group">
    <label for="ProductName">Product Name</label>
    <input type="text" class="form-control" id="ProductName" name="product_name"  placeholder="Enter Product Name.........">
  </div>
  <div class="form-group">
    <label for="description">Product Description</label>
    <textarea type="text" class="form-control" id="description" name="product_desc" placeholder="Enter Product Description......." cols="10" rows="10">
    </textarea>
  </div>
    <div class="form-group">
    <label for="ProductName">Product Price</label>
    <input type="number" class="form-control" id="price" name="price" aria-describedby="emailHelp" placeholder="Enter Product Price........">
  </div>
  <div class="text-center mb-4">
  <a href="${pageContext.request.contextPath}/" class="btn btn-primary">Back</a>
  <button type="submit" class="btn btn-primary">Submit Product</button>
  </div>
</form>
</div>
</body>
</html>