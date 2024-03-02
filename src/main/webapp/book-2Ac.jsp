<%@page import="java.time.LocalTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="com.admin.Train"%>
<%@page import="com.admin.TrainDataBase"%>
<%
	int trainNumber = Integer.parseInt(request.getParameter("trainNumber"));
	Train train = TrainDataBase.getTrainRecord(trainNumber);
	String totalTime = train.getTotalTime();
	int tNumber = train.getTrainNumber();
	String tName = train.getTrainName();
	String startTime = train.getStart();
	String endTime = train.getEnd();
	String from = train.getJourneyFrom();
	String to = train.getJourneyTo();
	int price = train.getAccPrice();

	DateTimeFormatter formatter1 = DateTimeFormatter.ofPattern("HH:mm");
	LocalTime startTimee = LocalTime.parse(startTime, formatter1);
	LocalTime newTime = startTimee.minusMinutes(10);
	String arrivalTime = newTime.format(formatter1);

	String em = (String) session.getAttribute("email");
	StringBuilder maskedEmail = new StringBuilder();
	int atIndex = em.indexOf('@');
	if (atIndex > 0) {
		int st = Math.min(2, atIndex);
		maskedEmail.append(em, 0, st);
		for (int i = st; i < atIndex; i++) {
			maskedEmail.append('*');
		}
		maskedEmail.append(em, atIndex, em.length());
		String ema = maskedEmail.toString();
%>

<!DOCTYPE html>
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
<nav class="navbar bg-white fixed-top">
		<div class="mt-0">
			<%@include file="user-header.jsp"%>
		</div>
	</nav>	
<hr>
	<div class="sl_container">
		<div class="sl_container_box">
			<div class="sl_box">
				<div class="train-list-details-head">
					<strong><%=tName%> (<%=tNumber%>)</strong> <span>Runs On: M
						T W T F S S</span>
				</div>
				<div class="sl_container-Head">
					<span><strong id="s"><%=startTime%> | <%=from%></strong> <%=session.getAttribute("day")%>,
						<%=session.getAttribute("date")%></span>
					<p><%=totalTime%></p>
					<b><%=endTime%> | <%=to%> </b> <span> <%=session.getAttribute("nextDay")%>,
						<%=session.getAttribute("nextDate")%></span>
				</div>
				<hr>
				<strong class="sleeper-heading">AC 2 Tier (2A) | General</strong>
				<div class="sl_container-subHead">
					<span>Boarding Station |<b> <%=from%></b> | Arrival: <b><%=arrivalTime%></b>
						| Departure: <b><%=startTime%></b> | Day: <b>1</b> | Boarding
						Date: <b><%=session.getAttribute("date")%> 2024</b></span>
				</div>
				<strong class="sleeperNtes">Please check <span>NTES
						website</span> or <span>NTES app</span> for actual time before boarding
				</strong>
			</div>
			<form action="2Ac-booking-review.jsp" method="post" class="needs-validation" id="myForm"
				novalidate>
				<div class="user-details">
					<div class="user-details-head">
						<ul>
							<li>Note: Please submit full name of the passengers instead
								of initials.</li>
							<li>Note: The ID card will be required during journey</li>
						</ul>
					</div>
					<strong class="Det">Passenger Details</strong>
					<div><input type="hidden" name="trainNumber" value=<%=trainNumber %> readonly>
						<div class="sl-form-container">
							<div class='row form-group' style="margin-left: .5rem;">
								<div class='col-md-3'>
									<input type='text' name="name" id='name' class='form-control'
										placeholder="Passenger Name" required />
									<div class="invalid-feedback">Name is Required.</div>
								</div>
								<div class='col-md-2'>
									<input type='number' name="age" id='age' class='form-control'
										placeholder="Age" min="1" max="125"
										onkeyup="return checkAge()" required /> <small></small>
									<div class="invalid-feedback">Age is Required.</div>
								</div>
								<div class='col-md-3'>
									<select name="gender" id="gender" class='form-select'
										required>
										<option hidden='' value="">Gender</option>
										<option>Male</option>
										<option>Female</option>
										<option>TransGender</option>
									</select>
									<div class="invalid-feedback">Gender is Required.</div>
								</div>
								<div class='col-md-3'>
									<select name="country" id="country" class='form-select'
										required>
										<option selected>India</option>
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
										<option>Sri Lanka</option>
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
						</div>
					</div>
				</div>
				<div class="sl_contact">
					<strong class="Det">Contact Details</strong>
					<p>
						(Ticket details will be sent to email-
						<%=ema%>)
					</p>
					<%
						}
					%>
					<div class='row form-group'>
						<div class='col-md-3'>
							<span>91</span> <input type='text' style="" name="phone"
								id='phone' class='form-control'
								placeholder="Passenger Mobile Number*" maxlength="10"
								autocomplete="off" onkeypress='return ((event.charCode >= 48 && event.charCode <= 57) ||  event.charCode == 0)'					
						 required />
							<div class="invalid-feedback" style="margin-left: 5rem;">Mobile
								number is Required.</div>
						</div>
					</div>
				</div>
				<div class="sl_insurance">
					<p>
						<strong>Travel Insurance (Incl. of GST)</strong>
						<small>Do you want to take Travel Insurance (&#x20B9;0.35/person)?</small>
					</p>
					<input type="radio" name="insurance" value="true" checked><span>Yes,
						and I accept the </span> <a target="blank" href="pdf/Insurance_T&C.pdf">terms and
						conditions</a> <input type="radio" name="insurance" value="false"
						style="margin-left: 8rem;">
						 <span>No, I don't want travel insurance</span>
				</div>
				<a href="javascript:history.back()" class="anc_bt">Back</a>
				<button type="submit" class="bt">Continue</button>
			</form>
			<div class="sl_banner"></div>
			<div class="sl_about">
				<p>*This availability is for all berths, not for your preferred
					berth type. As tickets are booked throughout the country across PRS
					counters, any confirmed status shown above may decline into RAC/
					Waiting List status, while your payment being processed.</p>
				<p>*If for any reason, the reservation output details are not
					displayed on your screen after you have made payments,please check
					the details in Booking History under My Account in top navigation
					bar. You may also check your mail for the details of your booking.
					You are also advised to contact Indian Railways before trying to
					book your ticket again.</p>
				<p>*The ID card will be required during journey. One of the
					passenger booked on an e-ticket should have any of the nine
					identity cards(Voter Photo Identity Card / Passport / PAN Card /
					Driving License issued by a RTO/ Photo Identity card issued by
					Central / State Govt / Student Photo Identity Card issued by
					recognized School or College for their students/ Nationalized Bank
					Passbook with photograph/Credits Cards issued by banks with
					laminated photograph / Unique Identification Card Aadhaar) during
					train journey in original.The identification details are required
					at the time of Tatkal booking.</p>
				<p>*This choice shall not be applicable in case confirmed
					accommodation is not available in the train</p>
				<p>*Booking shall be done in PRS in the coach given by the user
					if seats are available, otherwise the passenger is allotted in any
					other coach.</p>
			</div>
		</div>
		<div class="ticket_fare">
			<div class="ticket_fare_price">
				<div class="ticket_fare_price_head">
					<b>Fare Summary</b>
				</div>
				<b class="ticket_b">Ticket Fare</b><span class="ticket_s">&#x20B9;<%=price%></span>
				<div class="ticket_fare_price_subhead">
					<b>Total Fare</b><span>&#x20B9;<%=price%></span>
				</div>
				<div class="ticket_fare_img"></div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
	<script src="css/script.js"></script>
</body>
</html>
