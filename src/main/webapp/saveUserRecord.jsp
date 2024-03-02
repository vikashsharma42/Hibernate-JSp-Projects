<%@page import="com.rail.UserDataBase"%>
<%@page import="com.rail.User"%>
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
	User user = new User(username, password, fname, mname, lname, occupation, dob, country, phone, city,
			pincode, state, street, locality, email);
	UserDataBase db=new UserDataBase();
	db.saveUserRecord(user);
	response.sendRedirect("index.jsp");
%>
