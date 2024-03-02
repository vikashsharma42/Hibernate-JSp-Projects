<%@page import="com.rail.User"%>
<%@page import="com.rail.UserDataBase"%>
<%
	int value = Integer.parseInt(request.getParameter("otp"));
	int otp = (int) session.getAttribute("userotp");
	if (value == otp) 
	{
		String userName=(String)session.getAttribute("username");
		String email=(String)session.getAttribute("email");
		String phone=(String)session.getAttribute("phone");
		String pass= (String)session.getAttribute("password");
		String fname=(String)session.getAttribute("fname");
		String mname=(String)session.getAttribute("mname");
		String lname=(String)session.getAttribute("lname");
		String dob=(String)session.getAttribute("dob");
		String occupation=(String)session.getAttribute("occupation");
		String state=(String)session.getAttribute("state");
		String pincode=(String)session.getAttribute("pincode");
		String street=(String)session.getAttribute("street");
		String locality=(String)session.getAttribute("locality");
		String city=(String)session.getAttribute("city");
		String country=(String)session.getAttribute("country");
		
		UserDataBase userdb=new UserDataBase();
		User user=new User(userName,pass,fname,mname,lname,occupation,dob,country,phone,city,pincode,state,street,locality,email);
		userdb.saveUserRecord(user);
		session.removeAttribute("message");
		response.sendRedirect("index.jsp");
	} 
	else
	{
		session.removeAttribute("message");
		session.setAttribute("message", "wrong otp");
		session.removeAttribute("userotp");
		response.sendRedirect("resendOtp.jsp");
	}
%>