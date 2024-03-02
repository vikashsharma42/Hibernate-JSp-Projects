<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="images/logo.png" />
<title>IRCTC Next Generation eTicketing System</title>
</head>
<%
	session = request.getSession(false);
	if (session != null && session.getAttribute("username") != null) {
%>
<%@ include file="user-header.jsp"%>
<%
	} else {
%>
<%@ include file="main-header.jsp"%>
<%
	}
%>
<div class="alert_box_Conatainer" style="margin-top: 6rem;">
	<div class="alert_Conatainer">
		<div class="alert_Conatainer_box">
			<strong>RAILWAY ALERTS</strong>
		</div>
	</div>
	<div class="alert_box">
		<ul>
			<li class="red_ul_li"><b>Booking and Cancellation for the
					MUMBAI node will not be available from 00:20 hrs to 05:15 hrs of
					15/01/2024 due to maintenance activity. Inconvenience caused is
					deeply regretted.</b></li>
		</ul>
	</div>
	<div class="alert_box2">
		<ul>
			<li class="black_ul_li"><b class="black-box">It has been
					reported that a malicious and fake mobile app campaign is in
					circulation where some fraudsters are sending phishing links at a
					mass level and insisting users download fake ‘IRCTC Rail
					Connect’ mobile app to trick common citizens into fraudulent
					activities. People are advised not to fall prey of such fraudsters
					and use only IRCTC’s official Rail Connect Mobile Apps from
					Google Play Store or Apple App Store, and call IRCTC Customer Care
					on official numbers published on IRCTC official website
					http://irctc.co.in. Be Alert! Be Safe!.</b></li>
		</ul>
	</div>
	<div class="alert_box3">
		<ul>
			<li class="blue_ul_li"><b class="alert_box3_b">In case of
					e-tickets booked in AC 3-tier are re-allotted in AC 3-tier economy,
					the difference of fare between AC 3-tier and AC 3-tier economy
					shall be automatically processed by IRCTC. If passenger does not
					want to travel in re-allotted lower class then he/she is eligible
					to get full refund by cancellation of ticket upto second charting
					of the train, or he/she can also file TDR upto 3 hours after actual
					departure time of the train. Passengers are requested to check
					their PNR status after first charting of the train and check for
					any SMS alerts sent by Indian Railways.</b></li>
		</ul>
	</div>
	<div class="alert_box4">
		<ul>
			<li class="red_ul_li"><b>Rebate in the basic fare on the
					vacant berths/seats after preparation of first chart in all trains
					including Rajdhani/Shatabdi/Duronto has been discontinued w.e.f.
					16-03-2023.</b></li>
		</ul>
	</div>
	<div class="alert_box5">
		<ul>
			<li class="blue_ul_li"><b class="alert_box3_b"><a
					href="tour_packages_images/PetBookingInTrains.pdf" target="blank">Information
						regarding booking of pet dogs/cats in Passenger trains.</a></b></li>
		</ul>
	</div>
	<div class="alert_box4">
		<ul>
			<li class="red_ul_li"><b>Tickets booked through unauthorised
					agents or scripting can be released without refund.</b></li>
		</ul>
	</div>
	<div class="alert_box">
		<ul>
			<li class="red_ul_li"><b>Please input correct mobile number
					of passenger for getting timely alerts on booked journey.</b></li>
		</ul>
	</div>
	<div class="alert_box6">
		<ul>
			<li class="red_ul_li"><b class="black-box">Children under 5
					years of age shall be carried free and no purchase of any ticket is
					required. (If no separate berth is opted.)</b></li>
		</ul>
	</div>
	<div class="alert_box7">
		<ul>
			<li class="red_ul_li"><b class="black-box">Refund of the
					cancelled trains is processed on T+1 day of journey date by Indian
					Railways. Thereafter, refund amount is credited in 3 to 4 days in
					user's account.</b></li>
		</ul>
	</div>
	<div class="alert_box4">
		<ul>
			<li class="red_ul_li"><strong><b>PASSENGERS ARE
						REQUESTED TO CHECK THE DEPARTURE TIME OF THEIR TRAINS FROM INDIAN
						RAILWAY WEBSITE WWW.INDIANRAIL.GOV.IN , NTES OR 139 BEFORE
						BOARDING.</b></strong></li>
		</ul>
	</div>
	<div class="alert_box7">
		<ul>
			<li class="red_ul_li"><b class="black-box">IRCTC Users are
					requested to keep their user profile updated with correct<strong>
						Address, City, State and Pin code</strong>. Incorrect details may lead to
					deactivation of IRCTC User Id.
			</b></li>
		</ul>
	</div>
	<div class="alert_box8">
		<ul>
			<li class="red_ul_li"><b class="black-box">Second class (2S)
					reserved ticket holders are advised to check their PNR status
					(“Trains” menu > “PNR Enquiry”) before journey. If 2S
					reserved ticket holders are receiving PNR status as “Route class
					deleted / Booking not allowed as given class for the route is
					deleted” on PNR enquiry, they may cancel such tickets to get full
					refund.</b></li>
		</ul>
	</div>
	<div class="alert_box5">
		<ul>
			<li class="red_ul_li"><b class="alert_box3_b">Users can book
					cooked food in RajDhani, ShaTabdi, DuRonto, VandeBharat and GatiMan
					trains by visiting and making payment on IRCTC tourism</b></li>
		</ul>
	</div>
	<div class="alert_box5 alert-background">
		<ul>
			<li class="red_ul_li"><b class="alert_box3_b">Railway Board
					Circular dated 16.11.2021 on Carrying valid proof of Identity by
					passengers during journey.</b></li>
		</ul>
	</div>
	<div class="alert_box7">
		<ul>
			<li class="red_ul_li"><b class="black-box">Atom PG
					(International card) payment option is available for ticket booking
					only when Journey Date is at least 02 days in advance of booking
					date.</b></li>
		</ul>
	</div>
	<div class="alert_box8">
		<ul>
			<li class="red_ul_li"><b class="black-box">Refund in case of
					train late more than 3 hours: In case train is late more than 3
					hours, refund is admissible as per railway refund rules only when
					TDR is filed by the user before the actual departure of the train
					at boarding station and passenger has not travelled.</b></li>
		</ul>
	</div>
	<div class="alert_box7">
		<ul>
			<li class="red_ul_li"><b class="black-box">E-ticket
					confirmed through charting at originating station or at the
					previous remote location cannot be cancelled. The refund of such
					ticket will be processed through TDR.</b></li>
		</ul>
	</div>
	<div class="alert_box6">
		<ul>
			<li class="red_ul_li"><b class="black-box">You are allowed
					to do only one (1) booking in one user login session except for
					return/onward journey between 0800 and 1200 hours. To do another
					booking please logout and login again.</b></li>
		</ul>
	</div>
	<div class="alert_box7">
		<ul>
			<li class="red_ul_li"><b class="black-box">Money debited but
					ticket not booked. <a
					href="tour_packages_images/Alerts_mone_debited.pdf" target="_blank">Click
						here</a> to know more..
			</b></li>
		</ul>
	</div>
	<div class="alert_box6">
		<ul>
			<li class="red_ul_li"><b class="black-box">In case you are
					not able to find your payment bank under Net banking or Debit Card
					category, Please visit "Multiple Payment Service" tab to get
					payment bank or getting more payment options.</b></li>
		</ul>
	</div>
	<div class="alert_box">
		<ul>
			<li class="red_ul_li"><b>Never search for IRCTC customer
					care numbers on social media or search engine. Always check the
					"contact us" section in IRCTC site / App.</b></li>
		</ul>
	</div>
	<div class="alert_box2">
		<ul>
			<li class="black_ul_li"><b class="black-box">I1. E ticket
					cancellation refund process is fully automatic. There is no human
					intervention required in the refund process. Users are requested
					not to share their account details in any form. 2. Users are
					requested not to share their booking and cancellations details on
					social media platforms to avoid misuse by miscreants. 3. Users are
					requested not to search Google and other similar platforms for
					IRCTC related queries as these platforms contain many miscreant
					mobile apps and solutions aimed at misusing user credentials. Users
					should refer to IRCTC website for all ticketing and refund related
					queries.</b></li>
		</ul>
	</div>
	<div class="alert_box7">
		<ul>
			<li class="red_ul_li"><b class="black-box"><a
					href="tour_packages_images/Liberty Travel Insurance Claim Process 24 Jan 20.pdf"
					target="_blank">Claim Process for trip delay on IRCTC Tejas
						Express (Train No: 82501/82502/82901/82902) </a></b></li>
		</ul>
	</div>
	<div class="alert_box8">
		<ul>
			<li class="red_ul_li"><b class="black-box"><a
					href="tour_packages_images/Concession Withdrawal.pdf"
					target="_blank">In view of COVID-19 situation, and as per
						instructions from Railway Board, no concessional tickets for all
						categories of passengers except 4 categories of Divyangjan
						passengers shall be issued for tickets booked on or after date 20
						March 2020 till further advice. Inconvenience caused is deeply
						regretted.</a></b></li>
		</ul>
	</div>
</div>
</body>
</html>