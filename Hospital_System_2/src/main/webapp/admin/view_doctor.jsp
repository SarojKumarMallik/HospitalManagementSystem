<%@page import="com.dao.DoctorDao" %>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.db.DBConnect" %>
<%@page import="java.util.*" %>
<%@page import="com.entity.Specalist" %>
<%@page import="com.entity.Doctor" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="../component/allcss.jsp"%>
<style type="text/css">
	.paint-card{
	box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
	}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">

			
			<div class="col-md-12">
			<div class="card paint-card">
			<div class="card-body">
			
			<p class="fs-3 text-center">Doctor Details</p>
			<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucMsg}">
							<div class="text-center text-success fs-3" role="alert">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
			<table class="table">
				<thead>
				<tr>
					<th Scope="col">Full Name</th>
					<th Scope="col">DOB</th>
					<th Scope="col">Qualification</th>
					<th Scope="col">Specialist</th>
					<th Scope="col">Email</th>
					<th Scope="col">Mob No</th>
					<th Scope="col">Action</th>
				</tr>
				</thead>
				<tbody>
				 <%
					DoctorDao dao2=new DoctorDao(DBConnect.getConn());
				 List<Doctor> list1=dao2.getAllDoctor();
				 for(Doctor d:list1)
				  {%>
				 <tr>
				 <td><%= d.getFullName()%></td>
				 <td><%=d.getDob() %></td>
				 <td><%=d.getQualification() %></td>
				 <td><%=d.getSpecialist() %></td>
				 <td><%=d.getEmail() %></td>
				 <td><%=d.getMobno() %></td>
				 <td>
				 <a href="edit_doctor.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary ">Edit</a>
				 <a href="../deleteDoctor?id=<%=d.getId() %>" class="btn btn-sm btn-danger ">Delete</a>
				 </td>
				 
				 </tr>
				  
				<% }
				 %>
				
				</tbody>
			</table>
			
			</div>
			
			</div>
				
			
			</div>
		</div>

	</div>

</body>
</html>