<%@page import="java.util.Random"%>

<%
	session = request.getSession(false);
	if (session != null && session.getAttribute("username") != null) {
		response.sendRedirect("user-index.jsp");
	}
%>

<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="images/logo.png" />
<title>IRCTC Next Generation eTicketing System</title>
</head>
<body class="registeration-body" onload="myCaptcha()">
	<div style="margin-top: 6rem;">
		<%@ include file="main-header.jsp"%>
	</div>
	<div class="registeration-container">
		<h1>Create Your account</h1>
		<a href="login.jsp">Sign In</a>
	</div>
	<div class='container'>
		<div class='mx-auto col-md-8 row justify-content-center' style="background-color: #fff; border-radius: 10px;">
			<div class='card-body'>
				<form action="userRegistrationEmail.jsp" method="post"
					class="needs-validation" onsubmit="checkCaptcha()" novalidate>
					<div class='row form-group'>
						<div class='col-md-4'>
							<input type='text' name="username" id='userid'
								class='form-control' placeholder="User Name" required />
							<div class="invalid-feedback">User Name is required.</div>
						</div> 
												<div class='col-md-4'>
							<input type='Password' name="pass" id='pass' class='form-control'
								placeholder="Password" required />
							<div class="invalid-feedback">Password is required.</div>
						</div>
						<div class='col-md-4'>
							<input type='Password' name="cpass" id='cpass'
								class='form-control' placeholder="Confirm Password"
								onkeyup="matchPassword()" required />
							<div class="invalid-feedback">Confirm password is required.
							</div>
							<h4></h4>
						</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-4'>
							<input type='text' name="fname" id='fname' class='form-control'
								placeholder="First Name" required />
							<div class="invalid-feedback">First name is Required.</div>
						</div>
						<div class='col-md-4'>
							<input type='text' name="mname" id='mname' class='form-control'
								placeholder="Middle Name [ Optional ]" />
						</div>
						<div class='col-md-4'>
							<input type='text' name="lname" id='lname' class='form-control'
								placeholder="Last Name [ Optional ]" />
						</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-4'>
							<select name="occupation" id='occupation' class='form-select'
								required>
								<option hidden=''>Select Occupation</option>
								<option>government</option>
								<option>public</option>
								<option>private</option>
								<option>professional</option>
								<option>Self Employed</option>
								<option>student</option>
								<option>other</option>
							</select>
						</div>
						<div class='col-md-4'>
							<input type='date' name="dob" id='dob' class='form-control'
								placeholder="Date Of Birth" required />
							<div class="invalid-feedback">Date of birth is Required.</div>
						</div>
						<div class='col-md-4'>
							<select name="country" id='country' class='form-select' required>
								<option value="india">INDIA</option>
								<option>Afghanistan</option>
								<option>Albania</option>
								<option>Algeria</option>
								<option>Andorra</option>
								<option>Angola</option>
								<option>Argentina</option>
								<option>Australia</option>
								<option>Bahrain</option>
								<option>Belgium</option>
								<option>Bangladesh</option>
								<option>Brazil</option>
								<option>Burma</option>
								<option>Cambodia</option>
								<option>Canada</option>
								<option>China</option>
								<option>Colombia</option>
								<option>Cuba</option>
								<option>Germany</option>
								<option>Egypt</option>
								<option>Finland</option>
								<option>France</option>
								<option>Georgia</option>
								<option>Hungary</option>
								<option>Iceland</option>
								<option>India</option>
								<option>Iran</option>
								<option>Indonesia</option>
								<option>Iraq</option>
								<option>Ireland</option>
								<option>Israel</option>
								<option>Italy</option>
								<option>Japan</option>
								<option>Kazakhstan</option>
								<option>Jordan</option>
								<option>Kenya</option>
								<option>Korea</option>
								<option>Kuwait</option>
								<option>Lithuania</option>
								<option>Madagascar</option>
								<option>Malawi</option>
								<option>Malaysia</option>
								<option>Maldives</option>
								<option>Mexico</option>
								<option>Micronesia</option>
								<option>Moldova</option>
								<option>Monaco</option>
								<option>Mongolia</option>
								<option>Montenegro</option>
								<option>Morocco</option>
								<option>Mozambique</option>
								<option>Nepal</option>
								<option>Nigeria</option>
								<option>Netherlands</option>
								<option>Norway</option>
								<option>Netherlands</option>
								<option>Niger</option>
								<option>Pakistan</option>
								<option>Peru</option>
								<option>Philippines</option>
								<option>Poland</option>
								<option>Portugal</option>
								<option>Qatar</option>
								<option>South Korea</option>
								<option>Romania</option>
								<option>Russia</option>
								<option>Saudi Arabia</option>
								<option>Singapore</option>
								<option>Slovenia</option>
								<option>Solomon Islands</option>
								<option>South Africa</option>
								<option>South Sudan</option>
								<option>Spain</option>
								<option>SriLanka</option>
								<option>Sudan</option>
								<option>Sweden</option>
								<option>Switzerland</option>
								<option>Tajikistan</option>
								<option>Thailand</option>
								<option>Tunisia</option>
								<option>Turkey</option>
								<option>Turkmenistan</option>
								<option>Uganda</option>
								<option>Ukraine</option>
								<option>United Arab Emirates</option>
								<option>United Kingdom</option>
								<option>Venezuela</option>
								<option>Vietnam</option>
								<option>Zimbabwe</option>
							</select>
						</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="phone" name="phone"
								placeholder="Enter Phone" required>
							<div class="invalid-feedback">Phone is required.</div>
						</div>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="city" name="city"
								placeholder="City" required>
							<div class="invalid-feedback">City is Required.</div>
						</div>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="pincode"
								name="pincode" placeholder="PinCode" required>
							<div class="invalid-feedback">PinCode is Required..</div>
						</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="state" name="state"
								placeholder="State" required>
							<div class="invalid-feedback">State is Required.</div>
						</div>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="street" name="street"
								placeholder="Street/Lane(optional)">
						</div>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="locality"
								name="locality" placeholder="Area/Locality(optional)">
						</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-12'>
							<input type="text" class="form-control" id="email" name="email"
								placeholder="Enter email" required>
							<div class="invalid-feedback">Email is Required.</div>
						</div>
					</div>
					<br> <br>
					<div class="ragistration-captcha">
						<img src="register/refresh.jpg" onclick="myCaptcha()">
					</div>
					<div class='col-md-5'>
						<input type="text" class="form-control captcha" id="mainCaptcha"
							name="captchas" readonly>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-5'>
							<input type="text" class="form-control" id="captca"
								name="captcha" placeholder="Enter Captcha"
								onkeyup="checkCaptcha()" required>
							<h5></h5>
						</div>
					</div>
					<br> <br>
					<div class="col-12">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="invalidCheck" required> <label
								class="form-check-label" for="invalidCheck">I have read
								and agree with the Terms and Conditions and also agree to
								receive promotional<a href="pdf/terms&cond.pdf" target="_blank">Terms
									and Conditions </a> email/SMS/WhatsApp/Alerts/offers/announcements
								from IRCTC and associated partners.
							</label>
							<div class="invalid-feedback">Please accept term and
								condition.</div>
						</div>
					</div>
					<div class="col-12">
						<button class="register-button" type="submit"
							onclick="matchPassword()">Register</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="register"></div>
	<%@ include file="footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
	<script src="css/script.js"></script>
</body>
</html>
