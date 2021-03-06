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
        <th>supplierId</th>
        <th>supplierName</th>
        <th>contactNumber</th>
      </tr>
    </thead>
    <tbody>
       <c:forEach items="${supplierList}" var="supplier" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${supplier.supplierId}</td>
			<td>${supplier.supplierName}</td>
			<td>${supplier.contactNumber}</td>
			<td><a href="">Edit</a></td>
			<td><a href="editsupplier?supplierId=${supplier.supplierId}">Edit</a></td>
			<td><a href="deletesupplier?supplierId=${supplier.supplierId}" onclick="">Delete</a></td>
		</tr>
	</c:forEach>
	    </tbody>
  </table>
</div>


</body>
</html>