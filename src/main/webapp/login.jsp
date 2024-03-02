<%@page import="java.util.Random"%>
<%
	session = request.getSession(false);
	if (session != null && session.getAttribute("username") != null) {
		response.sendRedirect("user-index.jsp"); 
	}
	Random rand = new Random();
	int captcha = rand.nextInt(15000) + 596;
%>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="css/script.js"></script>
<link rel="icon" href="images/logo.png" />
<title>IRCTC Login Page</title>
</head>
<body onload="myCaptcha()">
	<div class="login_box">
		<h1>login</h1>
	</div>
	<div class="container login_container">
		<div class='card mx-auto col-md-4'>
			<div class='card-body'>
				<form action="login-validate.jsp" method="post"
					class="needs-validation" novalidate>
					<div class='row form-group'>
						<div class='col-md-12'>
							<input type='text' name="username" id='username'
								class='form-control' placeholder="User Name" required />
							<div class="invalid-feedback">User Name is required.</div>
						</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-12'>
							<input type='password' name="password" id='password'
								class='form-control' placeholder="Password" required />
							<div class="invalid-feedback">Password is required.</div>
						</div>
					</div>
					<a href="forgot-password.jsp" class="forgot-acc">forgot
						account details?</a> <br>
					<div class="login-captcha">
						<img src="register/refresh.jpg" onclick="myCaptcha()">
					</div>
					<div class='col-md-12'>
						<input type="text" class="form-control captcha" id="mainCaptcha"
							name="mainCaptcha" readonly>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-12'>
							<input type="text" class="form-control" id="captca"
								name="captcha" placeholder="Enter Captcha" required>
							<h5></h5>
						</div>
					</div>
					<br>
					<%
						String msg = (String) session.getAttribute("message");
						if (msg != null) {
					%>
					<p class="validate"><%=msg%></p>
					<%
						}
					%>
					<div class="col-12">
						<button class="login-button" onclick="return checkCaptcha()"
							type="submit">sign in</button>
					</div>
					<br>
					<div class="col-12">
						<a href="user-registration.jsp" class="user-regis">register</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="login-fotter"></div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
	<script src="css/script.js"></script>
</body>
</html>