<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.zumbamanagement.model.Participant" %>
<%@ page import="java.util.List" %>
	

<html>
<head>
<title>Participant Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> User Management Application </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Participants</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				
				
				
				
		<form action="<%= request.getContextPath() %>/insert" method="post">
					
					<% 
   				 Participant participant = (Participant) request.getAttribute("participant");
    				if (participant != null) {
					%>
    				<form action="update" method="post">
					<% } %>
				


				<caption>
					<h2>
					<%  
    				if (participant != null) { %>
            			Edit Participant 
            		 <% } %>
					</h2>
				</caption>

		
				<fieldset class="form-group">
					<label>Participant ID</label> <input type="number" value="${participant.cid}" class="form-control" name="cid">
				</fieldset>
				<fieldset class="form-group">
					<label>Participant First Name</label> <input type="text" value="${participant.firstname}" class="form-control" name="firstname">
				</fieldset>
				<fieldset class="form-group">
					<label>Participant Last Name</label> <input type="text" value="${participant.lastname}" class="form-control" name="firstname">
				</fieldset>

				<fieldset class="form-group">
					<label>Participant Email</label> <input type="text" value="${participant.email}" class="form-control" name="firstname">
				</fieldset>

				<fieldset class="form-group">
					<label>Participant Phone</label> <input type="text" value="${participant.phone}" class="form-control" name="firstname">
				</fieldset>
				<fieldset class="form-group">
					<label>Participant Batch</label> <input type="text" value="${participant.batch}" class="form-control" name="firstname">
				</fieldset>
				<fieldset class="form-group">
					<label>PCODE</label> <input type="text" value="${participant.pcode}" class="form-control" name="firstname">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>