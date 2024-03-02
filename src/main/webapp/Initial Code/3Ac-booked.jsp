<%@page import="com.passenger.*"%>
<%@page import="com.admin.*"%>
<%
	session.removeAttribute("name");
	session.removeAttribute("age");
	session.removeAttribute("phone");
	session.removeAttribute("gender");
	session.removeAttribute("country");
	session.removeAttribute("price");

	String fname = (String) session.getAttribute("fname");
	String lname = (String) session.getAttribute("lname");
	String email = (String) session.getAttribute("email");

	int trainNumber = (Integer)session.getAttribute("tNumber");
	Train train = TrainDataBase.getTrainRecord(trainNumber);
	String trainName = train.getTrainName();
	String from = train.getJourneyFrom();
	String to = train.getJourneyTo();
	String startTime = train.getStart();
	String endTime = train.getEnd();
	String totalTime = train.getTotalTime();
	int price = train.getAcPrice();

    int tId =(Integer)request.getAttribute("transactionId");
	String date = (String) session.getAttribute("date");
	String day = (String) session.getAttribute("day");
	String nextDate = (String) session.getAttribute("nextDate");
	String nextDay = (String)session.getAttribute("nextDay");
	
    int pnr = (Integer)request.getAttribute("pnr");
	passengerDetails passenger=passengerDatabase.getPassengerRecord(pnr);
	String name=passenger.getName();
	int age=passenger.getAge();
	String gender=passenger.getGender();
	String country=passenger.getCountry();
	String coach=passenger.getCoach();
	int berth=passenger.getBerthNo();
	String localDate = passenger.getBookingDate();
	String localTime = passenger.getBookingTime();
	
	StringBuilder maskedEmail = new StringBuilder();
	int atIndex = email.indexOf('@');
	if (atIndex > 0) {
		int st = Math.min(2, atIndex);
		maskedEmail.append(email, 0, st);
		for (int i = st; i < atIndex; i++) {
			maskedEmail.append('*');
		}
		maskedEmail.append(email, atIndex, email.length());
		String dummyEmail = maskedEmail.toString();
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
<link href="css/bootstrap.min.css" rel="stylesheet">

<link rel="icon" href="images/logo.png" />
<title>IRCTC Next Generation eTicketing System</title>
</head>
<body onload="totalPrice()">
	<div class="sl_Review">
		<div class="sl_Review_container">
			<h5>
				thank You
				<%=fname%>
				<%=lname%>.
			</h5>
			<h6>Congratulations!,You have successfully booked a ticket</h6>
			<p>
				Booking details will be sent to<b> <%=dummyEmail%></b>
			</p>
			<div class="sl_Review_Box" style="margin-top: -1rem;">
				<div class="sl_Review_Box_Head">
					<strong><%=trainName%> (<%=trainNumber%>)</strong> <b>PNR: <%=pnr%></b>
				</div>
				<div class="sl_Review_Box_Head_Container">
					<span><%=startTime%> | <strong><%=from%></strong> <%=day%>,
						<%=date%></span>
					<p style="margin-left: 20rem;"><%=totalTime%></p>
					<label style="margin-left: 19rem;"><%=endTime%> | <strong><%=to%></strong>
						<%=nextDay%>, <%=nextDate%></label>
				</div>
				<div class="sl_Review_Box_subHead"
					style="margin-left: 23rem; width: 450px;">
					<strong>1 Adult | AC 3 Tier (3A) | General | Boarding at <%=from%></strong>
				</div>
			</div>
			<a href="#" style="margin-top: 0rem">View Cancellation Policy</a>
			<div class="Review_Box" style="height: 22vh;">
				<div class="Review_Box_Head">
					<strong>Passenger Details</strong>
				</div>
				<b>1 <%=name %></b> <small><%=age %> yrs | <%=gender %> |
					<%=country %> </small> <label>Booking Status</label> <span>Coach</span> <span>Berth
					No</span>
				<div class="confirmBookingBox">
					<strong>CNF</strong> <b><%=coach %></b> <b style="margin-left: 21.6rem;"><%=berth %></b>
				</div>
			</div>
			<%
				}
			%>
			<div class="Review_input"></div>
			<a href="user-index.jsp" class="confirmBtn" style="color: #fff;">Book Return
				Ticket</a>
		</div>
		<div class="sl_Review_container_box"
			style="margin-top: 4.8rem; height: 42vh;">
			<div class="sl_Review_container_subchild" style="margin-top: 0rem">
				<p>Payment Details</p>
			</div>
			<div class="sl_Review_container_child">
				<p>
					Transaction Id<span>100000<%=tId %></span>
				</p>
				<p>
					Booking Date<span><%=localDate%> | <%=localTime%></span>
				</p>
				<p>
					Ticket Fare<label style="margin-left: 11.8rem;">&#x20B9;</label><span
						id='ticketFare'><%=price%></span>
				</p>
				<p>
					Convenience Fee(inci. of GST)<label>&#x20B9;</label><span
						id='conFee'>15</span>
				</p>
				<p>
					Convenience Fee(inci. of GST)<label>&#x20B9;</label><span
						id='insurance'>0.35</span>
				</p>
				<strong style="margin-left: 1rem;">Total Amount paid<label
					style="margin-left: 6.4rem;">&#x20B9;</label><span id='totalFare'></span></strong>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
	<script src="css/script.js"></script>
</body>
</html>