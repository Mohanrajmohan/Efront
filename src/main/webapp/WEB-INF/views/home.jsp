<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>bags cart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="navbar.jsp" %>

   <c:choose>
         
<c:when test="${isUserClickedProduct == 'true' }">
<%@ include file="Product.jsp" %>
</c:when>
<c:when test="${isUserClickedViewProduct == 'true' }">
<%@ include file="viewProduct.jsp" %>
</c:when>
<c:when test="${isUserClickedCategory == 'true' }">
<%@ include file="Category.jsp" %>
</c:when>
<c:when test="${isUserClickedViewCategory == 'true' }">
<%@ include file="viewCategory.jsp" %>
</c:when>
<c:when test="${isUserClickedsupplier== 'true' }">
<%@ include file="supplier.jsp" %>
</c:when>
<c:when test="${isUserClickedViewSupplier == 'true' }">
<%@ include file="viewsuppiler.jsp" %>
</c:when>

<c:when test="${isUserClickedUser == 'true' }">
<%@ include file="User.jsp" %>
</c:when>
<c:when test="${isUserClickedViewUser == 'true' }">
<%@ include file="viewUser.jsp" %>
</c:when>


</c:choose>

</body>
</html>