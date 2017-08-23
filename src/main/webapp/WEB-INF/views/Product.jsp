<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="newProduct" class="form-horizontal" method="post" >
<fieldset>

<!-- Form Name -->
<legend>PRODUCT</legend>

<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRODUCT NAME</label>
  <div class="col-md-4">
    <input type="text" id="product_id" name="productId" class="form-control" value="${product.productId}">
    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRODUCT NAME</label>
  <div class="col-md-4">
    <input type="text" id="product_name_fr" name="productName" class="form-control" value="${product.productName}">
    
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name">STOCK</label>
  <div class="col-md-4">
    <input type="text" id="product_name" name="stock" class="form-control" value="${product.stock}">
    </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRICE</label>
  <div class="col-md-4">
    <input type="text" id="product_name_fr" name="price" class="form-control" value="${product.price}">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="product">Category</label>
  <div class="col-md-4">
   <input type="text" id="product_name_fr" name="category" class="form-control" value="${product.category}">
  </div>
 </div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">SUPPLIER NAME</label>
  <div class="col-md-4">
    <input type="text" id="product_name_fr" name="supplierName" class="form-control" value="${product.supplierName}">
    
  </div>
</div>
<!-- File Button --> 
<!-- <div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">upload file</label>
  <div class="col-md-4">
    <input id="filebutton" name="image" class="input-file" type="file">
  </div>
</div> -->
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for=""></label>
  <div class="col-md-4">
    <button type="submit" name="" class="btn btn-primary">Submit</button>
  </div>
</div>

</fieldset>
</form>


</body>
</html>