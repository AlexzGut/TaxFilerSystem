<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Edit</title>
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
				<section class="col-8 offset-2" id="form-wrapper">
				 	<form id="updateForm">
				 		<input type="hidden" id="url" value="${pageContext.request.contextPath}/taxfilers/">
				 		<input type="hidden" id="id" value="${ taxFiler.id }">
						<div class="mb-3">
						    <label for="name" class="form-label">Name</label>
						    <input type="text" class="form-control" id="name" value="${ taxFiler.name }">
						</div>
						<div class="mb-3">
						    <label for="ssn" class="form-label">Social Security Number</label>
						    <input type="text" class="form-control" id="ssn" value="${ taxFiler.ssn }">
						</div>
						<div class="mb-3">
						    <label for="email" class="form-label">Email Address</label>
						    <input type="email" class="form-control" id="email" value="${ taxFiler.email }">
						</div>
						<div class="mb-3">
						    <label for="phone-number" class="form-label">Phone Number</label>
						    <input type="text" class="form-control" id="phone-number" value="${ taxFiler.phoneNumber }">
						</div>
						<div class="mb-3">
						    <label for="address" class="form-label">Address</label>
						    <input type="text" class="form-control" id="address" value="${ taxFiler.address }">
						</div>
						<div class="mb-3">
						    <label for="annual-income" class="form-label">Annual Income</label>
						    <input type="text" class="form-control" id="annual-income" value="${ taxFiler.annualIncome }">
						</div>
						<div class="mb-3">
						    <label for="annual-expenses" class="form-label">Annual Expenses</label>
						    <input type="text" class="form-control" id="annual-expenses" value="${ taxFiler.annualExpenses }">
						</div>
						<div class="mb-3">
						    <label for="tax-year" class="form-label">Tax Year</label>
						    <input type="text" class="form-control" id="tax-year" value="${ taxFiler.taxYear }">
						</div>	
				 	</form>
						<button class="btn btn-primary" id="submitForm">Update</button>																																			
				</section>
			</div>
		</div>
	</main>
	
	<script>
		window.addEventListener("load", function() {

			const submitBtn = document.getElementById("submitForm");
			
			submitBtn.addEventListener("click", async function() {
				const form = document.getElementById("updateForm");
				
				const taxFiler = {
						id: form["id"].value,
						name: form["name"].value,
						ssn: form["ssn"].value,
						email: form["email"].value,
						phoneNumber: form["phone-number"].value,
						address: form["address"].value,
						annualIncome: form["annual-income"].value,
						annualExpenses: form["annual-expenses"].value,
						taxYear: form["tax-year"].value
				};
				
				try {
					const response = await fetch (form["url"].value + "update", {
						method: "PUT",
						body: JSON.stringify(taxFiler),
						headers: {
							"Content-Type" : "application/json"
						}
					}); // end of fetch 
					
					window.location.replace(form["url"].value);
				} catch (error) {
					console.log(error.message);
				}
			}); // end of submitBtn
		}); // end of window
	</script>
</body>
</html>