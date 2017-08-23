<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Bags Carts </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">category type<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="renault">Renault</a></li>
          <li><a href="#">MaruthiSuzuki</a></li>
          <li><a href="#">Tata</a></li>
        </ul>
      </li>
      <li><a href="renault">about us</a></li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">category<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="category">ADD</a></li>
          <li><a href="viewcategory">VIEW</a></li>
        </ul>
      </li>
     </ul>
     <ul class="nav navbar-nav navbar-right">
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">USER<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="user">ADD</a></li>
          <li><a href="viewuser">VIEW</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCT<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="product">ADD</a></li>
          <li><a href="viewproduct">VIEW</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SUPPLIER<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="supplier">ADD</a></li>
          <li><a href="viewsupplier">VIEW</a></li>
        </ul>
      </li>
      <li><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Search</button>
    </form>
  </div>
</nav> 
</body>
