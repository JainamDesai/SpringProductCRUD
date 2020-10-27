<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="./base.jsp"  %> 
<title>Insert title here</title>
</head>
<body style="background: rgba(178,75,280, 0.3)">
<h1 style="text-align:center" class="mb-4">Welcome In Product App</h1>
<div class="container">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Product Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Produc Description</th>
      <th scope="col">Product Price</th>
      <th scope="col">Product Delete</th>
      <th scope="col">Product Update</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${product}" var="p">
    <tr>
      <th scope="row">${p.pid}</th>
      <td>${p.product_name}</td>
      <td>${p.product_desc}</td>
      <td>&#8360 ${p.price}</td>
      <td><a href="deleteProduct/${p.pid}">Delete Product</a></td>
      <td><a href="updateProduct/${p.pid}">Update Product</a></td>
    </tr>
   </c:forEach> 
  </tbody>
</table>
<div class="container text-center">
<a href="addProductForm" class="btn btn-primary">Add Product</a>
</div>
</div>
</body>
</html>