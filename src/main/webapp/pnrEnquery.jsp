
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.admin.*"%>
<%@page import="com.passenger.*"%>
<%
	LocalDate localDate = LocalDate.now();
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MMM-yyyy");
	String date = localDate.format(formatter);

	int pnr = Integer.parseInt(request.getParameter("pnrNo"));

	passengerDetails passenger = passengerDatabase.getPassengerRecord(pnr);
	if (passenger != null) {
		//session.removeAttribute("pnrMessage");
		int trainNo = passenger.getTrainNo();
		Train train = TrainDataBase.getTrainRecord(trainNo);
%>

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

<body onload="getTime()">
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
				<h3 class="text-center bg-primary"
					style="padding: 7px; color: #fff;">Passenger Current Status
					Enquiry</h3>
			</div>
			<div class="col-md-12">
				<p style="font-size: 12px;" id="curDate"><%=date%>
					[<span id="time"></span>IST]
				</p>

			</div>
		</div>
		<div class="container col-md-12" style="margin-top: 0rem;">
			<div style="padding: 5px; margin-bottom: 2px">
				<div class="row">
					<div class="col-md-12">
						<h4 align="center" id="h4">
							You Queried For : PNR Number:<%=pnr%>
						</h4>
					</div>
				</div>
				<div class="row" class="col-md-12">
					<div class="col-md-12 table-responsive">
						<table border="1"
							class="table table-bordered table-responsive text-center"
							id="journeyDetailsTable">
							<thead>
								<tr class="bg-primary" style="color: #fff;">
									<th><b> Train Number </b></th>
									<th><b>Train Name</b></th>
									<th><b>Boarding Date</b></th>
									<th><b>From</b></th>
									<th><b>To</b></th>
									<th><b>Reserved Upto</b></th>
									<th><b>Boarding Point</b></th>
									<th><b>Class</b></th>
								</tr>
							</thead>
							<tbody>
								<tr class="bg" style="color: #000;">
									<th><%=trainNo%></th>
									<th><%=train.getTrainName()%></th>
									<th><%=passenger.getJDate()%> 2024</th>
									<th><%=train.getJourneyFrom()%></th>
									<th><%=train.getJourneyTo()%></th>
									<th><%=train.getJourneyTo()%></th>
									<th><%=train.getJourneyFrom()%></th>
									<th><%=passenger.getBooking()%></th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 table-responsive">
						<table border="1"
							class="table table-bordered table-responsive text-center"
							id="psgnDetailsTable" style="font-size: 13.5px;">
							<thead>
								<tr class="bg-primary" style="color: #fff;">
									<th>S. No.</th>
									<th>Booking Status (Coach No , Berth No., Quota)</th>
									<th>*Current Status (Coach No , Berth No.)</th>
									<th>Coach Position</th>
								</tr>
							</thead>
							<tbody>
								<tr class="bg" style="color: #000;">
									<th>1 Passenger</th>
									<th>CNF/<%=passenger.getCoach()%>/<%=passenger.getBerthNo()%>/GN
									</th>
									<th>CNF</th>
									<th></th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 table-responsive">
						<table border="1"
							class="table table-bordered table-responsive text-center"
							id="otherDetailsTable">
							<thead>
								<tr class="bg-primary" style="color: #fff;">
									<th>Total Fare</th>
									<th>Charting Status</th>
									<th>Remarks if any</th>
									<th>Train Status</th>
								</tr>
							</thead>
							<tbody>
								<tr class="bg" style="color: #000;">
									<th><%=passenger.getPrice()%></th>
									<th>Chart not prepared</th>
									<th></th>
									<th></th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<%
					} else {
						response.sendRedirect("pnr.jsp?error=true");
						session.setAttribute("pnrMessage", "You have entered Wrong PNR No.");
					}
				%>
				<div class="col-md-12">
					<p style="color: blue;">
						<b>*Please Note that in case the Final Charts have not been
							prepared, the Current Status might upgrade/downgrade at a later
							stage.</b>
					</p>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="text-center bg-primary"
							style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; padding-top: 3px; padding-bottom: 3px; font-weight: bold; color: #fff;">LEGEND
						</div>
						<table border="1"
							class="table table-bordered table-responsive text-center">
							<thead>
								<tr class="text-center bg-primary" style="color: #fff">
									<th style="text-align: center; font-size: 15px;"
										class="mainheading">Symbol</th>
									<th style="text-align: center; font-size: 15px;"
										class="mainheading">Description</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>CAN / MOD</td>
									<td>Cancelled or Modified Passenger</td>
								</tr>
								<tr>
									<td>CNF / Confirmed</td>
									<td>Confirmed (Coach/Berth number will be available after
										chart preparation)</td>
								</tr>
								<tr>
									<td>RAC</td>
									<td>Reservation Against Cancellation</td>
								</tr>
								<tr>
									<td>WL #</td>
									<td>Waiting List Number</td>
								</tr>
								<tr>
									<td>RLWL</td>
									<td>Remote Location Wait List</td>
								</tr>
								<tr>
									<td>GNWL</td>
									<td>General Wait List</td>
								</tr>
								<tr>
									<td>PQWL</td>
									<td>Pooled Quota Wait List</td>
								</tr>
								<tr>
									<td>REGRET/WL</td>
									<td>No More Booking Permitted</td>
								</tr>
								<tr>
									<td>RELEASED</td>
									<td>Ticket Not Cancelled but Alternative Accommodation
										Provided</td>
								</tr>
								<tr>
									<td>R# #</td>
									<td>RAC Coach Number Berth Number</td>
								</tr>
								<tr>
									<td>WEBCAN</td>
									<td>Railway Counter Ticket Passenger cancelled through
										internet and Refund not collected</td>
								</tr>
								<tr>
									<td>WEBCANRF</td>
									<td>Railway Counter Ticket Passenger cancelled through
										internet and Refund collected</td>
								</tr>
								<tr>
									<td>RQWL</td>
									<td>Roadside Quota Waitlist</td>
								</tr>
								<tr>
									<td>DPWL</td>
									<td>Duty Pass Waitlist</td>
								</tr>
								<tr>
									<td>TQWL</td>
									<td>Tatkal Quota Waitlist</td>
								</tr>
								<tr>
									<td>NT</td>
									<td>Passenger Not Turned Up</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="container" style="margin-top: 0;">

			<hr>

			<!-- Footer -->
			<footer>
				<div class="row">
					<div class="col-lg-12 text-center">
						<p style="color: #fff;">Copyright &copy; 2024, Centre For
							Railway Information Systems, Designed by Mr.Vikash</p>
					</div>
				</div>
			</footer>
		</div>
	</div>
</body>
</html>