<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Comment</title>
<%@include file="../component/allcss.jsp" %>
	<style type="text/css">
	
		.paint-card{
	box-shadow: 0 0 8px 0 rgba(0,0,0,0.3);
}
		.back{
		
		background: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url("../img/hos2.jpg");
	height: 30vh;
	width:100%;
	background-size: cover;
	background-repeat: no-repeat;
		}
	
	}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid back p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<c:if test="${empty doctObj}">
		<c:redirect url="../doctor_login.jsp">
		</c:redirect>
	</c:if>
	
	
	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
			<div class="card paint-card">
			<div class="card-body">
			<p class="text-center fs-4">Patient Comment</p>
						<form action="comment" class="row" method="post">
							<div class="col-md-6">
								<label>Patient Name</label><input type="text" readonly value=""
									class="form-control">
							</div>
							<div class="col-md-6">
								<label>Age</label><input type="text" readonly value=""
									class="form-control">
							</div>
							<div class="col-md-6">
								<label>Mob No</label><input type="text" readonly value=""
									class="form-control">
							</div>
							<div class="col-md-6">
								<label>Diseases</label><input type="text" readonly value=""
									class="form-control">
							</div>
							<div class="col-md-12">
								<label>Comment</label><textarea required name="comm" class="form-control" row="3" cols=""></textarea>
							</div>
							<input type="hidden" name="id" value=""><input type="hidden" name="did" value="">
							<button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
							
						</form>
					</div>
			</div>
			</div>
		</div>
	</div>

</body>
</html>