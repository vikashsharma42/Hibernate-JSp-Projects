<%@page import="com.passenger.*"%>
<%@page import="com.admin.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="javax.mail.*"%>
<%@page import="java.util.*"%>
<%
	session.removeAttribute("name");
	session.removeAttribute("age");
	session.removeAttribute("phone");
	session.removeAttribute("gender");
	session.removeAttribute("country");
	session.removeAttribute("price");

	int trainNumber = (Integer) session.getAttribute("tNumber");
	Train train = TrainDataBase.getTrainRecord(trainNumber);
	String trainName = train.getTrainName();
	String journeyFrom = train.getJourneyFrom();
	String journeyTo = train.getJourneyTo();
	String startTime = train.getStart();
	String endTime = train.getEnd();
	String totalTime = train.getTotalTime();
	int price = train.getSLPrice();

	int tId = (Integer) request.getAttribute("transaction");
	int pnr = (Integer) request.getAttribute("pnr");
	passengerDetails passenger = passengerDatabase.getPassengerRecord(pnr);
	String name = passenger.getName();
	int age = passenger.getAge();
	String gender = passenger.getGender();
	String coach = passenger.getCoach();
	int berth = passenger.getBerthNo();
	String phone = passenger.getPhone();
	String localDate = passenger.getBookingDate();
	String localTime = passenger.getBookingTime();

	String date = (String) session.getAttribute("date");
	String nextDate = (String) session.getAttribute("nextDate");
	double totalPrice = price + 10 + 0.35;

	final String from = "sharmag620098@gmail.com";
	final String emailPassword = "ybgw dmvb myvi xzps";
	//String email = (String) session.getAttribute("email");
	String email = "vikashkumarjh2009@gmail.com";

	if (email != null || email.equals("")) {

		String to = email;
		Properties props = new Properties();
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		Session mailSession = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, emailPassword);
			}
		});
		try {
			MimeMessage msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject("Booking Confirmation on IRCTC, Train: " + trainNumber + ", " + date + "-2024, SL, "
					+ journeyFrom + " - " + journeyTo + "");
			String htmlContent = "<!DOCTYPE html>"
					+ "<html><body><div style='background-color: gray; width: 99%;'>"
					+ "<div style='margin-left: .5rem; width: 99%; margin-top: .5rem;'> <hr style='width: 100.5%;'>"
					+ " This is a system generated mail. Please do not reply to this email ID. (1) Call our 24-hour Customer Care (2) Email"
					+ "Us at <small style='color:#0437F2;'>care@irctc.co.in</small>"
					+ "<hr style='width: 100.5%;'>" + "</div>	"
					+ " <div style='margin-left: .5rem; width: 100%;'>"
					+ "<small style='color: #0437F2'>Ticket Confirmation</small><br>" + "<strong>"
					+ session.getAttribute("fname") + " " + session.getAttribute("lname") + "(User Id:"
					+ session.getAttribute("username") + "),</strong>"
					+ " <p>Thank you for using IRCTC's online rail reservation facility. Your booking details are indicated below.</p> </div>"

					+ " <div style='color:white; display: flex; margin-left: .5rem; width: 100%;'>"
					+ "   <div style='width: 15.6%; color: black;'>" + "   <div>"
					+ "      <strong>PNR No. :</strong><br>" + "    </div><hr>             " + "    <div>"
					+ " <strong>Transaction ID :</strong><br>" + "   <hr>" + "   </div>" + "  <div>"
					+ "      <strong>From :</strong><br>" + "       <hr>" + "   </div>" + "   <div>"
					+ "        <strong>Boarding At :</strong><br>" + "        <hr>" + "    </div>" + "    <div>"
					+ "        <strong>Reservation Up to :</strong><br>" + "        <hr>" + "    </div>"
					+ "  <div>" + "   <strong>Passenger Mobile No :</strong><br>" + "  <hr>" + " </div>"
					+ "</div>"

					+ " <div style='width: 15.6%;margin-left: .5rem; '>" + "      <div>" + "     <strong>" + pnr
					+ "</strong><br>" + "       <hr>" + "      </div>" + "      <div>"
					+ "        <strong>100000" + tId + "</strong><br>" + "        <hr>" + "    </div>"
					+ "     <div>" + "       <strong>" + journeyTo + "</strong><br>" + "       <hr>"
					+ "     </div>" + "   <div>" + "    <strong>" + journeyTo + "</strong><br>" + "    <hr>"
					+ "   </div>" + "   <div>" + "     <strong>" + journeyFrom + "</strong><br><hr>"
					+ "   </div>" + "   <div>" + "     <strong>" + phone + "</strong><br>" + "       <hr>"
					+ "   </div>" + "    </div>"
					+ "    <div style='width: 15.6%;margin-left: .5rem ; color: black;'>" + "   <div>"
					+ "   <strong>Train No. :</strong><br>" + "     <hr>" + "     </div>" + "     <div>"
					+ "        <strong>Time of Booking :</strong><br>" + "        <hr>" + "    </div>"
					+ "    <div>" + "       <strong>Date of Journey :</strong><br>" + "      <hr>" + "  </div>"
					+ "    <div>" + "     <strong>Date Of Boarding :</strong>" + "  <hr>" + "  </div>"
					+ "  <div>" + "   <strong>Scheduled Arrival :</strong><br>" + "           <hr>"
					+ "        </div>" + "          <div>" + "  <strong>Distance :</strong><br>" + "     <hr>"
					+ "    </div>" + "   </div>" + "      <div style='width: 15.6%;margin-left: .5rem;'>"
					+ "     <div>" + "      <strong>" + trainNumber + "</strong><br>" + "     <hr>" + " </div>"
					+ "   <div>" + "      <strong>" + localDate + " " + localTime + "</strong><br>"
					+ "     <hr>" + "   </div>" + "    <div>" + "       <strong>" + date + " 2024 </strong><br>"
					+ "       <hr>" + "    </div>" + "    <div>" + "        <strong>" + date + " 2024 </strong>"
					+ "        <hr>" + "     </div>" + "     <div>" + "      <strong>" + nextDate
					+ " 2024</strong><br>" + "    <hr>" + "   </div>" + "   <div>"
					+ "  <strong>1000 KM</strong><br>" + "   <hr>" + "        	   </div>" + "   </div>"
					+ " <div style='width: 15.6%;margin-left: .5rem;  color: black ;'>" + "   <div>"
					+ "     <strong>Quota :</strong><br>" + "     <hr>" + "   </div>" + "  <div>"
					+ "    <strong>Class :</strong><br>" + "    <hr>" + "    </div>" + "    <div>"
					+ "   <strong>To : </strong><br>" + "   <hr>" + "  </div>" + "  <div>"
					+ "    <strong>Scheduled Departure*</strong>" + "    <hr>" + "   </div>" + "   <div>"
					+ "      <strong>Adult :1</strong><br>" + "     <hr>" + " </div>" + "  <div>"
					+ "      <strong>Insurance(No. of Psng)</strong><br>" + "      <hr>" + "    </div>"
					+ "  </div>" + "    <div style='width: 15.6%;margin-left: .5rem;'>" + "  <div>"
					+ "    <strong>General</strong><br>" + "     <hr>" + "  </div>" + "  <div>"
					+ "   <strong>Sleeper Class</strong><br>" + "   <hr>" + "  </div>" + "   <div>"
					+ "   <strong>" + journeyFrom + " </strong><br>" + "   <hr>" + " </div>" + "<div>"
					+ "<strong>" + localDate + " " + localTime + "</strong>" + "    <hr>" + " </div>"
					+ "  <div>" + "    <strong>Chilid: 0</strong><br>" + "    <hr>" + " </div>" + "  <div>"
					+ "  <strong>1</strong><br><hr>" + "   </div>" + " </div>" + " </div>"
					+ "<div style='width: 100%;'>"
					+ " <strong style='color:#0437F2;  margin-left: .5rem;'>Passenger Details</strong><hr style='margin-top: 0rem;  margin-left: .5rem; width: 99.4%'>"
					+ "</div>"
					+ " <div style='display: flex; color: white;margin-top: 0rem; font-size: .7rem; color: black;  margin-left: .5rem; width: 100%;'>"
					+ "   <div style='width:13.9%; background :#96DED1;'><strong>SI. No.</strong></div>"
					+ "   <div style='width:13.9%; background: #96DED1; margin-left: .5rem;'><strong>Name</strong></div>"
					+ " <div style='width:13.9%; background: #96DED1; margin-left: .5rem;'><strong>age</strong></div>"
					+ "<div style='width:13.9%; background: #96DED1; margin-left: .5rem;'><strong>Gender</strong></div>"
					+ " <div style='width:13.9%; background: #96DED1; margin-left: .5rem;'><strong>Status</strong></div>"
					+ " <div style='width:13.9%; background: #96DED1; margin-left: .5rem;'><strong>Coach</strong></div>"
					+ " <div style='width:12.3%;background: #96DED1; margin-left: .5rem;'><strong>Seat No</strong></div>  "
					+ "</div>"
					+ " <div style='display: flex; color: white; font-size: .7rem;margin-top: .2rem;  margin-left: .5rem'>"
					+ "  <div style='width:13.9%;'><strong>1</strong><hr></div>"
					+ " <div style='width:13.9%; margin-left: .8rem;'><strong>" + name + "</strong><hr></div>"
					+ " <div style='width:13.9%; margin-left: .8rem;'><strong>" + age + "</strong><hr></div>"
					+ " <div style='width:13.9%; margin-left: .8rem;'><strong>" + gender + "</strong><hr></div>"
					+ " <div style='width:13.9%; margin-left: .9rem;'><strong>CNF</strong><hr></div>"
					+ "<div style='width:13.9%; margin-left: .7rem;'><strong>" + coach + "</strong><hr></div>"
					+ " <div style='width:12.9%; margin-left: .7rem;'><strong>" + berth
					+ "</strong><hr></div>    " + " </div>" + " <div  style='width:100%; font-size: .7rem'>"
					+ "  <strong style='color: #0437F2;'>Fare Details (Inclusive of GST)</strong><hr style='margin-top: 0rem; '>"
					+ " <div style='display: flex; color: white;margin-top: 0rem; color: black ;'>"
					+ "  <div style='width:25%; background: #96DED1; margin-left: .5rem;'><strong>Ticket Fare</strong></div>"
					+ "  <div style='width:25%; background: #96DED1; margin-left: .5rem;'><strong>Convenience Fee</strong></div>"
					+ " <div style='width:25%; background: #96DED1; margin-left: .5rem;'><strong>Travel Insurance Premium</strong></div>"
					+ " <div style='width:25%; background: #96DED1; margin-left: .5rem;'><strong>Total Fare</strong></div>  "
					+ " </div>" + " <div style='display: flex; color: white;margin-top: .2rem; '>"
					+ "    <div style='width:25%; margin-left: .5rem;'><strong>Rs. " + price
					+ "</strong><hr></div>"
					+ "   <div style='width:25%; margin-left: .5rem;'><strong>Rs. 10</strong><hr></div>"
					+ "  <div style='width:25%; margin-left: .5rem;'><strong>	Rs. 0.35</strong><hr></div>"
					+ "  <div style='width:25%; margin-left: .5rem;'><strong>Rs. " + totalPrice
					+ " *</strong><hr></div>  " + "  </div>" + " <div  style='width: 100%;'>"
					+ "    <strong style='color:#0437F2;  margin-left: .5rem;'>Must Read</strong><hr style='margin-top: 0rem;  margin-left: .5rem;'>"
					+ " </div>" + " <div style='display: flex; color: white;margin-top: .2rem; '>"
					+ "  <ul style='color: black; font-size: .7rem;'>" + " <li>"
					+ " Please take a screenshot of ERS i.e. Virtual Reservation Message(VRM) OF "
					+ "YOUR TICKET FROM YOUR Booked Tickets History page .You have to carry this "
					+ " VRM or SMS send to you along with any Govt. authorized ID Card during train "
					+ " journey in original. Both theSMS(or VRM)& original ID will be examined by ticket "
					+ " checking staff on stations/trains for verification purpose. List of Govt. authorized "
					+ " ID Cards permissible for undertaking journey on reserved tickets." + "  </li>" + " <li>"
					+ "    This ticket is booked on a personal user ID and can not be sold by an agent. If bought from an agent by any individual, it is at his/her own risk"
					+ " </li>" + " <li>"
					+ "Passengers are advised not to carry inflammable/dangerous/explosive articles as part of their luggage and also to desist from smoking in the trains."
					+ " </li>  " + "</ul>" + " </div><hr style='margin-left: .5rem;'>"
					+ " <div style='margin-left: .5rem;'>"
					+ " <p>To book and get food delivered on your train berth, please call IRCTC Toll free No. 1323 or log in at www.ecatering.irctc.co.in</p>"

					+ " <p>*********************************************************************************************************************************</p>"
					+ " </div>" + " <div style='margin-left: .5rem;'>"
					+ " <strong style='color:#0437F2; font-size: 1rem;'>Please don't print unless extremely necessary.</strong></div>"
					+ " <div style='margin-left: .5rem;'>"
					+ "<small style='font-size: .6rem;flex-direction: column;'>Warm Regards,</small></div>"
					+ " <div style='margin-left: .5rem;'><small style='font-size: .6rem;'> Customer Care</small></div>"
					+ "<div style='margin-left: .5rem;'><small style='font-size: .6rem;'>Internet Ticketing</small></div>"
					+ "<div style='margin-left: .5rem;'><small style='font-size: .6rem;'>IRCTC</small></div>"
					+ "</div>" + "</div>" + "</body></html>";

			msg.setContent(htmlContent, "text/html; charset=utf-8");
			Transport.send(msg);
		} catch (MessagingException ex) {
			throw new RuntimeException(ex);
		}
	}
	request.setAttribute("transaction", tId);
	request.setAttribute("pnr", pnr);
	RequestDispatcher dispatcher = request.getRequestDispatcher("sl-booking.jsp");
	dispatcher.forward(request, response);
%>