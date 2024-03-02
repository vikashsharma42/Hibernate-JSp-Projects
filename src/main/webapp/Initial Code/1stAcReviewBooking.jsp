<%@page import="com.admin.Train"%>
<%@page import="com.admin.TrainDataBase"%>
<%
   
   int trainNumber=Integer.parseInt(request.getParameter("trainNumber"));
   session.setAttribute("tNumber", trainNumber);
   Train train= TrainDataBase.getTrainRecord(trainNumber);
   String trainName=train.getTrainName();
   String from=train.getJourneyFrom();
   String to=train.getJourneyTo();
   String startTime=train.getStart();
   String endTime=train.getEnd();
   String totalTime=train.getTotalTime();
   int seat=train.getAc();
   int price=train.getAcPrice();
   
   String name=request.getParameter("name");
   int age=Integer.parseInt(request.getParameter("age"));
   String phone=request.getParameter("phone");
   String gender=request.getParameter("gender");
   String country=request.getParameter("country");
   
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
  <meta name="Description" content="IRCTC Next Generation eTicketing System">
  <meta name="theme-color" content="#213d77"/>
  <link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="icon" href="images/logo.png"/>
  <title>IRCTC Next Generation eTicketing System</title>
</head>
<body onload="totalPrice();myCaptcha();">
<!-- -------------<%@ include file="user-header.jsp"%>--------><hr>
	<div class="sl_Review">
		<div class="sl_Review_container">
		  <div class="sl_Review_Box">
		  	<div class="sl_Review_Box_Head">
		  	   <strong><%=trainName %> (<%=trainNumber %>)</strong>
		  </div>
		  <div class="sl_Review_Box_Head_Container">
		  	<span><%=startTime %> | <strong><%=from %></strong> Mon, 12 Feb</span>
		  	<p><%=totalTime %></p>
		  	<label><%=endTime %> | <strong><%=to %></strong> Tue, 13 Feb</label>
		  	<b>available 000<%=seat %></b>
		  </div>	
		  <div class="sl_Review_Box_subHead">
		  	<strong>1 Adult | AC 1 Tier (1A) | General | Boarding at <%=from %> | Boarding Date: <%=session.getAttribute("date")%> 2024 <%=startTime %></strong>
		  </div>
		   <small>Please check <strong style="color: #0047AB;">NTES website</strong>or <strong style="color: #0047AB;">NTES app</strong> for actual time before boarding</small>	  	
		  </div>	
		  <div class="Review_Box">
		  	<div class="Review_Box_Head">
		  		<strong>Passenger Details</strong>
		  	</div>
		  	<b>1 <%=name %></b>
		  	<small><%=age %> yrs | <%=gender %> | <%=country %> </small>
		  </div>
		   <div class="Review_Box_SubHead">
		  	<span>Your ticket will be sent to<strong> <%=ema %></strong></span>
		</div>
		<%
		     }
		%>
		<a href="pdf/Refundrule2015.pdf" target="anc_bt">View Cancellation Policy</a>
		<div class="Review_banner"></div>
		<form method="post" action="1Ac-card.jsp" class="needs-validation" novalidate>
		<div class="Review_input">
			<div class='col-md-11'>
            <input type="text" class="form-control captcha" id="mainCaptcha" name="mainCaptcha" readonly >
           </div>
             <img src="register/refresh.jpg" onclick="myCaptcha()">
             <div class='col-md-12'>
           <input type="text" class="form-control" id="captca" name="captcha" placeholder="Enter Captcha" required>
           <h5></h5>
           <div class="invalid-feedback">Please enter Captcha</div>
		</div>
	</div>
	<div class="Review_button">
	<a href="javascript:history.back()" >Back</a>
<button type="submit" onclick="return checkCaptcha()">Continue</button>
</div>
</form>
<div class="sl_banner"></div>
	</div>
		<div class="sl_Review_container_box">
			<div class="sl_Review_container_box_head">
				<strong>Fare Summary</strong>
			</div>
			<div class="sl_Review_container_child">
				<p>Ticket Fare<label style="margin-left: 11.8rem;">&#x20B9;</label><span id='ticketFare'><%=price %></span></p>
				<p>Convenience Fee (Incl. of GST)<label>&#x20B9;</label><span id='conFee'>15.6</span></p>
			     <P>Travel Insurance (Incl. of GST)<label>&#x20B9;</label><span id='insurance'>0.35</span></P>
			</div>
			<div class="sl_Review_container_subchild">
				<p>Total Fare<label>&#x20B9;</label><span id='totalFare'></span></p>
			</div>
			<div class="sl_Review_banner"></div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
<script src="css/script.js"></script>
</body>
</html>
<%
  session.setAttribute("name",name);
  session.setAttribute("age",age);
  System.out.println("review "+age);
  session.setAttribute("gender",gender);
  session.setAttribute("country",country);
  session.setAttribute("phone",phone);
  session.setAttribute("price",price);
%>