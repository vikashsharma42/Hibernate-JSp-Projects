
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
	SimpleDateFormat currentDate = new SimpleDateFormat("dd-MMM-yyyy");
	String date = currentDate.format(Calendar.getInstance().getTime());
%>
<script type="text/javascript" src="css/script.js"></script>
<body onload="getTime();checkButton()">
<div class="main_Container">
	<div class="logo1">
		<img src="images/secondry-logo.png">
		<div class="logo2">
			<img src="images/logo.png">
		</div>
		<div class="nav_Container1">
			<ul>
				<li><a class="nav_link1" href="login.jsp">LOGIN</a></li>
				<li><a class="nav_link" href="user-registration.jsp">REGISTER</a></li>
				<li><a class="nav_link" href="#">AGENT LOGIN</a></li>
				<li><a class="nav_link" href="contact_us-index.jsp"
					target="blank">CONTACT US</a></li>
				<li><a class="nav_link2"
					href="https://www.amazon.in/deals?&linkCode=ll2&tag=irctcdev07-21&linkId=6e8e3d8f31513cf92e862073d65fefae&language=en_IN&ref_=as_li_ss_tl&_encoding=UTF8&tag=irctcdev07-21&linkCode=ur2&linkId=41c3b8fb1ad95d37bf6d1ce4f06d8dc1&camp=3638&creative=24630"
					target="_blank">DAILY DEALS</a></li>
				<li><a class="nav_link3" href="alert.jsp" target="_blank">ALERT</a></li>
				<li><a class="nav_link" href="#"
					style="color: #000; font-weight: 700"><%=date%> [<span
						id="time"></span>]</a></li>
			</ul>
		</div>
		<div class="nav_Container2">
			<ul>
				<li><a class="nav_link4" href="index.jsp"><i
						class='fa fa-home'></i></a></li>
				<li><a class="nav_link5">IRCTC EXCLUSIVE</a>
					<div class="submenu">
						<div class="submenu_box">
							<ul>
								<li><img src="images/logo.png"> IRCTC eWallet
									<div class="submenu2">
										<div class="submenu_box2">
											<ul>
												<li><a href="pdf/About_IRCTC_eWallet.pdf"
													target="_blank">AboutIRCTC eWallet</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2">
											<ul>
												<li><a href="pdf/EwalletUserGuide.pdf" target="_blank">IRCTC-
														iPAY User Guide</a></li>
											</ul>
										</div>
									</div>
							</ul>
						</div>
						<div class="submenu_box_container">
							<ul>
								<li><img src="images/logo.png"><a
									href="pdf/irctc_ipay_english.pdf" target="_blank">IRCTC-
										iPAY</a></li>
							</ul>
						</div>
					</div></li>
				<li><a class="nav_link6">TRAINS</a>
					<div class="submenu loyalty_container train-box">
						<div class="submenu_box_container2">
							<ul>
								<li><a href="counterTicketCancle.jsp" target="_blank">Cancle
										Counter Ticket</a></li>
							</ul>
						</div>
						<div class="submenu_box_container2">
							<ul>
								<li><a
									href="pdf/Travel_Insurance_Claim_Process_for_IRCTC_TejasExp.pdf"
									target="_blank">Travel Insurance Claim Process</a></li>
							</ul>
						</div>
						<div class="submenu_box_container2">
							<ul>
								<li><a href="pnr.jsp" target="_blank">PNR Enquiry</a></li>
							</ul>
						</div>
					</div></li>
				<li><a class="nav_link7" href="bus2.jsp" target="blank">BUSES</a></li>
				<li><a class="nav_link7" href="flight.jsp" target="blank">FLIGHTS</a></li>
				<li><a class="nav_link7" href="hotel.jsp" target="blank">HOTELS</a></li>
				<li><a class="nav_link7">HOLIDAYS</a>
					<div class="submenu ">
						<div class="submenu_box">
							<ul>
								<li class="padd">Tourist Trains
									<div class="submenu2">
										<div class="submenu_box2">
											<ul>
												<li><a href="Bharat_Gaurav_Tourist_Train.jsp"
													target="_blank">Bharat Gaurav</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2">
											<ul>
												<li><a href="maharaja_train.jsp" target="_blank">Maharaja's
														Express</a></li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="submenu_box_container">
							<ul>
								<li class="padd">Tour Packages
									<div class="submenu2 ">
										<div class="submenu_box2">
											<ul>
												<li><a href="Domestic_Packages.jsp" target="_blank">Domestic
														Packages</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2">
											<ul>
												<li><a href="International_Packages.jsp"
													target="_blank">International Packages</a></li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				<li><a class="nav_link7">LOYALTY</a>
					<div class="submenu loyalty_container">
						<div class="submenu_box_container2">
							<ul>
								<li><a href="pdf/AboutLoyalty.pdf" target="_blank">About
										IRCTC Loyalty program</a></li>
							</ul>
						</div>
						<div class="submenu_box loyalty_box">
							<ul>
								<li>IRCTC HDFC Credit Card
									<div class="submenu2 loyalty_submenu">
										<div class="submenu_box2 loyalty_detail">
											<ul>
												<li><a href="pdf/About_IRCTC_HDFC_CobrandCard.pdf"
													target="_blank">About IRCTC HDFC Credit Card</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2 loyalty_detail">
											<ul>
												<li><a href="#" target="_blank">IRCTC HDFC RUPAY
														Credit Card e-Apply</a></li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="submenu_box loyalty_box">
							<ul>
								<li>IRCTC SBI Credit Card
									<div class="submenu2 loyalty_submenu">
										<div class="submenu_box2 loyalty_detail">
											<ul>
												<li><a href="pdf/AboutSBICobrandCard.pdf"
													target="_blank">About IRCTC SBI Credit Card</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2 loyalty_detail">
											<ul>
												<li><a href="#" target="_blank">IRCTC SBI RUPAY
														Credit Card e-Apply</a></li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="submenu_box loyalty_box">
							<ul>
								<li>IRCTC BOB Credit Card
									<div class="submenu2 loyalty_submenu">
										<div class="submenu_box2 loyalty_detail">
											<ul>
												<li><a href="pdf/AboutBOBCobrandCard.pdf"
													target="_blank">About IRCTC BOB Credit Card</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2 loyalty_detail">
											<ul>
												<li><a href="pdf/bobrupay.pdf" target="_blank">IRCTC
														BOB RUPAY Credit Card e-Apply</a></li>
											</ul>
										</div>
									</div>
							</ul>
						</div>
					</div>
				<li><a class="nav_link7" href="meal-list.jsp" target="blank">MEALS</a></li>
				<li><a class="nav_link7">PROMOTIONS</a>
					<div class="submenu">
						<div class="submenu_box">
							<ul>
								<li class="padd">Advertise with us
									<div class="submenu2">
										<div class="submenu_box2">
											<ul>
												<li><a href="pdf/Banner_Advertisment.pdf"
													target="_blank">Banner Advertisement</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2">
											<ul>
												<li><a href="pdf/Chat_Bot_Advertisment.pdf"
													target="_blank">Chat Bot Advertisement</a></li>
											</ul>
										</div>
										<div class="submenu_box2">
											<ul>
												<li><a href="pdf/Push_Notification.pdf" target="_blank">Push
														Notification</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2">
											<ul>
												<li><a href="pdf/Cuboid_Advertisements.pdf"
													target="_blank">Cuboid Advertisement</a></li>
											</ul>
										</div>
										<div class="submenu_box2">
											<ul>
												<li><a href="#" target="_blank">e-Ticket
														Advertisement</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2">
											<ul>
												<li><a href="pdf/Logout_Advertisement.pdf"
													target="_blank">Logout Advertisement</a></li>
											</ul>
										</div>
										<div class="submenu_box2">
											<ul>
												<li><a href="pdf/Promotional_SMS.pdf" target="_blank">SMS(Promotional)</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2">
											<ul>
												<li><a href="pdf/Promotional_Mailer.pdf"
													target="_blank">Mailer(Promotional)</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2">
											<ul>
												<li><a href="pdf/Booking_Mail_Advertisement.pdf"
													target="_blank">Booking Mail Advertisement</a></li>
											</ul>
										</div>
										<div class="submenu_box_container2">
											<ul>
												<li><a href="pdf/Cancellation_Mailer.pdf"
													target="_blank">Cancle Mail Advertisement</a></li>
											</ul>
										</div>
									</div>
							</ul>
						</div>
						<div class="submenu_box_container">
							<ul>
								<li class="padd"><a
									href="https://play.google.com/store/apps/details?id=cris.org.in.prs.ima&hl=en&pli=1"
									target="_blank">IRCTC Rail Connect App</a></li>
							</ul>
						</div>
					</div></li>
				<li><a class="nav_link7">MORE</a>
					<div class="submenu loyalty_container">
						<div class="submenu_box_container2">
							<ul>
								<li><a href="chatBot.jsp" target="_blank">Chat Boat as
										a Service(sas)</a></li>
							</ul>
						</div>
						<div class="submenu_box_container2">
							<ul>
								<li><a href="pdf/AadhaarLinking.pdf" target="_blank">Link
										Your Aadhar</a></li>
							</ul>
						</div>
						<div class="submenu_box_container2">
							<ul>
								<li><a href="pdf/Battery_Car.pdf" target="_blank">Battery
										Operated Car</a></li>
							</ul>
						</div>
						<div class="submenu_box_container2">
							<ul>
								<li><a href="forgot-password.jsp">FORGOT ACCOUNT DETAILS?</a></li>
							</ul>
						</div>
					</div></li>
			</ul>
		</div>
	</div>
	</div>
	<script type="text/javascript" src="css/script.js"></script>
</body>
<!-- --
<head>
	<link rel="stylesheet" href="css/index.css">
</head>
<body onload="getTime();checkButton()">
<div class="nav_parent">
	<div class="primary_logo">
		<img src="images/secondry-logo.png">
	</div>
        <div class="nav_child">
			<div class="nav_Container">
				<ul>
					<li><a class="nav_link1" href="login.jsp">LOGIN</a></li>
					<li><a class="nav_link" href="user-registration.jsp">REGISTER</a></li>
					<li><a class="nav_link" href="#">AGENT LOGIN</a></li>
					<li><a class="nav_link" href="contact_us-index.jsp"
						target="blank">CONTACT US</a></li>
					<li><a class="nav_link2"
						href="https://www.amazon.in/deals?&linkCode=ll2&tag=irctcdev07-21&linkId=6e8e3d8f31513cf92e862073d65fefae&language=en_IN&ref_=as_li_ss_tl&_encoding=UTF8&tag=irctcdev07-21&linkCode=ur2&linkId=41c3b8fb1ad95d37bf6d1ce4f06d8dc1&camp=3638&creative=24630"
						target="_blank">DAILY DEALS</a></li>
					<li><a class="nav_link3" href="alert.jsp" target="_blank">ALERT</a></li>
					<li><a class="nav_link" href="#"
						style="color: #000; font-weight: 700"><%=date%> [<span
							id="time"></span>]</a></li>
				</ul>
			</div>	
		<div class="nav_subchild">
		<div class="nav_subContainer">
				<ul>
					<li><a class="nav_link4" href="index.jsp"><i
							class='fa fa-home'></i></a></li>
					<li><a class="nav_link5">IRCTC EXCLUSIVE</a>
						<div class="submenu">
							<div class="submenu_box">
								<ul>
									<li><img src="images/logo.png"> IRCTC eWallet
										<div class="submenu_child_box">
											<div class="submenu_container">
												<ul>
													<li><a href="pdf/About_IRCTC_eWallet.pdf"
														target="_blank">AboutIRCTC eWallet</a></li>
												</ul>
											</div>
										    <div class="submenu_child">
												<ul>
													<li><a href="pdf/EwalletUserGuide.pdf" target="_blank">IRCTC-
															iPAY User Guide</a></li>
												</ul>
											</div>
										</div>
								</ul>
							</div>
						<div class="submenu_box_container">
								<ul>
									<li><img src="images/logo.png"><a
										href="pdf/irctc_ipay_english.pdf" target="_blank">IRCTC-
											iPAY</a></li>
								</ul>
							</div>
						</div></li>
					<li><a class="nav_link6">TRAINS</a>
						<div class="submenu ">
							<div class="submenu_container">
								<ul>
									<li><a href="counterTicketCancle.jsp" target="_blank">Cancle
											Counter Ticket</a></li>
								</ul>
							</div>
							<div class="submenu_container">
								<ul>
									<li><a
										href="pdf/Travel_Insurance_Claim_Process_for_IRCTC_TejasExp.pdf"
										target="_blank">Travel Insurance Claim Process</a></li>
								</ul>
							</div>
							<div class="submenu_container">
								<ul>
									<li><a href="#" target="_blank">PNR Enquiry</a></li>
								</ul>
							</div>
						</div></li>
				<li><a class="nav_link7" href="bus2.jsp" target="blank">BUSES</a></li>
					<li><a class="nav_link7" href="flight.jsp" target="blank">FLIGHTS</a></li>
					<li><a class="nav_link7" href="hotel.jsp" target="blank">HOTELS</a></li>
					<li><a class="nav_link7">HOLIDAYS</a>
						<div class="submenu">
							<div class="submenu_box">
								<ul>
									<li>Tourist Trains
										<div class="submenu_parent">
											<div class="submenu_childConatiner">
												<div class="submenu_child">
												    <ul>
													   <li><a href="Bharat_Gaurav_Tourist_Train.jsp"
														target="_blank">Bharat Gaurav</a></li>
												    </ul>
											    </div>
											    <div class="submenu_child">
												    <ul>
													    <li><a href="maharaja_train.jsp" target="_blank">Maharaja's
															Express</a></li>
												    </ul>
											    </div>
										    </div>
										</div>
									</li>
								</ul>
							</div>
				           <div class="submenu_box">
							<ul>
								<li>Tour Packages
									<div class="submenu_parent">
										<div class="submenu_childConatiner">
											<div class="submenu_child">
									            <ul>
													<li><a href="Domestic_Packages.jsp" target="_blank">Domestic
														packages</a></li>
												</ul>
											</div>
											<div class="submenu_child">
												<ul>
													<li><a href="International_Packages.jsp"
														target="_blank">International Packages</a></li>
												</ul>
										    </div>
									    </div>
									</div>
								</li>
							</ul>
							</div>
							</div>
							<li><a class="nav_link7">LOYALTY</a>
								<div class="submenu">
									<div class="submenu_box">
								        <ul>
											<li><a href="pdf/AboutLoyalty.pdf" target="_blank">About
												IRCTC Loyalty program</a></li>
								        </ul>
								    </div>
									<div class="submenu_box">
									<ul>
										<li>IRCTC HDFC Credit Card
											<div class="submenu_parent">
												<div class="submenu_childConatiner">
													<div class="submenu_child">
														<ul>
															<li><a href="pdf/About_IRCTC_HDFC_CobrandCard.pdf"
																target="_blank">About IRCTC HDFC Credit Card</a></li>
														</ul>
													</div>
													<div class="submenu_child">
														<ul>
															<li><a href="#" target="_blank">IRCTC HDFC RUPAY
																Credit Card e-Apply</a></li>
														</ul>
													</div>
												</div>
											</div>
										</li>
									</ul>
									</div>
									<div class="submenu_box">
										<ul>
											<li>IRCTC BOB Credit Card
												<div class="submenu_parent">
													<div class="submenu_childConatiner">
														<div class="submenu_child">
															<ul>
																<li><a href="pdf/AboutBOBCobrandCard.pdf"
																	target="_blank">About IRCTC BOB Credit Card</a></li>
															</ul>
														</div>
														<div class="submenu_child">
															<ul>
																<li><a href="pdf/bobrupay.pdf" target="_blank">IRCTC
																	BOB RUPAY Credit Card e-Apply</a></li>
															</ul>
														</div>
													</div>
												</div>
											</li>
										</ul>
										</div>
								</div>
							</li>
											
					<li><a class="nav_link7" href="meal-list.jsp" target="blank">MEALS</a></li>
					<li><a class="nav_link7">PROMOTIONS</a>
						<div class="submenu">
							<div class="submenu_box">
								<ul>
									<li class="padd">Advertise with us
										<div class="submenu_parent">
											<div class="submenu_childConatiner">
												<div class="submenu_child">
												<ul>
													<li><a href="pdf/Banner_Advertisment.pdf"
														target="_blank">Banner Advertisement</a></li>
												</ul>
											</div></div>
											<div class="submenu_child">
												<ul>
													<li><a href="pdf/Chat_Bot_Advertisment.pdf"
														target="_blank">Chat Bot Advertisement</a></li>
												</ul>
											</div>
											<div class="submenu_child">
												<ul>
													<li><a href="pdf/Push_Notification.pdf" target="_blank">Push
															Notification</a></li>
												</ul>
											</div>
											<div class="submenu_child">
												<ul>
													<li><a href="pdf/Cuboid_Advertisements.pdf"
														target="_blank">Cuboid Advertisement</a></li>
												</ul>
											</div>
											<div class="submenu_child">
												<ul>
													<li><a href="#" target="_blank">e-Ticket
															Advertisement</a></li>
												</ul>
											</div>
											<div class="submenu_child">
												<ul>
													<li><a href="pdf/Logout_Advertisement.pdf"
														target="_blank">Logout Advertisement</a></li>
												</ul>
											</div>
											<div class="submenu_child">
												<ul>
													<li><a href="pdf/Promotional_SMS.pdf" target="_blank">SMS(Promotional)</a></li>
												</ul>
											</div>
											<div class="submenu_child">
												<ul>
													<li><a href="pdf/Promotional_Mailer.pdf"
														target="_blank">Mailer(Promotional)</a></li>
												</ul>
											</div>
											<div class="submenu_child">
												<ul>
													<li><a href="pdf/Booking_Mail_Advertisement.pdf"
														target="_blank">Booking Mail Advertisement</a></li>
												</ul>
											</div>
											<div class="submenu_child">
												<ul>
													<li><a href="pdf/Cancellation_Mailer.pdf"
														target="_blank">Cancle Mail Advertisement</a></li>
												</ul>
											</div>
										</div>
								</ul>
							</div>
							<div class="submenu_child">
								<ul>
									<li><a
										href="https://play.google.com/store/apps/details?id=cris.org.in.prs.ima&hl=en&pli=1"
										target="_blank">IRCTC Rail Connect App</a></li>
								</ul>
							</div>
						</div></li>	
						
					<li><a class="nav_link7">MORE</a>
						<div class="submenu">
							<div class="submenu_box">
								<ul>
									<li><a href="chatBot.jsp" target="_blank">Chat Boat as
											a Service(sas)</a></li>
								</ul>
							</div>
							<div class="submenu_child">
								<ul>
									<li><a href="pdf/AadhaarLinking.pdf" target="_blank">Link
											Your Aadhar</a></li>
								</ul>
							</div>
							<div class="submenu_child">
								<ul>
									<li><a href="pdf/Battery_Car.pdf" target="_blank">Battery
											Operated Car</a></li>
								</ul>
							</div>
							<div class="submenu_child">
								<ul>
									<li><a href="#" target="_blank">FORGOT ACCOUNT DETAILS?</a></li>
								</ul>
							</div>
						</div></li>
				</ul>
			</div>
			</div>
			</div>	
	<div class="secondary_logo">
		<img src="images/logo.png">
	</div>
</div>
</body>
------>
							
								
								 
									