<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>New</title>
</head>
<body>
	<header class="navbar navbar-dark bg-dark justify-content-end mb-3 ">
		<nav>
			<a href="${pageContext.request.contextPath}/taxfilers" target="_self" class="nav-link text-white me-5">Home</a>
		</nav>
	</header>
	
	<main>
		<div class="container">
			<div class="row">
				<section class="col-8 offset-2" name="form-wrapper">
				 	<form method="POST" action="${pageContext.request.contextPath}/taxfilers">
						<div class="mb-3">
						    <label for="name" class="form-label">Name</label>
						    <input type="text" class="form-control" name="name">
						</div>
						<div class="mb-3">
						    <label for="ssn" class="form-label">Social Security Number</label>
						    <input type="text" class="form-control" name="ssn">
						</div>
						<div class="mb-3">
						    <label for="email" class="form-label">Email Address</label>
						    <input type="email" class="form-control" name="email">
						</div>
						<div class="mb-3">
						    <label for="phone-number" class="form-label">Phone Number</label>
						    <input type="text" class="form-control" name="phoneNumber">
						</div>
						<div class="mb-3">
						    <label for="address" class="form-label">Address</label>
						    <input type="text" class="form-control" name="address">
						</div>
						<div class="mb-3">
						    <label for="annual-income" class="form-label">Annual Income</label>
						    <input type="text" class="form-control" name="annualIncome">
						</div>
						<div class="mb-3">
						    <label for="annual-expenses" class="form-label">Annual Expenses</label>
						    <input type="text" class="form-control" name="annualExpenses">
						</div>
						<div class="mb-3">
						    <label for="tax-year" class="form-label">Tax Year</label>
						    <input type="text" class="form-control" name="taxYear">
						</div>	
						<button type="submit" class="btn btn-primary">Create</button>																																			
				 	</form>
				</section>
			</div>
		</div>
	</main>
</body>
</html>