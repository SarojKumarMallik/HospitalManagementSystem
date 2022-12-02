<%@page import="com.dao.DoctorDao" %>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.db.DBConnect" %>
<%@page import="java.util.*" %>
<%@page import="com.entity.Specalist" %>
<%@page import="com.entity.Doctor" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit_Profile</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
	.paint-card{
	box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
	}
</style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<c:if test="${empty doctObj}">
	<c:redirect url="../doctor_login.jsp">
	
	</c:redirect>
	</c:if>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					
						<p class="fs-3 text-center">Change Password</p>
						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<div class="card-body">
							<form action="../doctChangePassword" method="post">
								<div class="mb-3">
									<label>Enter New Password</label> <input type="text"
										name="newPassword" class="form-control" required>
								</div>

								<div class="mb-3">
									<label>Enter Old Password</label> <input type="text"
										name="oldPassword" class="form-control" required>
								</div>
								<input type="hidden" value="${doctObj.id}" name="uid">
								<button class="btn btn-success col-md-12">Change
									Password</button>
							</form>
						</div>
					</div>
				
			</div>
			<div class="col-md-7 offset-md-2">
				<div class="card paint-card">
					<p class="text-center fs-3">Edit Profile</p>
					<c:if test="${not empty sucMsg}">
						<p class="text-center text-success fs-3">${sucMsg}</p>
						<c:remove var="sucMsg" scope="session" />
					</c:if>

					<c:if test="${not empty errorMsg }">
						<p class="text-center text-danger fs-5">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<div class="card-body">
						<form action="../doctorUpdateProfile" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control"
									value="${doctObj.fullName}">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" class="form-control"
									value="${doctObj.dob }">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" required name="qualification" type="text"
									class="form-control" value="${doctObj.qualification}">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control"">
									<option>${doctObj.specialist }</option>
									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specalist> list = dao.getAllSpecialist();
									for (Specalist s : list) {
									%>

									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>
								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									readonly required name="email" class="form-control"
									value="${doctObj.email}">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									required name="mobno" class="form-control"
									value="${doctObj.mobno}">
							</div>

							<input type="hidden" name="" value="${doctObj.id}">
							<button type="submit" class="btn btn-primary">Update</button>
						</form>

					</div>
				</div>

			</div>

		</div>
	</div>
	
</body>
</html>