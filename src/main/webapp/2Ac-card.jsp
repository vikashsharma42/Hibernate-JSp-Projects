<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="Description"
	content="IRCTC Next Generation eTicketing System">
<meta name="theme-color" content="#213d77" />
<link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/in.css">
<link href="css/bootstrap.min.css" rel="stylesheet">

<link rel="icon" href="images/logo.png" />
<title>IRCTC Next Generation eTicketing System</title>
</head>
<body>
	<div style="margin-top: 6.6rem;">
		<nav class="navbar bg-white fixed-top">
			<div class="mt-0">
				<%@include file="user-header.jsp"%>
			</div>
		</nav>
	</div>
	<hr>
	<div class="container mt-5">
		<div class="card mx-auto" style="max-width: 400px;">
			<div class="card-header"
				style="text-align: center; color: orange; font-family: fantasy;">
				ATM Card details</div>
			<div class="card-body">
				<form action="2Ac-otpMail.jsp" method="post"
					class="needs-validation" novalidate>
					<div class='row form-group'>
						<div class='col-md-12'>
							<input type='text' name="cardNo" id='cardNo' class='form-control'
								placeholder="Enter Your Card Number" maxlength="19"
								onkeyup="matchCard()" required /><b></b>
							<div class="invalid-feedback">Please enter yourCardNumber</div>
							<br> <input type='text' name="cvv" id='cvv'
								class='form-control' placeholder="Enter Your CVV"
								onkeyup="matchCvv()" maxlength="3" required /><strong></strong>
							<div class="invalid-feedback">Please enter CVV</div>
							<br>
							<button type="submit" class="btn-primary atmBtn"
								onclick="return matchCard()">Submit</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
	<script src="css/script.js"></script>
</body>
</html>
