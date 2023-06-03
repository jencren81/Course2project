<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				
				
				
				
					<form action="<%= request.getContextPath() %>/insert" method="post">
	

				<caption>
					<h2>
					
            			Add New Participant
            		
					</h2>
				</caption>

		
				
				<fieldset class="form-group">
					<label>Participant First Name</label> <input type="text"
						name="firstname" class="form-control"
						 required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Participant Last Name</label> <input type="text"
						name="lastname"  class="form-control"
						 required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Participant Email</label> <input type="text"
						name="email"  class="form-control">
				</fieldset>

				<fieldset class="form-group">
					<label>Participant phone</label> <input type="text"
						name="phone"  class="form-control">
				</fieldset>
				<fieldset class="form-group">
					<label>Participant Batch</label> <input type="text"
						name="batch" class="form-control">
				</fieldset>
				<fieldset class="form-group">
					<label>PCODE</label> <input type="text"
						name="pcode" class="form-control">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>