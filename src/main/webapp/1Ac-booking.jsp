<%@page import="com.admin.TrainDataBase"%>
<%@page import="com.passenger.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ include file="session.jsp"%>
<%
	Random random = new Random();
	int tId = random.nextInt(1254789654);
	int dummyPnr=random.nextInt(582545);
	int pnr=dummyPnr*23;
	int coaches=random.nextInt(3);
	int dummyCoach=coaches+1;
	String coach="H"+dummyCoach;
	int bearth=random.nextInt(10);
	String status="CNF";
	
	String name=(String)session.getAttribute("name");
	int age=(Integer)session.getAttribute("age");
	String phone=(String)session.getAttribute("phone");
	String gender=(String)session.getAttribute("gender");
	String country=(String)session.getAttribute("country");
	String journeyDate=(String)session.getAttribute("date");
	int DummyPrice=(Integer)session.getAttribute("price");
	double price=(double)DummyPrice+10+0.35;
	String booking="1Ac";
	
	SimpleDateFormat localDateFormat = new SimpleDateFormat("dd MMM yyyy");
	String localDate=localDateFormat.format(Calendar.getInstance().getTime());
	Date currentTime = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("hh:mm a");
    String localTime = dateFormat.format(currentTime);
    
   
    int trainNumber = (Integer)session.getAttribute("tNumber");
    TrainDataBase.updateAcClass(trainNumber);
    
    passengerDetails passenger= new passengerDetails(pnr,localDate,localTime,name,age,country,coach,bearth,
			journeyDate,gender,price,booking,phone,trainNumber);
	passengerDatabase.savePassengerRecord(passenger);
	request.setAttribute("transactionId", tId);
	request.setAttribute("pnr",pnr);
	RequestDispatcher dispatcher=request.getRequestDispatcher("1AcTicket-Mail.jsp");
	dispatcher.forward(request, response);
	
%>
