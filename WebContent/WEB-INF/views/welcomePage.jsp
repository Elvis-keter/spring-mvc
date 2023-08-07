<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crud App</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body bg-secondary>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="add">Add
							Product</a></li>
				</ul>

			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header text-center">
						<h4>Product Details</h4>
						<c:if test="${not empty msg }">
							<h5 class="text-success">${msg }</h5>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<table class="table">
							<thead>

								<tr>
									<th scope="col">Id</th>
									<th scope="col">Name</th>
									<th scope="col">Category Id</th>
									<th scope="col">Subcategory Id</th>
									<th scope="col">Description</th>
									<th scope="col">Price</th>
									<th scope="col">Quantity</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ulist}" var="users">
									<tr>
										<th scope="row">${users.id }</th>
										<td>${users.name }</td>
										<td>${users.category_id }</td>
										<td>${users.subcategory_id }</td>
										<td>${users.description }</td>
										<td>${users.price}</td>
										<td>${users.quantity }</td>
										<td><a href="update/${update.id}"
											class="btn btn-sm btn-primary">Edit</a> <a
											href="delete/${users.id }" class="btn btn-sm btn-danger">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>