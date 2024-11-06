<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Home</title>
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
			<div class="col-2">
				<a href="${pageContext.request.contextPath}/taxfilers/new" class="btn btn-success">Create</a>
			</div>
			<section class="col-12" id="table-wrapper">
				<table class="table table-striped table-hover">
					<thead class="thead-dark">
						<tr>
							<th>Name</th>
							<th>SSN</th>
							<th>Email</th>
							<th>Phone Number</th>
							<th>Address</th>
							<th>Annual income</th>
							<th>Annual Expenses</th>
							<th>Tax Year</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="taxFiler" items="${ taxFilers }">
						<tr>
							<td>${ taxFiler.name}</td>
							<td>${ taxFiler.ssn}</td>
							<td>${ taxFiler.email}</td>
							<td>${ taxFiler.phoneNumber}</td>
							<td>${ taxFiler.address}</td>
							<td>${ taxFiler.annualIncome}</td>
							<td>${ taxFiler.annualExpenses}</td>
							<td>${ taxFiler.taxYear}</td>
							<td>
								<div class="d-flex ">
									<a href="${pageContext.request.contextPath}/taxfilers/edit/${ taxFiler.id }" target="_self" class="btn btn-primary me-3">Edit</a>
									<button id="${pageContext.request.contextPath}/taxfilers/delete/${ taxFiler.id }" class="btn btn-danger deleteBtn">Delete</button>
								</div>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</section>
		</div>
	</div>
	</main>
	
		<script>
		window.addEventListener("load", function() {

			const deleteBtns = document.getElementsByClassName("deleteBtn");
			
			for(let i = 0; i < deleteBtns.length; i++) {
				
				deleteBtns[i].addEventListener("click", async function() {
					const url = this.getAttribute("id");
									
					console.log(url);
					
					try {
						const response = await fetch (url, {
							method: "DELETE",
							headers: {
								"Content-Type" : "application/json"
							}
						}); // end of fetch 
						
						window.location.replace("/tax-filling-records/taxfilers");
					} catch (error) {
						console.log(error.message);
					}
				});
			}
		}); // end of window
	</script>
</body>
</html>