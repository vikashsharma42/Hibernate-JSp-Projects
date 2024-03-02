
<%@page import="com.passenger.*"%>
<%@page import="com.admin.*"%>
<%
	String fname = (String) session.getAttribute("fname");
	String lname = (String) session.getAttribute("lname");
	String dummyEmail = (String) session.getAttribute("email");

	int trainNumber = (Integer) session.getAttribute("tNumber");
	Train train = TrainDataBase.getTrainRecord(trainNumber);
	String trainName = train.getTrainName();
	String from = train.getJourneyFrom();
	String to = train.getJourneyTo();
	String startTime = train.getStart();
	String endTime = train.getEnd();
	String totalTime = train.getTotalTime();
	int price = train.getAcccPrice();

	int tId = (Integer) request.getAttribute("transactionId");
	String date = (String) session.getAttribute("date");
	String day = (String) session.getAttribute("day");
	String nextDate = (String) session.getAttribute("nextDate");
	String nextDay = (String) session.getAttribute("nextDay");

	int pnr = (Integer) request.getAttribute("pnr");
	passengerDetails passenger = passengerDatabase.getPassengerRecord(pnr);
	String name = passenger.getName();
	int age = passenger.getAge();
	String gender = passenger.getGender();
	String country = passenger.getCountry();
	String coach = passenger.getCoach();
	int berth = passenger.getBerthNo();
	String localDate = passenger.getBookingDate();
	String localTime = passenger.getBookingTime();

	StringBuilder maskedEmail = new StringBuilder();
	int atIndex = dummyEmail.indexOf('@');
	if (atIndex > 0) {
		int st = Math.min(2, atIndex);
		maskedEmail.append(dummyEmail, 0, st);
		for (int i = st; i < atIndex; i++) {
			maskedEmail.append('*');
		}
		maskedEmail.append(dummyEmail, atIndex, dummyEmail.length());
		String email = maskedEmail.toString();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Description"
	content="IRCTC Next Generation eTicketing System">
<meta name="theme-color" content="#213d77" />
<link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/in.css">
<link rel="icon" href="images/logo.png" />
<title>IRCTC Next Generation eTicketing System</title>
</head>

<body class="bg-light" onload="totalPrice()">
	<div class="container mt-4">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">
					Thank You
					<%=fname%>
					<%=lname%>,
				</h5>
				<h6 class="card-subtitle mb-2 main-head">Congratulations! You
					have successfully booked a ticket</h6>
				<p class="card-text">
					Booking details will be sent to <b><%=email%></b>
				</p>

				<div class="card mt-4">
					<div class="card-header">
						<strong class="fonts"><%=trainName%> (<%=trainNumber%>)</strong> <b
							class="float-right pnr">PNR: <%=pnr%></b>
					</div>
					<div class="card-body">
						<label class="float-left"><%=startTime%> | <strong
							class="fonts"> <%=from%></strong> <%=day%>,<%=date%> </label> <label
							class="offset-md-3"><%=totalTime%></label> <label
							class="ml-5 float-right"><%=endTime%> | <strong
							class="fonts"><%=to%> </strong> <%=nextDay%>, <%=nextDate%> </label>

						<div class="mt-1 offset-md-3 col-md-5"
							style="background-color: #f5f5f5;">
							<strong class="ml-4">1 Adult | AC 1 Tier (1A) | General |
								Boarding at <%=from%></strong>
						</div>
					</div>
				</div>

				<a href="#" class="float-right cancle-anchor">View Cancellation
					Policy</a>

				<div class="card mt-4">
					<div class="card-header">
						<strong class="fonts">Passenger Details</strong>
					</div>
					<div class="card-body">
						<label> <b>1 <%=name%></b> <small class="ml-2"><%=age%>
								yrs | <%=gender%> | <%=country%></small></label>

						<div class="col-md-12 mt-1 d-flex">
							<span class="text-muted">Booking Status</span> <span
								class="text-muted offset-md-3">Coach</span> <span
								class="text-muted offset-md-3">Berth</span>
						</div>

						<div class="d-flex">
							<strong class="fonts">CNF</strong> <b class="offset-md-4 fonts"><%=coach%></b>
							<b class="offset-md-3 fonts"><%=berth%></b>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card mt-4 col-md-3 offset-md-4">
			<div class="card-header" style="background: #00008B;">
				<p class="text-center fonts" style="color: #fff">Payment Details</p>
			</div>
			<div class="card-body">
				<p>
					Transaction Id<span class="float-right">100000<%=tId %></span>
				</p>
				<p>
					Booking Date<span class="float-right"><%=localDate%> | <%=localTime%></span>
				</p>
				<p>
					Ticket Fare<span class="float-right" id='ticketFare'><%=price%></span><span
						class="float-right">&#x20B9;</span>
				</p>
				<p>
					Convenience Fee(inci. of GST)<span class="float-right" id='conFee'>15</span><span
						class="float-right">&#x20B9;</span>
				</p>
				<p>
					Convenience Fee(inci. of GST)<span class="float-right"
						id='insurance'>0.35</span><span class="float-right">&#x20B9;</span>
				</p>
				<strong>Total Amount paid<span class="float-right"
					id='totalFare'></span><span class="float-right">&#x20B9;</span></strong>
			</div>
		</div>
	</div>
	<div class="mt-4">
		<a href="user-index.jsp" class="btn btn-primary offset-md-5">Book Return Ticket</a>
		<br>
		<br>
		<br>
		<br>
		<br>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
	<script src="css/script.js"></script>
</body>
</html>
<%
    TrainDataBase.removeDataFromCache();
%>