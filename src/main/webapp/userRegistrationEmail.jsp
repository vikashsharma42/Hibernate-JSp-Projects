<%@page import="javax.mail.internet.*"%>
<%@page import="javax.mail.*"%>
<%@page import="java.util.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
		String lname = request.getParameter("lname");
		String occupation = request.getParameter("occupation");
		String dob = request.getParameter("dob");
		String country = request.getParameter("country");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
		String pincode = request.getParameter("pincode");
		String state = request.getParameter("state");
		String street = request.getParameter("street");
		String locality = request.getParameter("locality");
		String email = request.getParameter("email");

		session.setAttribute("username", username);
		session.setAttribute("email", email);
		session.setAttribute("phone", phone);
		session.setAttribute("password", password);
		session.setAttribute("fname", fname);
		session.setAttribute("mname", mname);
		session.setAttribute("lname", lname);
		session.setAttribute("dob", dob);
		session.setAttribute("occupation", occupation);
		session.setAttribute("state", state);
		session.setAttribute("pincode", pincode);
		session.setAttribute("street", street);
		session.setAttribute("locality", locality);
		session.setAttribute("city", city);
		session.setAttribute("country", country);

		final String from = "sharmag620098@gmail.com";
		final String emailPassword = "ybgw dmvb myvi xzps";
		int otpValue = 0;
		if (email != null || email.equals("")) {
			Random random = new Random();
			otpValue = random.nextInt(1255650);

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
			//mailSession.setDebug(true);
			try {
				MimeMessage msg = new MimeMessage(mailSession);
				msg.setFrom(new InternetAddress(from));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				msg.setSubject("One Time Password(OTP)for registered Account on IRCTC");
				msg.setText("One Time Password(OTP)for registered Account on IRCTC.This is a system generated mail.Please do not reply to this email ID. If you have any query you may call our 24-hour Customer Care      Dear "
						+ session.getAttribute("fname") + " " + session.getAttribute("lname")+" Your One Time Password(OTP) for registering of user id "
						+ session.getAttribute("username") + " on IRCTC is " + otpValue
						+ " Please note,this OTP is valid only for menstioned transaction and cannot be used for any transaction Please do not share this One Time Password with anyone.For any problem please contact us at 24*7 Hrs.Customer Support at 14646 (Language: Hindi and English)********************************Information********************** For any enquiries or information regarding your transaction with IRCTC, do not provide your credit/debit card details by any means to IRCTC. All your queries can be replied on the basis of 10 digit IRCTC Transaction id/ PNR no./User id. IRCTC does not store the credit/debit/eWallet Transaction password/OTP card information in any form during the transaction. ****************************************************************** Warm Regards, Customer Care Internet Ticketing IRCTC");
				Transport.send(msg);
			}
			catch (MessagingException ex)
			{
				throw new RuntimeException(ex);
			}
			session.setAttribute("userotp", otpValue);
			session.setAttribute("message", "Otp has been send on your registered email id");
			response.sendRedirect("otp.jsp");
		}
	%>
</body>
</html>
