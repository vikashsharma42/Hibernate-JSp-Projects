<%@page import="com.admin.Train"%>
<%@page import="com.admin.TrainDataBase"%>
<%
	int trainNumber = Integer.parseInt(request.getParameter("trainNumber"));
	session.setAttribute("tNumber", trainNumber);
	Train train = TrainDataBase.getTrainRecord(trainNumber);
	String trainName = train.getTrainName();
	String from = train.getJourneyFrom();
	String to = train.getJourneyTo();
	String startTime = train.getStart();
	String endTime = train.getEnd();
	String totalTime = train.getTotalTime();
	int seat = train.getAccc();
	int price = train.getAcccPrice();

	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String phone = request.getParameter("phone");
	String gender = request.getParameter("gender");
	String country = request.getParameter("country");

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
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="Description"
	content="IRCTC Next Generation eTicketing System">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/in.css">
<link rel="stylesheet" href="css/style.css">
<link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	rel="stylesheet">
<link rel="icon" href="images/logo.png" />
<title>IRCTC Next Generation eTicketing System</title>
</head>

<body onload="totalPrice();myCaptcha()" class="bg-light">

	<nav class="navbar bg-white fixed-top">
		<div class="mt-0">
			<%@include file="user-header.jsp"%>
		</div>
	</nav>
	<div class="container mt-5" style="padding-top: 95px;">
		<div class="card">
			<div class="card-header">
				<strong class="fonts"><%=trainName%> (<%=trainNumber%>)</strong>
			</div>
			<div class="card-body">
				<label class="float-left"><%=startTime%> | <strong
					class="fonts"><%=from%> </strong> <%=session.getAttribute("day")%>, <%=session.getAttribute("date")%>  </label> <label
					class="offset-md-2"><%=totalTime%></label> <label
					class="text-center col-md-5">21:50 | <strong class="fonts">
						<%=to%> |
				</strong> <%=session.getAttribute("nextDay")%>, <%=session.getAttribute("nextDate")%> 
				</label> <label class="float-right"><b class="main-head">available
						000<%=seat%></b></label>

				<div class="mt-3 offset-md-2 col-md-7"
					style="background-color: #f5f5f5f5;">
					<strong class="ml-4">1 Adult | Sleeper (SL) | General |
						Boarding at <%=from%> | Boarding Date: <%=session.getAttribute("date")%>
						2024 <%=startTime%></strong>
				</div>
				<small class="fonts">Please check <strong
					style="color: #0047AB;">NTES website </strong>or <strong
					style="color: #0047AB;">NTES app</strong> for actual time before
					boarding
				</small>
			</div>
		</div>
		<div class="card mt-4">
			<div class="card-header">
				<strong class="fonts">Passenger Details</strong>
			</div>
			<div class="card-body">
				<label> <b>1 <%=name%></b> <small class="ml-2"><%=age%>
						yrs | <%=gender%> | <%=country%></small></label>
			</div>
		</div>
		<div class="card mt-4">
			<div class="card-header">
				<span>Your ticket will be sent to <strong><%=ema%></strong></span>
				<%
					}
				%>
			</div>
		</div>
	</div>

	<div class="col-md-11 bg-light">
		<a href="#" class="float-right">View Cancellation Policy</a>
	</div>
	<div class="d-flex">
		<div class="card mt-4 col-md-4 offset-md-3" style="height: 20%;">
			<div class="card-header" style="background: #00008B;">
				<strong  class="offset-md-3 fonts" style="color: #fff">Payment
					Details</strong>
			</div>
			<div class="card-body">
				<p>
					Ticket Fare<span class="float-right" id='ticketFare'><%=price%></span><span
						class="float-right">&#x20B9;</span>
				</p>
				<p>
					Convenience Fee(inci. of GST)<span class="float-right" id='conFee'>10</span><span
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
		<div class="card card col-md-3 mt-4 offset-md-1">
			<img src="register/right-banner.jpeg">
			<div class="d-flex">
				<input type="text" class="form-control captcha" id="mainCaptcha"
					name="mainCaptcha" readonly> <img
					src="register/refresh.jpg" style="height: 100%; width: 10%;"
					onclick="myCaptcha()">
			</div>
			<div class="col-md-12 ">
				<form method="post" action="3Ac-card.jsp" class="needs-validation" novalidate>
					<input type="text" class="form-control" id="captca" name="captcha"
						placeholder="Enter Captcha" required>
					<h5></h5>
					<div class="invalid-feedback" style="font-size: 1rem;">Please
						enter Captcha</div>
					<div class="offset-md-2">
						<a href="javascript:history.back()" class="back-button">Back</a>
						<button type="submit" class="next-button offset-md-1" onclick="return checkCaptcha()">Continue</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<div class="card mt-5 col-md-8 offset-md-2">
		<img src="register/sl-banner.jpeg">
	</div>
	<%@ include file="footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="css/script.js"></script>
</body>
</html>
<%
	session.setAttribute("name", name);
	session.setAttribute("age", age);
	session.setAttribute("gender", gender);
	session.setAttribute("country", country);
	session.setAttribute("phone", phone);
	session.setAttribute("price", price);
%>