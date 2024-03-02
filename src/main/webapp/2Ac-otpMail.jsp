<%@page import="javax.mail.internet.*"%>
<%@page import="javax.mail.*"%>
<%@page import="java.util.*"%>
<%
	final String from = "sharmag620098@gmail.com";
	final String emailPassword = "ybgw dmvb myvi xzps";
	String email = (String) session.getAttribute("email");
	
	Random random = new Random();
	int generatedOtp = random.nextInt(125505);
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
			msg.setSubject("One Time Password(OTP)for registered Account on IRCTC");
			String htmlContent = "<h1 style=color:yellow; text-decoration:underline>IRCTC Payment GateWay</h1>"
					+ "<p>One Time Password(OTP)for booking ticket through IRCTC."
					+ "This is a system generated mail.Please do not reply to this email ID."
					+ "Your otp is <strong style=color:orange;>" + generatedOtp
					+ "</strong> Please note,this OTP is valid only for menstioned transaction and cannot be used for any transaction"
					+ " Please do not share this One Time Password with anyone.</p>";
			msg.setContent(htmlContent, "text/html; charset=utf-8");
			Transport.send(msg);
		} catch (MessagingException ex) {
			throw new RuntimeException(ex);
		}
	}	
	session.setAttribute("mainOtp", generatedOtp);
	response.sendRedirect("2Ac-paymentOtp.jsp");
%>