<%
    String msg = (String)session.getAttribute("msg");
	int userOtp = (int)session.getAttribute("mainOtp");
	int otp=Integer.parseInt(request.getParameter("otp"));
	System.out.println(otp);
	if(userOtp==otp)
	{
		response.sendRedirect("2Ac-booking.jsp");
		return;
	}
	session.setAttribute("message", "Wrong Otp");
%>
<jsp:include page="2Ac-paymentOtp.jsp"/>