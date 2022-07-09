<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ include file="./base.jsp"%>
</head>
<body>

<div class="container mt-5 bg-secondery">

<div class="row">
	<div class="col-md-6 offset-md-3">
	
	

		<form action="${pageContext.request.contextPath }/handel-product" method="post">
		
		<input type="hidden" value="${ product.id}" name="id">

			<h1 class="text-center">Update Form Details</h1>
			<div class="form-group">
				<label for="exampleInputEmail1">Name</label> <input type="text"
					name="name" class="form-control" id="exampleInputName"
					aria-describedby="emailHelp" placeholder="Enter Name"
					value="${product.name }">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Description</label>
				<textarea  name="description" class="form-control"
					id="exampleInputdiscription" rows="5" placeholder="describe here please">${product.description }</textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Product-Price</label> <input type="text"
					name="price" class="form-control" id="price" value="${product.price }"
					aria-describedby="Help" placeholder="Enter price">
			</div>
			<!-- <div class="form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me
					out</label>
			</div> -->
			<div class="container text-center">
			<a href="${pageContext.request.contextPath }/"
			class="btn-btb-outline-danger">Back</a>
			<button type="submit" class="btn btn-warning">Update</button>
			</div>
		</form>
		</div>
	</div>
	</div>
	

	

</body>
</html>