<%@page import="com.rail.User"%>
<%@page import="com.rail.UserDataBase"%>
<%
  String username=request.getParameter("username");
  String password=request.getParameter("password");
  UserDataBase userdb=new UserDataBase();
  Boolean user=userdb.loginValidate(username, password);
  if(user)
  {
	  User users=userdb.getRecord(username);
	  if(users!=null)
	  {
		  String userid =users.getUserName();
		  String fname=users.getFirstName();
		  String lname=users.getLastName();
		  String email=users.getEmail();
		  session.setAttribute("username",userid);
		  session.setAttribute("lname",lname);
		  session.setAttribute("fname",fname);
		  session.setAttribute("email", email);
	  }
	  else
	  {
		  //return;
		  response.sendRedirect("login.jsp?error=true");
	  }
	  response.sendRedirect("user-index.jsp");
	  //return;
  }
  session.setAttribute("message", "Authentication Failled!!");
%>
<jsp:include page="login.jsp"/>


