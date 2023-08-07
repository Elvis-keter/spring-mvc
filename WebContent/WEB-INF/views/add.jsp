<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
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

	<div class="conatiner">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Add Product</h3>
						<c:if test="${not empty msg }">
							<h5>${msg }</h5>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="create" method="post">
							<input type="hidden" name="id" value="${users.id }">
							<div class="mb-3">
								<label>Product Name</label> <input type="text"
									name="name" class="form-control" value="${users.name }">
							</div>
							<div class="mb-3">
								<label>Category Id</label> <input type="text" name="category_id"
									class="form-control" value="${users.category_id }">
							</div>

							<div class="mb-3">
								<label>Sub Category Id</label> <input type="text" name="subcategory_id"
									class="form-control" value="${users.subcategory_id }">
							</div>

							<div class="mb-3">
								<label>Description</label> <input type="text" name="description"
									class="form-control" value="${users.description }">
							</div>

							<div class="mb-3">
								<label>Price</label> <input type="number"
									name="price" class="form-control"
									value="${users.price }">
							</div>

							<div class="mb-3">
								<label>Quantity</label> <input type="number" name="quantity"
									class="form-control" value="${users.quantity }">
							</div>

							<button class="btn btn-primary">Add Product</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>