<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.admin.*"%>
<%
	session = request.getSession(false);
	if (session == null || session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}

	String from = request.getParameter("from");
	String to = request.getParameter("to");
	String classes = request.getParameter("classes");
	String dates = request.getParameter("jdate");

	LocalDate specificDate = LocalDate.parse(dates);
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MMM yyyy");
	String formattedDate = specificDate.format(formatter);
	DateTimeFormatter formatters = DateTimeFormatter.ofPattern("dd MMM");
	String formattedDates = specificDate.format(formatters);
	String dayOfWeek = specificDate.getDayOfWeek().toString().substring(0, 3).toLowerCase();
	LocalDate nextDate = specificDate.plusDays(1);
	String formattedNextDay = nextDate.format(formatters);
	String nextDayOfWeek = nextDate.getDayOfWeek().toString().substring(0, 3).toLowerCase();

	session.setAttribute("date", formattedDates);
	session.setAttribute("nextDate", formattedNextDay);
	session.setAttribute("day", dayOfWeek);
	session.setAttribute("nextDay", nextDayOfWeek);
%>

<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/in.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="images/logo.png" />
<script type="text/javascript" src="css/script.js"></script>
<title>IRCTC Next Generation eTicketing System</title>
</head>
<style>
/*------Style for the modal and its content---------*/
.modal {
	margin-left: 74rem;
	top: 24rem;
	float: right;
	width: 23%;
	height: 10vh;
}

.modal-content {
	background-color: #FFD580;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	height: 10vh;
}

.close {
	color: #000;
	float: right;
	margin-top: -1.3rem;
	margin-left: 14.5rem;
	font-size: 28px;
	font-weight: 900;
}

.model_msg {
	margin-top: -1.2rem;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: underline;
	cursor: pointer;
}
</style>
<body>
	<div class="train-form">
		<div class="train-form-container">
			<form action="search-train.jsp" method="post" style="display: flex;"
				onscroll="checkButton()">
				<!-- <input type='text' name="from" id='from' class='form-control'
					placeholder="From*" required /> <input type='text' name="to"
					id='to' class='form-control' placeholder="To*" required /> ---->
				<div class='col-md-2'>
					<select name="from" id='from' class='form-select' required>
						<option value="" disabled selected>From</option>
						<option>Delhi</option>
						<option>Patna</option>
						<option>Gaya</option>
						<option>Mumbai</option>
						<option>Ayodhya</option>
						<option>Howrah</option>
					</select>
				</div>
				<div class='col-md-2' style="margin-left: 6px;">
					<select name="to" id='to' class='form-select' required>
						<option value="" disabled selected>To</option>
						<option>Patna</option>
						<option>Gaya</option>
						<option>Mumbai</option>
						<option>Ayodhya</option>
						<option>Howrah</option>
						<option>Delhi</option>
					</select>
				</div>
				<div class='col-md-2' style="margin-left: 6px;">
					<input type='date' name="jdate" id='jdate' class='form-control'
						value="<%=dates%>" required>
				</div>
				<div class='col-md-2' style="margin-left: 6px;">
					<select name="classes" id='classes' class='form-select' required>
						<option value="all classes">All Classes</option>
						<option value="3a">AC 3 Tier (3A)</option>
						<option value="2a">AC 2 Tier (2A)</option>
						<option value="1a">AC 1 Tier (1A)</option>
						<option value="sl">Sleeper (SL)</option>
						<option value="2a">Second Sitting (2S)</option>
					</select>
				</div>
				<div class='col-md-2' style="margin-left: 6px;">
					<select name="quota" id='quota' class='form-select' required>
						<option value="general">GENERAL</option>
						<option>LADIES</option>
						<option>LOWER BERTH</option>
					</select>
				</div>
				<button type="submit" onclick=" return matchJourney()">Modify
					Search</button>
			</form>
		</div>
	</div>
	<%
		List<Train> listTrain = TrainDataBase.searchTrain(from, to);
		request.setAttribute("listTrain", listTrain);
		Iterator<Train> itr = listTrain.iterator();
		Long totalCount = TrainDataBase.TotalCount(from, to);
	%>
	<div class="train-list-span">
		<span><%=totalCount%> Results for<b> <%=from%> <i
				class="fa fa-arrow-right"></i><%=to%> | <%=dayOfWeek%>,<%=formattedDate%>
		</b> For Quota | General</span>
	</div>
	<%
		while (itr.hasNext()) {
			Train t = (Train) itr.next();
	%>
	<div class="train-list">
		<div class="train-form-left-container"></div>
		<div class="train-form-center-container">
			<div class="train-list-details">
				<form method='post' action='book-sl-class.jsp'>
					<div class="train-list-details-head">
						<strong><%=t.getTrainName()%>(<%=t.getTrainNumber()%>)</strong> <span>Runs
							On: M T W T F S S</span> <input type='hidden' name='trainNumber'
							value='<%=t.getTrainNumber()%>' readonly>
					</div>
					<div class="train-list-details-subHead">
						<span><b><%=t.getStart()%>|</b><%=t.getJourneyFrom()%> | 
							<%=dayOfWeek%>,<%=formattedDates%></span>
						<div class="col-md-4">
							<p class="float-right mt-2"><%=t.getTotalTime()%></p>
						</div>
						<div class="col-md-6 mt-2">
						<b class="offset-md-7"><%=t.getEnd()%> |</b><label
								class=" text-right "> <%=t.getJourneyTo()%> | <%=nextDayOfWeek%>,<%=formattedNextDay%></label>
						</div>
					</div>
					<hr>
				</form>

				<div class="train-list-time">
					<p>
						<b>Sleeper (SL)</b><b style="margin-left: 6rem;">AC 3 Tier
							(3A)</b><b style="margin-left: 6rem;">AC 2 Tier (2A)</b><b
							style="margin-left: 4rem;">AC First Class (1A)</b>
					</p>
				</div>
				<div class="train_list_container">

					<div class="train_list_Container_box">
						<b><%=dayOfWeek%>,<%=formattedDates%></b>
						<%
							if (t.getSL() > 0) {
						%>
						<strong style="margin-left: 1rem; color: green; font-weight: 750;">AVAILABLE-00</strong>
						<strong id="slPrice"
							style="margin-left: -.3rem; color: green; font-weight: 750;"><%=t.getSL()%></strong>
						<%
							} else {
						%>
						<br> <strong id="seat"
							style="margin-left: 1rem; color: #000; font-weight: 750;">Not
							AVAILABLE</strong>
						<%
							}
						%>
					</div>
					<div class="train_list_Container_box">
						<b><%=dayOfWeek%>,<%=formattedDates%></b>
						<%
							if (t.getAccc() > 0) {
						%>
						<strong style="margin-left: 1rem; color: green; font-weight: 750;">AVAILABLE-00</strong>
						<strong
							style="margin-left: -.3rem; color: green; font-weight: 750;"><%=t.getAccc()%></strong>
						<%
							} else {
						%>
						<br> <strong id="seat"
							style="margin-left: 1rem; font-weight: 750; color: #000;">Not
							AVAILABLE</strong>
						<%
							}
						%>
					</div>
					<div class="train_list_Container_box">
						<b><%=dayOfWeek%>,<%=formattedDates%></b>
						<%
							if (t.getAcc() > 0) {
						%>
						<strong style="margin-left: 1rem; color: green; font-weight: 750;">AVAILABLE-00</strong>
						<strong
							style="margin-left: -.3rem; color: green; font-weight: 750;"><%=t.getAcc()%></strong>
						<%
							} else {
						%>
						<br> <strong id="seat"
							style="margin-left: 1rem; font-weight: 750; color: #000;">Not
							AVAILABLE</strong>
						<%
							}
						%>
					</div>
					<div class="train_list_Container_box">
						<b><%=dayOfWeek%>,<%=formattedDates%></b>
						<%
							if (t.getAc() > 0) {
						%>
						<strong style="margin-left: 1rem; font-weight: 750; color: green;">AVAILABLE-00</strong>
						<strong
							style="margin-left: -.3rem; color: green; font-weight: 750;"><%=t.getAc()%></strong>
						<%
							} else {
						%>
						<br> <strong id="seat"
							style="margin-left: 1rem; font-weight: 750; color: #000;">Not
							AVAILABLE</strong>
						<%
							}
						%>
					
				</div>
				<div id="modelMsg" class="modal">
					<div class="modal-content">
						<span class="close" onclick="closerPriceModal()">&times;</span>
						<p id="msg" class="model_msg"></p>
					</div>
				</div>
			</div>
			<span id="ss"></span>
			<div class="train-list-time-ntes">
				<strong>Please check <span>NTES webSite</span> or <span>NTES
						app</span> for actual time before boarding
				</strong>
			</div>
			<div class="book_ticket_button">
				<form method='post' action='book-sl-class.jsp'
					onscroll="checkButton()">
					<input type='hidden' name='trainNumber'
						value='<%=t.getTrainNumber()%>' readonly>
					<button type="submit" onclick="return checkSlSeat(<%=t.getSL()%>)">SL
						Book</button>
					<b>&#x20B9;<%=t.getSLPrice()%></b>
				</form>
				<form method='post' action='book-3Ac.jsp'>
					<input type='hidden' name='trainNumber'
						value='<%=t.getTrainNumber()%>' readonly>
					<button type="submit" style="margin-left: 3rem;"
						onclick="return checkSlSeat(<%=t.getAccc()%>)">3A Book</button>
					<b>&#x20B9;<%=t.getAcccPrice()%></b>
				</form>
				<form method='post' action='book-2Ac.jsp'>
					<input type='hidden' name='trainNumber'
						value='<%=t.getTrainNumber()%>' readonly>
					<button type="submit" style="margin-left: 3rem;"
						onclick="return checkSlSeat(<%=t.getAcc()%>)">2A Book</button>
					<b>&#x20B9;<%=t.getAccPrice()%></b>
				</form>
				<form method='post' action='book-1Ac.jsp'>
					<input type='hidden' name='trainNumber'
						value='<%=t.getTrainNumber()%>' readonly>
					<button type="submit" style="margin-left: 3rem;"
						onclick="return checkSlSeat(<%=t.getAcc()%>)">1A Book</button>
					<b>&#x20B9;<%=t.getAcPrice()%></b>
				</form>
			</div>
		</div>
	</div>
	</div>
	<%
		}
	%>
	<br>
	<br>
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>