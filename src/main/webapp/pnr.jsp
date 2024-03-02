<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="css/script.js"></script>
<title>Welcome to Indian Railway Passenger Reservation Enquiry</title>
</head>

<body>
	<div class="pnr_parent">
		<div class="pnr_parent_container">
			<div class="pnr_parent_container_child">
				<img src="images/secondry-logo.png">
			</div>
			<h2>INDIAN RAILWAYS PASSENGER RESERVATION ENQUary</h2>
			<div class="pnr_right_container">
				<img src="sbi/india.gif"> <img src="sbi/cris.gif" alt="">
			</div>
		</div>
		<div class="col-md-12">
			<marquee class="pull-center" behavior="scroll" direction="left">Please
				help Indian railways and government of India in moving towards a
				digitized and cashless economy. Eradicate black money. </marquee>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3 class="text-center bg-primary" style="padding: 7px;">
					Passenger Current Status Enquiry</h3>
			</div>
			<div class="col-md-12">
				<p style="font-size: 12px;" id="curDate">24-Feb-2024 [15:56:23
					IST]</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center" align="center">
				<h5 align="center">Enter the PNR for your booking below to get
					the current status. You will find it on the top left corner of the
					ticket.</h5>
			</div>
		</div>
		<div class=" container col-md-4" align="center"
			style="background-color: red">
			<p style="color: #fff; font-size:1.2rem;"><%=session.getAttribute("pnrMessage") %></p>
		</div>
		<div class="container" style="padding-left: 36%">
			<div class="col-md-5 text-center">
				<form action="pnrEnquery.jsp" method="post" class="needs-validation" novalidate>
					<div class='row form-group'>
						<div class='col-md-12'>
					        <input class='form-control' type='text' name="pnrNo"
						    maxlength="7" placeholder="Enter PNR No."
						    onkeypress='return ((event.charCode >= 48 && event.charCode <= 57) ||  event.charCode == 0)'					
						    required />			   
					        <div class="invalid-feedback">Please enter your PNR number</div>
					     </div>
					 </div>
					 <button type="submit" name="search" id="button"
						class="btn btn-primary" style="margin-top:1rem;">Search</button>
				</form>
			</div>
		</div>
	</div>
	<div class="container" style="margin-top: 14rem;">
		<hr>
		<footer>
			<div class="row">
				<div class="col-lg-12 text-center">
					<p style="color: #fff;">Copyright &copy; 2024, Centre For
						Railway Information Systems, Designed by Mr.Vikash</p>
				</div>
			</div>
		</footer>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
		<script src="css/script.js"></script>
</body>

</html>