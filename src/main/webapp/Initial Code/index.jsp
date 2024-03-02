<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
	SimpleDateFormat dat = new SimpleDateFormat("dd-MM-yyyy");
	String dates = dat.format(Calendar.getInstance().getTime());
%>
<%@ include file="main_header.jsp"%>

<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="images/logo.png" />
<script type="text/javascript" src="css/script.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
<title>IRCTC Next Generation eTicketing System</title>
</head>
<body>
	<div class="logo3">
		<img src="images/dd.jpg">
		<div class="logos_heading">
			<label>INDIAN RAILWAYS</label> <span>Safety</span> <span>Security</span>
			<span>Puncutality</span>
		</div>

		<div class="logo4">
			<form action="search-train.jsp" method="post"
				class="form_conatiner needs-validation" novalidate>
				<label class="form_label1"><a href="pnr.jsp" target="blank">PNR STATUS</a></label> <label
					class="form_label2"><a href="#">CHART / VACANCEY</a></label>
				<div class="form_logo1">
					<img src="images/mahotasav_logo.jpg"> <label
						class="form_label3">BOOK TICKET</label>
					<div class="form_logo2">
						<img src="images/G20.png">
					</div>
				</div>
				<br>
				<div class="form_data">
					<div class='row form-group'>
						<div class='col-md-6'>
							<select name="from" id='from' class='form-select' required>
								<option value="" disabled selected>From</option>
								<option>Delhi</option>
								<option>Patna</option>
								<option>Gaya</option>
								<option>Mumbai</option>
								<option>Ayodhya</option>
								<option>Howrah</option>
							</select>
							<div class="invalid-feedback">Journey From is Required.</div>
						</div>
						<div class='col-md-5'>
							<input type='date' name="jdate" id='jdate' class='form-control'
								value="<%=dates%>" required>
							<div class="invalid-feedback">Date of Journey is Required.</div>
						</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-6'>
							<select name="to" id='to' class='form-select' required>
								<option value="" disabled selected>To</option>
								<option>Patna</option>
								<option>Gaya</option>
								<option>Mumbai</option>
								<option>Ayodhya</option>
								<option>Howrah</option>
								<option>Delhi</option>
							</select><b></b>
							<div class="invalid-feedback">Journey Destination is
								Required.</div>
						</div>
						<div class='col-md-5'>
							<select name="classes" id='class' class='form-select' required>
								<option>AllClasses</option>
								<option>AC 3 Tier (3A)</option>
								<option>AC 2 Tier (2A)</option>
								<option>AC 1 Tier (1A)</option>
								<option>Sleeper (SL)</option>
							</select>
							<div class="invalid-feedback">Classes is Required.</div>
						</div>
					</div>
					<br>
					<div class='row form-group'>
						<div class='col-md-11'>
							<select name="quota" id='quota' class='form-select' required>
								<option value="general">GENERAL</option>
								<option>LADIES</option>
								<option>LOWER BERTH/SR.CITIZEN</option>
								<option>PERSON WITH DISABILITY</option>
								<option>DUTY PASS</option>
								<option>TATKAL</option>
							</select>
							<div class="invalid-feedback">Quota is Required.</div>
						</div>
					</div>
					<button class="btn-search" type="submit"
						onclick=" return matchDestination() ">Search</button>
				</div>
			</form>
		</div>
		<div class="data_container">
			<p class="data_container_p1">Users are advised to download
				Official IRCTC Rail Connect Apps only from Google Play Store or
				Apple App Store. Please do not use unauthorized links/URLs.</p>
			<p class="data_container_p2">Please check the alert section
				regarding restoration of AC 3-tier economy fare.</p>
		</div>
</div>
	<div class="advertizement">
		<img src="images/advertize.png">
	</div>
	<hr>
	<div class="logo_container">
		<img src="images/atmlogo.jpeg">
		<h3>Have you not found the right one?</h3>
		<h4>Find a service suitable for you here.</h4>
	</div>
	<div class="all_logo">
		<div class="all_logo_Container1">
			<i class="fa fa-plane image_logo"></i>
			<h2 class="logo_scehule1">FLIGHTS</h2>
		</div>
		<div class="all_logo_Container2">
			<i class="fa fa-hotel image_logo"></i>
			<h2 class="logo_scehule2">HOTELS</h2>
		</div>
		<div class="all_logo_Container3">
			<img src="images/up-arrow2.jpeg">
			<h2 class="logo_scehule3">RAIL DRISHTI</h2>
		</div>
		<div class="all_logo_Container4">
			<img src="images/catring2.jpg">
			<h2 class="logo_scehule4">E-CATERING</h2>
		</div>
		<div class="all_logo_Container5">
			<i class="fa fa-bus image_logo"></i>
			<h2 class="logo_scehule5">BUS</h2>
		</div>
		<div class="all_logo_Container6">
			<i class="fa fa-umbrella-beach image_logo"></i>
			<h2 class="logo_scehule6">HOLIDAY PACKAGES</h2>
		</div>
		<div class="all_logo_Container7">
			<i class="fa fa-train image_logo"></i>
			<h2 class="logo_scehule7">TOURIST TRAIN</h2>
		</div>
		<div class="all_logo_Container8">
			<i class="fa fa-mountain image_logo"></i>
			<h2 class="logo_scehule8">HILL RAILWAYS</h2>
		</div>
		<div class="all_logo_Container9">
			<img src="images/charter_train2.png">
			<h2 class="logo_scehule9">CHARTER TRAIN</h2>
		</div>
		<div class="all_logo_Container10">
			<i class="fa fa-image image_logo image_logo"></i>
			<h2 class="logo_scehule10">GALARY</h2>
		</div>
	</div>
	<div class="jai_mata_di">
		<img src="images/mata_vaishno_devi_special.jpeg">
		<hr>
	</div>
	<div class="train_details">
		<h2>HOLIDAYS</h2>
		<div class="train_details_card1">
			<img class="train_img" src="images/maharaja_express.jpeg">
			<h3 class="train_details_card1_h3">Maharajas' Express</h3>
			<p class="train_details_card1_p">Redefining Royalty, Luxury and
				Comfort, Maharajas' express takes you on a sojourn to the era of
				bygone stately splendour of princely states. Sylvan furnishings,
				elegant ambience and modern amenities are amalgamated for an
				Experience Unsurpassed. It has been a winner of World
				Leading Luxury train by World Travel Awards consecutively for
				last six years.</p>
			<a class="train_details_ancher" href="maharaja_train.jsp"
				target="_blank">Read More<i class="fa fa-arrow-right"
				aria-hidden="true"></i></a>
		</div>
		<div class="train_details_card2">
			<img class="train_img" src="images/Thailand.jpg">
			<h3 class="train_details_card1_h3">International Packages</h3>
			<p class="train_details_card1_p">Best deals in International
				Holiday packages, handpicked by IRCTC, for Thailand, Dubai, Sri
				Lanka, Hong Kong, China, Macau, Bhutan, Nepal, U.K., Europe, USA,
				Australia etc. The packages are inclusive of sightseeing, meals,
				visa charges and overseas medical insurance to give you a
				hassle-free and memorable experience.</p>
			<a class="train_details_ancher" href="International_Packages.jsp"
				target="_blank">Read More<i class="fa fa-arrow-right"
				aria-hidden="true"></i></a>
		</div>
		<div class="train_details_card3">
			<img class="train_img" src="images/Kashmir.jpg">
			<h3 class="train_details_card1_h3">Domestic Air Packages</h3>
			<p class="train_details_card1_p">Be it the spiritual devotee
				seeking blessings of Tirupati, Shirdi or Mata Vaishno Devi or the
				leisure traveller wanting to relish the Blue mountains of North
				East, Sand-dunes of Rajasthan, Hamlets of Ladakh, Wonders of
				Himalayas, Serene lakes or Picturesque Islands, IRCTC has it all.
				Discover India through IRCTC!</p>
			<a class="train_details_ancher" href="Domestic_Packages.jsp"
				target="_blank">Read More<i class="fa fa-arrow-right"
				aria-hidden="true"></i></a>
		</div>
		<div class="train_details_card4">
			<img class="train_img" src="images/Bharat_Gaurav.jpg">
			<h3 class="train_details_card1_h3">Bharat Gaurav Tourist Train</h3>
			<p class="train_details_card1_p">IRCTC operates Bharat Gaurav
				Tourist Train having AC III-Tier accommodation on train specially
				designed to promote domestic tourism in India. This train runs on
				various theme based circuits covering pilgrimage and heritage
				destinations in its itinerary on a 5 days to 20 days trip of India as
				rich cultural haritage.</p>
			<a class="train_details_ancher"
				href="Bharat_Gaurav_Tourist_Train.jsp" target="_blank">Read More<i
				class="fa fa-arrow-right" aria-hidden="true"></i></a>
		</div>
		<div class="train_details_card2">
			<img class="train_img" src="images/Manali.jpg">
			<h3 class="train_details_card1_h3">Rail Tour Packages</h3>
			<p class="train_details_card1_p">IRCTC offers Exclusive Rail tour
				packages with confirmed train tickets, sight-seeing and meals for
				enchanting Nilgiri Mountains, Darjeeling, Kullu Manali, Kashmir,
				Gangtok or divine tours of Mata Vaishno Devi, Rameswaram, Madurai,
				Shirdi, Tirupati etc. Holiday packages/ Land packages to these
				destinations are also available.</p>
			<a class="train_details_ancher" href="Rail_Tour_Packages.jsp"
				target="_blank">Read More<i class="fa fa-arrow-right"
				aria-hidden="true"></i></a>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="css/script.js"></script>

</body>
</html>