<!DOCTYPE html>
<html>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
	SimpleDateFormat dat = new SimpleDateFormat("dd-MM-yyyy");
	String dates = dat.format(Calendar.getInstance().getTime());
%>


<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
<link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="styleSheet" href="css/bootstrap.min.css">
<link rel="styleSheet" href="css/style.css">
<link rel="styleSheet" href="css/in.css">
<link rel="icon" href="images/logo.png" />
<title>IRCTC Next Generation eTicketing System</title>

</head>
<style>
.custom-bg {
	background: url("images/bgg.png") center/cover no-repeat;
	height: 100vh;
	display: flex;
	justify-content: center;
	overflow: hidden;
}
</style>
<body>
	<div style="margin-top: -.1%">
		<%@ include file="main-header.jsp"%>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="container-fluid custom-bg">
		<div class="row">
			<div class="col-md-6">
				<div class="col-md-10 offset-md-1 mt-5 login-form">
					<form action="search-train.jsp" method="post"
						onsubmit="return matchDestination()" class="needs-validation" novalidate>
						<div class="d-flex label-div">
							<label class="form-label"><a href="pnr.jsp">PNR
									STATUS</a></label> <label class="form-label"><a
								style="margin-right: 6px;">CHART / VACANCY</a></label>
						</div>
						<div class="d-flex">
							<img src="images/mahotasav_logo.jpg"
								style="width: 25%; height: 10%;">
							<div class="mt-4 d-flex lavel">
								<h3>BOOK TICKET</h3>
							</div>
							<div class="ml-auto">
								<img src="images/G20.png">
							</div>
						</div>
						<div class='row form-group'>
							<div class='col-md-6 mt-4'>
								<select name="from" id='from' class='form-select' required>
									<option value="" disabled selected>From</option>
									<option>Delhi</option>
									<option>Patna</option>
									<option>Gaya</option>
									<option>Mumbai</option>
									<option>Ayodhya</option>
									<option>Howrah</option>
								</select>
								<div class="invalid-feedback"style="font-size: .9rem">Journey From is Required.</div>
							</div>
							<div class='col-md-6 mt-4'>
								<input type='date' name="jdate" id='jdate' class='form-control'
									value="<%=dates%>" required>
								<div class="invalid-feedback"style="font-size: .9rem">Date of Journey is Required.</div>
							</div>
						</div>
						<br>
						<div class='row form-group'>
							<div class='col-md-6 mt-4'>
								<select name="to" id='to' class='form-select' required>
									<option value="" disabled selected>To</option>
									<option>Patna</option>
									<option>Gaya</option>
									<option>Mumbai</option>
									<option>Ayodhya</option>
									<option>Howrah</option>
									<option>Delhi</option>
								</select><b></b>
								<div class="invalid-feedback"style="font-size: .9rem">Journey Destination is
									Required.</div>
							</div>
							<div class='col-md-6 mt-4'>
								<select name="classes" id='class' class='form-select' required>
									<option>AllClasses</option>
									<option>AC 3 Tier (3A)</option>
									<option>AC 2 Tier (2A)</option>
									<option>AC 1 Tier (1A)</option>
									<option>Sleeper (SL)</option>
								</select>
								<div class="invalid-feedback"style="font-size: .9rem">Classes is Required.</div>
							</div>
						</div>
						<br>
						<div class='row form-group'>
							<div class='col-md-6'>
								<select name="quota" id='quota' class='form-select' required>
									<option value="general">GENERAL</option>
									<option>LADIES</option>
									<option>LOWER BERTH/SR.CITIZEN</option>
									<option>PERSON WITH DISABILITY</option>
									<option>DUTY PASS</option>
									<option>TATKAL</option>
								</select>
								<div class="invalid-feedback"style="font-size: .9rem">Quota is Required.</div>
							</div>
						</div>
						<button type="submit" class="btn-search mt-3">Search</button>
					</form>
				</div>
			</div>
			<div class="container-fluid offset-md-1"
				style="margin-left: 4%;">
				<div class="col-md-5 login-form">
					<p style="font-weight: 600; color: #ff0000; font-size: .7rem;">Users
						are advised to download Official IRCTC Rail Connect Apps only from
						Google Play Store or Apple App Store. Please do not use
						unauthorized links/URLs.</p>
					<p style="font-weight: 600; color: #0000ff; font-size: .7rem;">Please
						check the alert section regarding restoration of AC 3-tier economy
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="row form-group"
		style="background-color: navajowhite; height: 20vh; width: 100%; overflow: hidden;">
		<div class="col-form d-flex align-items-center justify-content-center">
			<img src="images/advertize.png"
				style="max-width: 100%; max-height: 100%;">
		</div>
	</div>

	<hr>
	<div class="row form-group"
		style="background-color: #FFF; height: auto; width: 100%; overflow: hidden;">
		<div class="col-form d-flex align-items-center justify-content-center">
			<img src="images/atmlogo.jpeg"
				style="max-width: 100%; max-height: 100%;">
		</div>
		<strong class="banner text-center">Have you not found the
			right one?</strong> <strong class="banner text-center">Find a service
			suitable for you here.</strong>

		<div class="row form-group mt-5">
			<div class="col-md-8 offset-md-2">
				<div class="d-flex flex-column" style="height: auto;">
					<div class="d-flex flex-wrap">
						<div class="d-flex text-center">
							<a href="flight.jsp" class="center-icons" target="blank"> <i
								class="fa fa-plane fa-5x"></i></a> <a href="hotel.jsp"
								class="center-icons" target="blank"> <i
								class="fa fa-hotel fa-5x"></i>
							</a> <a href="#" class="center-icons" target="blank"> <i
								class="fa-solid fa-arrow-trend-up fa-5x"></i></a> <a
								href="meal-list.jsp" class="center-icons" target="blank"> <i
								class="fa-solid fa-bowl-rice fa-5x"></i>
							</a> <a href="bus.jsp" class="center-icons" target="blank"> <i
								class="fa fa-bus fa-5x"></i>
							</a>
						</div>
					</div>
					<div class="d-flex">
						<h2 style="margin-left: 5%; color: #000" class="banner-heading">FLIGHTS</h2>
						<h2 style="margin-left: 14%" class="center-anchors banner-heading">HOTELS</h2>
						<h2 style="margin-left: 12%; font-size: 1.1rem"
							class="center-anchors banner-heading">RAIL DRISHTI</h2>
						<h2 style="margin-left: 9%" class="center-anchors banner-heading">E-CATERING</h2>
						<h2 style="margin-left: 11%; color: #000">BUS</h2>
					</div>
				</div>
			</div>
			<div class="row form-group mt-5">
				<div class="col-md-9 offset-md-2">
					<div class="d-flex flex-column" style="height: auto;">
						<div class="d-flex flex-wrap">
							<div class="d-flex text-center">
								<a href="#" class="center-icons"> <i
									class="fa fa-umbrella-beach fa-5x"></i>
								</a> <a href="#" class="center-icons center-align"> <i
									class="fa fa-train-subway fa-5x"></i>
								</a> <a href="#" class="center-icons"><span> <i
										class="fa fa-mountain fa-5x"></i>
								</span></a> <a href="#" class="center-icons"> <i
									class="fa-solid fa-train-tram fa-5x"></i>
								</a> <a href="#" class="center-icons"> <i
									class="fa fa-image fa-5x"></i>
								</a>
							</div>

							<div class="d-flex" style="width: 100%">
								<h2 style="font-size: 1.3rem;; font-weight: 800; color: #000">HOLIDAY
									PACKAGES</h2>
								<h2 class="banner-name">TOURIST TRAIN</h2>
								<h2 class="banner-name">HILL RAILWAYS</h2>
								<h2 class="banner-name">CHARTER TRAIN</h2>
								<h2 class="banner-name">GALARY</h2>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="row form-group">
		<div class="col-form d-flex align-items-center justify-content-center">
			<img src="images/advertize.png"
				style="max-width: 100%; max-height: 100%;">
		</div>
		<hr style="height: 3px;">
	</div>

	<div class="row"
		style="background: whitesmoke; width: 100%; overflow: hidden;">
		<h2 align="center"
			style="font-size: 2.5rem; font-weight: 600; line-height: 5;">HOLIDAYS</h2>
		<div class="col-md-12 offset-md-1  d-flex mt-4">
			<div class="col-md-3"
				style="background: white; border: .3px solid grey;">
				<img src="images/maharaja_express.jpeg"
					style="width: 100%; height: 30vh;">
				<div class="col-md-11">
					<h3 class="offset-md-1 mt-3"
						style="font-size: 1.5rem; font-weight: 700;">Maharajas'
						Express</h3>
					<p class="offset-md-1"
						style="font-size: .9rem; font-family: Verdana, Geneva, Tahoma, sans-serif">
						Redefining Royalty, Luxury and Comfort, Maharajas' express takes
						you on a sojourn to the era of bygone stately splendour of
						princely states. Sylvan furnishings, elegant ambience and modern
						amenities are amalgamated for an “Experience Unsurpassed”. It has
						been a winner of “World’s Leading Luxury train” by World Travel
						Awards consecutively for last six years.</p>
					<a href="maharaja_train.jsp" class="offset-md-1 mt-3 package-link"
						target="_blank">Read More<i class="fa fa-arrow-right"
						aria-hidden="true"></i>
					</a>
				</div>
				<br>
			</div>
			<div class="col-md-3"
				style="background: white; border: .3px solid grey; margin-left: 2%;">
				<img src="images/Thailand.jpg" style="width: 100%; height: 30vh;">
				<div class="col-md-11">
					<h3 class="offset-md-1 mt-3"
						style="font-size: 1.5rem; font-weight: 700;">International
						Packages</h3>
					<p class="offset-md-1"
						style="font-size: .9rem; font-family: Verdana, Geneva, Tahoma, sans-serif">
						Best deals in International Holiday packages, handpicked by IRCTC,
						for Thailand, Dubai, Sri Lanka, Hong Kong, China, Macau, Bhutan,
						Nepal, U.K., Europe, USA, Australia etc. The packages are
						inclusive of sightseeing, meals, visa charges and overseas medical
						insurance to give you a hassle-free and memorable experience.</p>
					<br> <a href="International_Packages.jsp"
						class="offset-md-1 mt-3 package-link" target="_blank">Read
						More<i class="fa fa-arrow-right" aria-hidden="true"></i>
					</a>
				</div>
			</div>
			<br>
			<div class="col-md-3"
				style="background: white; border: .3px solid grey; margin-left: 2%;">
				<img src="images/Kashmir.jpg" style="width: 100%; height: 30vh;">
				<div class="col-md-11">
					<h3 class="offset-md-1 mt-3"
						style="font-size: 1.5rem; font-weight: 700;">Domestic Air
						Packages</h3>
					<p class="offset-md-1"
						style="font-size: .9rem; font-family: Verdana, Geneva, Tahoma, sans-serif">Be
						it the spiritual devotee seeking blessings of Tirupati, Shirdi or
						Mata Vaishno Devi or the leisure traveller wanting to relish the
						Blue mountains of North East, Sand-dunes of Rajasthan, Hamlets of
						Ladakh, Wonders of Himalayas, Serene lakes or Picturesque Islands,
						IRCTC has it all. Discover India through IRCTC!</p>
					<br> <a href="Domestic_Packages.jsp"
						class="offset-md-1 mt-3 package-link" target="_blank">Read
						More<i class="fa fa-arrow-right" aria-hidden="true"></i>
					</a>
				</div>
				<br>
			</div>
		</div>
		<div class="col-md-12 offset-md-1 d-flex mt-4">
			<div class="col-md-3"
				style="background: white; border: .3px solid grey;">
				<img class="train_img" src="images/Bharat_Gaurav.jpg"
					style="width: 100%; height: 30vh;">
				<h3 class="offset-md-1 mt-3"
					style="font-size: 1.5rem; font-weight: 700;">Bharat Gaurav
					Tourist Train</h3>
				<p class="offset-md-1"
					style="font-size: .9rem; font-family: Verdana, Geneva, Tahoma, sans-serif">
					IRCTC operates Bharat Gaurav Tourist Train having AC III-Tier
					accommodation on train specially designed to promote domestic
					tourism in India. This train runs on various theme based circuits
					covering pilgrimage and heritage destinations in its itinerary on a
					5 days to 20 days trip of India’s rich cultural haritage.</p>
				<br> <a class="offset-md-1 mt-3 package-link"
					href="Bharat_Gaurav_Tourist_Train.jsp" target="_blank">Read
					More<i class="fa fa-arrow-right" aria-hidden="true"></i>
				</a>
			</div>
			<div class="col-md-3"
				style="background: white; border: .3px solid grey; margin-left: 2%;">
				<img class="train_img" src="images/Manali.jpg"
					style="width: 100%; height: 30vh;">
				<div class="col-md-11">
					<h3 class="offset-md-1 mt-3"
						style="font-size: 1.5rem; font-weight: 700;">Rail Tour
						Packages</h3>
					<p class="offset-md-1"
						style="font-size: .9rem; font-family: Verdana, Geneva, Tahoma, sans-serif">
						IRCTC offers Exclusive Rail tour packages with confirmed train
						tickets, sight-seeing and meals for enchanting Nilgiri Mountains,
						Darjeeling, Kullu Manali, Kashmir, Gangtok or divine tours of Mata
						Vaishno Devi, Rameswaram, Madurai, Shirdi, Tirupati etc. Holiday
						packages/ Land packages to these destinations are also available.
					</p>
					<a class="offset-md-1 mt-3 package-link"
						href="Rail_Tour_Packages.jsp" target="_blank">Read More</a><i
						class="fa fa-arrow-right" aria-hidden="true"></i>
				</div>
				<br>
			</div>
		</div>
		<br> <br>
	</div>

	<!------------Footer_Section-------------->
	<%@ include file="footer.jsp"%>
	<script src="css/script.js"></script>
	<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>