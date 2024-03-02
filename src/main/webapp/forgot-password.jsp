
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="styleSheet" href="css/bootstrap.min.css">
<link rel="styleSheet" href="css/index.css">
<link rel="styleSheet" href="css/style.css">
<script type="text/javascript" src="css/script.js"></script>
<title>IRCTC Next generation eticketing System</title>
</head>
<style>
</style>

<body onload="myCaptcha()">
	<%
		session = request.getSession(false);
		if (session != null && session.getAttribute("username") != null) {
	%>
	<div style="margin-top: 6rem;">
		<%@ include file="user_header.jsp"%>
	</div>
	<%
		} else {
	%>
	<div style="margin-top: 6rem;">
		<%@ include file="main_header.jsp"%>
	</div>
	<%
		}
	%>
	<div class='container'>
		<div class='mx-auto col-md-8'>
			<div class='card-body row justify-content-center mt-5'>
				<div class="col-md-12">
					<h1 align="center" style="font-weight: 800">FORGOT ACCOUNT
						DETAILS</h1>
				</div>
				<form action="change-password.jsp" method="post"
					class="needs-validation" novalidate>
					<div class="form-group row mt-5">
						<label for="id" class="col-sm-4 col-form-label"
							style="font-weight: 700">IRCTC UserId/Email Id<span
							style="color: #ff0000;">*</span> :
						</label>
						<div class="col-sm-8">
							<input type="email" class="form-control" id="id" name="userId"
								 placeholder="IRCTC UserId/Email Id"
								required>
							<div class="invalid-feedback" style="font-size: 1rem">Please
								enter your irctc id/email.</div>
						</div>
					</div>
					<hr style="height: .2rem;">
					<div class="form-group row mt-5">
						<label for="captcha" class="col-sm-4 col-form-label"
							style="font-weight: 700">Captcha<span
							style="color: #ff0000;">*</span> :
						</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="captca"
								placeholder="Captcha" required>
							<div class="invalid-feedback" style="font-size: 1rem">Please
								enter captcha.</div>
							<h5></h5>
						</div>
					</div>
					<hr style="height: .2rem;">
					<div
						class="form-group row mt-5 d-flex justify-content-center align-items-center">
						<div class="col-sm-4 d-flex">
							<input type="text" class="form-control  text-center"
								id="mainCaptcha" readonly> <img
								src="register/refresh.jpg" class="img-fluid rounded mr-2"
								onclick="myCaptcha()"
								style="height: 36px; margin-left: -2.3rem;">
						</div>
					</div>
					<!---offset-sm-8-->
					<div class="form-group row mt-5">
						<div class="col-sm-12 d-flex">
							<a href="javascript:history.back()" class="back_btn">Back</a>
							<button type="submit" class="submit_btn"
								onclick="return checkCaptcha()">Next</button>
						</div>
					</div>
					<div class="form-group row mt-2 bg-info">
						<h5 class="text-center mt-2">
							<strong>Note: </strong> ensure to keep your Email id and Mobile
							number updated in profile section.
						</h5>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="mt-5"></div>
	<%@ include file="footer.jsp"%>
</body>
<script type="text/javascript" src="css/script.js"></script>

</html>