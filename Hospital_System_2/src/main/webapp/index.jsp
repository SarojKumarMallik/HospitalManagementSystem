<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import ="java.sql.Connection"  %>
<%@page import="com.db.DBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@ include file="component/allcss.jsp"%>

<style type="text/css">
	.paint-card{
	box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
	}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/doctor 1.jpg" class="d-block w-100" alt="..." height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/doctor 2.jpg" class="d-block w-100" alt="..." height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/doct3.jpg" class="d-block w-100" alt="..." height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="container p-3">
		<p class="text-center fs-2">Key Features of Our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Lorem ipsum sit amet,consectetur adipisicing elit.
									voluptatem inventore</p>
							</div>
						</div>

					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class=fs-5>Clean Enviroment</p>
								<p>Lorem ipsum sit amet,consectetur adipisicing elit.
									voluptatem inventore</p>

							</div>
						</div>
					</div>
					
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class=fs-5>Friendly Doctors</p>
								<p>Lorem ipsum sit amet,consectetur adipisicing elit.
									voluptatem inventore</p>

							</div>
						</div>
					</div>
					
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class=fs-5>Medical Research</p>
								<p>Lorem ipsum sit amet,consectetur adipisicing elit.
									voluptatem inventore</p>

							</div>
						</div>
					</div>
					
					
				</div>
			</div>
			<div class="col-md-4">
				<img alt="" src="img/doct1.png">
			</div>
		</div>
	</div>
	<hr>
	<div class="container p-2">
	<p class="text-center fs-2">Our Team</p>
	<div class="row">
		<div class="col-md-3">
		<div class="card paint-card">
			<div class="card-body text-center">
			<img alt="" src="img/doct4.png" width="250px" height="300px">
			<p class="fw-bold fs-5">Saroj Kumar Mallik</p>
			<p class="fs-7">(CEO & Chairman)</p>
			</div>
		</div>
		</div>
		
		<div class="col-md-3">
		<div class="card paint-card">
			<div class="card-body text-center">
			<img alt="" src="img/doct3.png" width="250px" height="300px">
			<p class="fw-bold fs-5">Dr. Siva Kumar</p>
			<p class="fs-7">(Chief Doctor)</p>
			</div>
		</div>
		</div>
		
		<div class="col-md-3">
		<div class="card paint-card">
			<div class="card-body text-center">
			<img alt="" src="img/doct2.png" width="250px" height="300px">
			<p class="fw-bold fs-5">Dr. Nuise Paule</p>
			<p class="fs-7">(Chief Doctor)</p>
			</div>
		</div>
		</div>
		
		<div class="col-md-3">
		<div class="card paint-card">
			<div class="card-body text-center">
			<img alt="" src="img/doct5.png" width="250px" height="300px">
			<p class="fw-bold fs-5">Dr. Mathue Samuel</p>
			<p class="fs-7">(Chief Doctor)</p>
			</div>
		</div>
		</div>
		
		
		</div>
	</div>
	
	<%@include file="component/footer.jsp" %>
</body>
</html>