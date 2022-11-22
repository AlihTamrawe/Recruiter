<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>create a project</title>
<link rel="stylesheet" type="text/css" href="/css/card.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<style>
.transparent-bg{
	background: rgba(0, 0, 0, 0.5);
    color: white;
     border-radius: 25px;
   
   
}

.co{
background-color: coral;
}



</style>
<body>

<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand mar">FreeHire</a>
<div>
<a class="navbar-brand fs-6">Services</a>
<a class="navbar-brand fs-6">Are you hiring?</a>
<a class="navbar-brand fs-6">Are you looking for a job?</a>
<a class="navbar-brand fs-6">Available jobs</a>

</div>
</nav>


<div class=" d-flex justify-content-center " >
<div class=" d-flex justify-content-center w-50 m-5 p-3 " >


	    <form:form action="/jobs/create" method="POST" modelAttribute="service" class="container transparent-bg shadow-lg  p-5 flex-column ">

	    	<h2  class="form-group  text-center">Create A Job Post</h2>
	        <div  class="form-group  m-3 ">
	            <form:label path="location"><strong>Location:</strong></form:label>
	            <form:errors path="location"/>
	            <form:input type="text" path="location" class="form-control"/>
	        </div>

	        <div class="form-group  m-3" class="break"> 
	            <form:label path="description"><strong>Description:</strong></form:label>
	            <form:errors path="description"/>
	            <form:textarea path="description" rows="5" class="form-control"></form:textarea>
	        </div>
	        
	        <div  class="form-group  m-3" class="break">
	            <form:label path="startingDate"><strong>Starting Date:</strong></form:label>
	            <form:errors path="startingDate"/>
	            <form:input type="date" path="startingDate" class="form-control"/>
	        </div>
	         <div class="form-group  m-3" class="break">
	            <form:label path="finishingDate"><strong>Finishing Date:</strong></form:label>
	            <form:errors path="finishingDate"/>
	            <form:input type="date" path="finishingDate" class="form-control"/>
	        </div>
	        
	        <div  class="form-group  m-3" class="break">
	            <form:label path="specialization"><strong>Specialization:</strong></form:label>
	            <form:errors path="specialization"/>
	            <form:select path="specialization" id="specialization">
  					<option value="Plumber" class="form-control">Plumber</option>
  					<option value="Flooring Specialist" class="form-control">Flooring Specialist</option>
  					<option value="Electrician" class="form-control">Electrician</option>
  					<option value="auFlooring Specialistdi" class="form-control">Flooring Specialist</option>
				</form:select>
	        </div>
	        
	        <div  >
				<form:errors path="owner" class="error"/>
				<form:input type="hidden" path="owner" value="${user.id}"/>
			</div>
	        <input  type="submit" value="Submit" type="button" class="btn btn-primary btn-lg btn-block m-3">
	        
	    </form:form>
	    
</div>

</div>
</body>
</html>



