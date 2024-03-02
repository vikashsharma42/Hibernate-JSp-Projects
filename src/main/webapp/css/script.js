(function() {
	'use strict'
	var forms = document.querySelectorAll('.needs-validation')
	Array.prototype.slice.call(forms).forEach(function(form) {
		form.addEventListener('submit', function(event) {
			if (!form.checkValidity()) {
				event.preventDefault()
				event.stopPropagation()
			}
			form.classList.add('was-validated')
		}, false)
	})
})()
function changeBackground() {
    var scrollPosition = window.scrollY
    var bg = document.getElementById('changeBg')
    var scrollThreshold = 300;
    if (scrollPosition > scrollThreshold) {
    	bg.style.backgroundColor = 'white'
    }   
    else {
    	document.body.style.backgroundColor = ''
    }          
 }
function myCaptcha() {
	var str = "aV1A4C"
	var len = str.length
	var captcha = ""
	for (var i = 0; i <= 5; i++) {
		var randomnum = Math.floor(Math.random() * len)
		var randomchar = str[randomnum]
		captcha = captcha + randomchar
	}
	document.getElementById("mainCaptcha").value = captcha
}
function checkCaptcha() {
	var oldCap = document.getElementById("mainCaptcha").value
	var cap = document.getElementById("captca").value
	var msg = document.querySelector("h5")
	if(cap==''){
        msg.innerText=""
   }
	else if (cap != oldCap.trim()) {
		msg.innerText = "invallid Captcha"
		msg.style.color = "red"
		return false
		}
	else
	{
		msg.innerText = ""
		return true
	}
}
function matchPassword() {
	var Password = document.getElementById("pass").value
	var confirmPassword = document.getElementById("cpass").value
	var msg = document.querySelector("h4")
	if (Password !== confirmPassword) {
		msg.innerText = "confirm password and password does not match "
		msg.style.color = "red"
		return false
	} 
	else 
	{
		msg.innerText = ""
		return true
	}
}
function getTime(){
	let time=document.getElementById("time")
	setInterval(()=>{
		let d=new Date()
		time.innerHTML=d.toLocaleTimeString()
	},1000)
}
function redirect(){
	window.location="http://localhost:8080/IRCTC/index.jsp"
}
function matchDestination() {
	var start = document.getElementById("from").value
	var end = document.getElementById("to").value
	var msg = document.querySelector("b")
	if(start=='' || end==''){
		msg.innerText = ""
		return false
	}
	else if (start == end) {
		msg.innerText = "Start and Destination Cann't be same "
		msg.style.color = "red"
		return false
	}
	else {
		msg.innerText = ""
		true;
	}
}

function matchJourney() {
	var start = document.getElementById("from").value
	var end = document.getElementById("to").value;	
	 if(start=='' || end==''){
		alert("Please choose Start and Destination to book ticket")
		return false
	}
	 if (start == end) {
			alert("Start and Destination Cann't be same")
			return false
		}
}
function getDayOfWeek(date){
    const daysOfWeek = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
    return daysOfWeek[date.getDay()]
}
function showDay() {
        const inputDate = document.getElementById('jdate').value
        const dateParts = inputDate.split('-')
        const year = parseInt(dateParts[0], 10)
        const month = parseInt(dateParts[1], 10) - 1
        const day = parseInt(dateParts[2], 10)
        const selectedDate = new Date(year, month, day)
        const dayOfWeek = getDayOfWeek(selectedDate)
        const dayLabel = document.getElementById('traindate')
        dayLabel.textContent = ` ${dayOfWeek}`
}
function totalPrice(){
	var ticket = parseInt(document.getElementById("ticketFare").innerHTML)
	var fare = parseInt(document.getElementById("conFee").innerHTML)	
	var ins = parseFloat(document.getElementById("insurance").innerHTML)	
	var result= ticket+fare+ins;
	document.getElementById('totalFare').innerText= result	
}
function matchCard(){
	var card=document.getElementById("cardNo" ).value
	var msg=document.querySelector("b")
	if(card.length==4){
		card=card.slice(0,4)+'-'+card.slice(4)
	    document.getElementById("cardNo" ).value=card
	}
	if(card.length==9){
		card=card.slice(0,9)+'-'+card.slice(9)
	    document.getElementById("cardNo" ).value=card
	} 
	if(card.length==14){
	    card=card.slice(0,14)+'-'+card.slice(14)
	    document.getElementById("cardNo" ).value=card
	}  
	if(card.length==''){
		msg.innerText=""
		return false;
	} 
	if(card.length<19){
		msg.innerText="Please enter 16 digits vallid card number"
		msg.style.color="red"
		return false
	}
	if(card.length==19){
		msg.innerText=""
		    return true;
	}								
}
function matchCvv(){
	var cv=document.getElementById("cvv" ).value
	var msg=document.querySelector("strong");
	if(cv.length>3 ||cv.length<3){
		msg.innerText="Please enter a vallid CVV Number"
		msg.style.color="red"
		return false
	}
	if(cv.length==''){
		 msg.innerText=""
		 return false
	}
	if(cv.length==3){
		msg.innerText=""
		    return true
	}
}
function checkSlSeat(seat) {
	if (seat== 0) {
		var modal = document.getElementById("modelMsg");
	    var messageElement = document.getElementById("msg");
	    messageElement.innerHTML = "Booking is not allowed for selected class.";
	    modal.style.display = "block"
		return false
	}
	else{
		return true
	}	
}
function closerPriceModal() {
    var modal = document.getElementById("modelMsg");
    modal.style.display = "none";
}

function changePassword(){
	const newPass= document.getElementById("newPass")
	const confirmPass=document.getElementById("confirmPass")
	let msg=document.getElementById("msg")
	if(newPass===confirmPass){
		msg.innerText = "confirm password and password does not match "
		msg.style.color = "red"
		return false
	}
	else{
		return true
	}
}