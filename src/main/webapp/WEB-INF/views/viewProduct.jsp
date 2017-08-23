<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2>Contextual Classes</h2>
  <p>Contextual classes can be used to color table rows or table cells. The classes that can be used are: .active, .success, .info, .warning, and .danger.</p>
  <table class="table">
    <thead>
      <tr>
        <th>productId</th>
        <th>productName</th>
        <th>produtDescription</th>
        <th>stock</th>
        <th>price</th>
        <th>category</th>
        <th>supplierName</th>
        <!-- <th>image</th> -->
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="product" varStatus="status">
  <tr>
    <td>${status.count}</td>
			<td>${product.productId}</td>
			<%-- <td> <img src="resources/${product.productId}.jpg" alt="${product.productId}" width=100px; height=100px;></td> --%>
			<td>${product.productName}</td>
			<td>${product.productDescription}</td>
			<td>${product.stock}</td>
			<td>${product.price}</td>
			<td>${product.category}</td>
			<td>${product.supplierName}</td>
			
			<td><a href="editproduct?ProductId=${product.productId}">Edit</a></td>
			<td><a href="deleteProduct?ProductId=${product.productId}" onclick="">Delete</a></td>
  </tr>
  </c:forEach>
  </tbody>
      </table>
</div>


</body>
</html>