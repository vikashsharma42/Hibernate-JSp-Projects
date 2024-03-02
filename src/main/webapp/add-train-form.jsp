<!DOCTYPE html>
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
<body class="registeration-body">
	<div class="registeration-container">
		<h1>Add Train Details</h1>
		<a href="train-list.jsp">Train-List</a>
	</div>
	<div class='container'>
		<div class='card mx-auto col-md-8'>
			<div class='card-body'>
				<form action="saveTrain.jsp" method="post" class="needs-validation"
					novalidate>
					<div class='row form-group'>
						<div class='col-md-4'>
							<input type='text' name="ac" id='ac' class='form-control'
								placeholder="1 Ac" required />
							<div class="invalid-feedback">1AC is required.</div>
						</div>
						<div class='col-md-4'>
							<input type='text' name="acc" id='acc' class='form-control'
								placeholder="2nd Ac" required />
							<div class="invalid-feedback">2nd AC is required.</div>
						</div>
						<div class='col-md-4'>
							<input type='text' name="accc" id='accc' class='form-control'
								placeholder="3rd Ac" required />
							<div class="invalid-feedback">3rd AC is required.</div>
						</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="acprice"
								name="acprice" placeholder="1 AC Price" required>
							<div class="invalid-feedback">1st AC price is required.</div>
						</div>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="accprice"
								name="accprice" placeholder="2nd AC Price" required>
						</div>
						<div class="invalid-feedback">2nd AC price is required.</div>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="acccprice"
								name="acccprice" placeholder="3rd AC Price" required>
						</div>
						<div class="invalid-feedback">3rd AC price is required.</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-4'>
							<input type='text' name="from" id='from' class='form-control'
								placeholder="From" required />
							<div class="invalid-feedback">From is Required.</div>
						</div>
						<div class='col-md-4'>
							<input type='text' name="to" id='to' class='form-control'
								placeholder="To" required />
						</div>
						<div class="invalid-feedback">To is Required.</div>
						<div class='col-md-4'>
							<input type='text' name="slprice" id='slprice'
								class='form-control' placeholder="SL Price" required />
						</div>
						<div class="invalid-feedback">Sleeper Class Price is
							Required.</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-4'>
							<input type='text' name="sl" id='sl' class='form-control'
								placeholder="Sleeper Class" required />
							<div class="invalid-feedback">Sleeper Class is Required.</div>
						</div>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="start"
								name="starttime" placeholder="Start Time" required>
							<div class="invalid-feedback">Starting Time is required</div>
						</div>
						<br>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="endtime"
								name="endtime" placeholder="End Time" required>
							<div class="invalid-feedback">End Time is Required.</div>
						</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="totaltime"
								name="totaltime" placeholder="Total Time" required>
							<div class="invalid-feedback">Total Time is Required.</div>
						</div>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="tname" name="tname"
								placeholder="Train Name" required>
						</div>
						<div class="invalid-feedback">Train Name is Required.</div>
						<div class='col-md-4'>
							<input type="text" class="form-control" id="tnumber"
								name="tnumber" placeholder="Train Number" required>
						</div>
						<div class="invalid-feedback">Train Number is Required.</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class="col-12">
							<button class="register-button" type="submit">Save</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="aaaa"></div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
	<script src="css/script.js"></script>
</body>
</html>
