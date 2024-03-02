<% 
String msg = (String) session.getAttribute("message");
session.removeAttribute("message");
%>
<%@ include file="session.jsp"%>
<html>
<head>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
<script src="css/script.js"></script>
<link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="icon" href="images/logo.png" />
<title>IRCTC Next Generation eTicketing System</title>
</head>
<body>
	<div class="otp-form"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="text-center">
							<h3>
								<i class="fa fa-lock fa-5x"></i>
							</h3>
							<h2 class="text-center">Enter OTP</h2>
							<div class="panel-body">
								<%
									if (msg != null) {
								%>
								<p class="validate"><%=msg%></p>
								<%
									}
								%>
								<form action="2Ac-paymentValidation.jsp" role="form"
									autocomplete="off" class="form" method="post">
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-envelope glyphicon-1x"></i></span> <input
												id="otp" name="otp" placeholder="Enter OTP"
												class="form-control" type="text" required="required">
										</div>
									</div>
									<div class="form-group">
										<input name="recover-submit"
											class="btn btn-lg btn-primary btn-block" value="Submit"
											type="submit">
									</div>
									<div class="form-group"></div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
