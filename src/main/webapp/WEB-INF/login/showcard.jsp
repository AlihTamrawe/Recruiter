
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/card.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Show Card</title>
</head>
<body >

<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand mar">FreeHire</a>
<div>
<a href="/" class="navbar-brand fs-6">About us</a>
<a href="/projects/new" class="navbar-brand fs-6">Are you hiring?</a>
<a href="/team" class="navbar-brand fs-6">Are you looking for a job?</a>
<a href="/jobs/dashboard" class="navbar-brand fs-6">Available jobs</a>
<a href="/create/company" class="navbar-brand fs-6">Create Company</a>

<a href="/logout" class="navbar-brand fs-6">logout</a>


</div>
</nav>

<div class="rightbutton">
<a href="/home" type="button" class="btn btn-outline-primary">Back</a>

</div>
   
<div class="d-flex justify-content-center  ">

<div class="d-flex justify-content-center card   m-5 w-50 p-3 shadow p-3 mb-5 bg-body rounded" >
  <div class="card-body">
    <h5 class="card-title">Name :<c:out value="${user.firstName}"></c:out><c:out value="${user.lastName}"></c:out></h5>
    <p class="card-text">National  <c:out value="${user.nationalId}"></c:out> </p>

    <p class="card-text">Email:<c:out value="${user.email}"></c:out> </p>

    <a href="#" class="btn btn-warning">Contact </a>
  </div>
</div>
  
</div>
</body>
</html>