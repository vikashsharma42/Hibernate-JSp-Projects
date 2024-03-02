
<%@page import="com.admin.TrainDataBase"%>
<%@page import="com.admin.Train"%>
<%
	String tname = request.getParameter("tname");
	String from = request.getParameter("from");
	String to = request.getParameter("to");
	int tnumber = Integer.parseInt(request.getParameter("tnumber"));
	int ac = Integer.parseInt(request.getParameter("ac"));
	int acc = Integer.parseInt(request.getParameter("acc"));
	int accc = Integer.parseInt(request.getParameter("accc"));
	int sl = Integer.parseInt(request.getParameter("sl"));
	String totalTime =(request.getParameter("totaltime"));
	String start = (request.getParameter("starttime"));
	int slPrice =Integer.parseInt(request.getParameter("slprice"));
	String end = (request.getParameter("endtime"));
	int acPrice = Integer.parseInt(request.getParameter("acprice"));
	int accPrice = Integer.parseInt(request.getParameter("accprice"));
	int acccPrice= Integer.parseInt(request.getParameter("acccprice"));
	
	Train train=new Train(tnumber,ac,acc,accc,acPrice,accPrice,acccPrice,end,from,slPrice,sl,start,to,totalTime,tname);
	TrainDataBase.saveTrainRecord(train);
	
	response.sendRedirect("add-train-form.jsp");
%>
