<%
    String msg = (String)session.getAttribute("msg");
	int userOtp = (int)session.getAttribute("mainOtp");
	int otp=Integer.parseInt(request.getParameter("otp"));
	if(userOtp==otp)
	{
		response.sendRedirect("booking.jsp");
		return;
	}
	session.setAttribute("message", "Wrong Otp");
%>
<jsp:include page="paymentOtp.jsp"/>