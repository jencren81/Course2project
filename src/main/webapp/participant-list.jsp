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
				<a href="https://www.xadmin.net" class="navbar-brand"> Participant
					Management Application </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Participants</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Participants</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New Participant</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Batch</th>
						<th>Pcode</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
			<button class="navbar navbar-expand-md navbar-dark"
			style="background-color: white">
			
					
					
            			<a href="select?batch=<%= request.getAttribute("participants") %>">View Participants by Batch</a>
            		
				</button>

				
						
				 <% for (Participant participant : (List<Participant>) request.getAttribute("listParticipants")) { %>
      <tr>
       	<td><%= participant.getCid() %></td>
        <td><%= participant.getFirstname() %></td>
        <td><%= participant.getLastname() %></td>
        <td><%= participant.getEmail() %></td>
        <td><%= participant.getPhone() %></td>
        <td><%= participant.getBatch() %></td>
        <td><%= participant.getPcode() %></td>
       
         <td>
     <a href="edit?pcode=${participant.pcode}">Edit</a>
   
      &nbsp;&nbsp;&nbsp;&nbsp;
     <a href="delete?pcode=${participant.pcode}">Delete</a>
    </td>
      </tr>
    <% } %>
  </tbody>
</table>	
		
		</div>
	</div>
</body>
</html>