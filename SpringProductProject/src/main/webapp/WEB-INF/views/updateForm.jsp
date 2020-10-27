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
<div class="container mt-5">
<div class="jumbotron">
<h1><b>Product Updated Form:-</b></h1>
</div>
<form action="${pageContext.request.contextPath}/handleSaveProduct" method="post">
 <div class="form-group">
    <label for="ProductName">Product Id</label>
    <input type="number" class="form-control" id="pid" name="pid" value="${product.pid}">
  </div>
  <div class="form-group">
    <label for="ProductName">Product Name</label>
    <input type="text" class="form-control" id="ProductName" name="product_name" value="${product.product_name}">
  </div>
  <div class="form-group">
    <label for="description">Product Description</label>
    <textarea type="text" class="form-control" id="description" name="product_desc"  cols="10" rows="10">
    ${product.product_desc}
    </textarea>
  </div>
    <div class="form-group">
    <label for="ProductName">Product Price</label>
    <input type="number" class="form-control" id="price" name="price" value="${product.price}">
  </div>
  <div class="text-center mb-4">
  <a href="${pageContext.request.contextPath}/" class="btn btn-primary">Back</a>
  <button type="submit" class="btn btn-primary">Submit Product</button>
  </div>
</form>
</div>
</body>
</html>