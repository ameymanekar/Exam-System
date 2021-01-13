

<!DOCTYPE html>
<html>

<!-- Head -->
<head>
 <style>

		.errmsg{font-family: arial;
    font-size: 20pt;
    color: white;
    text-align: center;}

                </style>
<%

        

      
String loginmsg2="";
if(request.getParameter("login2")!=null)
   loginmsg2="Invalid UserID/Pwd";

String loginmsg="";
if(request.getParameter("login")!=null)
	loginmsg="Email ID Is Already Exists!!!!";


String loginmsg3="";
if(request.getParameter("login3")!=null)
	loginmsg="Registration Successful.. ";


	
 
 %>

	<title>Teacher</title>

	<!-- For-Mobile-Apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Flat Login & Register Forms Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //For-Mobile-Apps -->

	<!-- Style --> <link rel="stylesheet" href="css/style11.css" type="text/css" media="all" />

	<!-- Web-Fonts -->
		<link href='//fonts.googleapis.com/css?family=Raleway:400,500,600,700,800' rel='stylesheet' type='text/css'>
		<link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
	<!-- //Web-Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>Teacher Login & Register </h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts">
			<form action="checklogin.jsp" method="post">
				<label>Email</label>
				<input type="text"  name="userid" class="user" placeholder="Email" required="">
				<label>Password</label>
				<input type="password" name="pwd" class="pass" placeholder="Password" required="">
			<ul>
				
			</ul>
			<input type="submit" value="LOGIN"></form>
			<div class="clear"></div>
		</div>

		<br>
		<br>

		<div class="reg w3l aits">

			<h3>Not a member?</h3>
			<a class="popup-with-zoom-anim hvr-underline-from-left" href="#small-dialog">Register Here</a>
			<div class="clear"></div>

			<!-- Popup-Box -->
			<div id="popup w3l">
				<div id="small-dialog" class="mfp-hide aits">
					<div class="pop_up agileits">
						<div class="register w3layouts">
							<form action="doStoreLogin.jsp" method="post">
								<label>First Name</label>
								<input type="text" Name="FName" placeholder="First Name" required="">
								<label>Last Name</label>
								<input type="text" Name="LName" placeholder="Last Name" required="">
								<label>Email</label>
								<input type="email" Name="email" placeholder="Email" required="">
								<label>Password</label>
								<input type="password" id="password" Name="pass" placeholder="Password" required="">
								<label>Confirm Password</label>
								<input type="password" id="confirm_password" Name="Passw" class="lessgap" placeholder="Confirm Password" required="">
								<label>Phone Number</label>
								<input type="text" Name="phone" pattern="[1,2,3,4,5,6,7,8,9,0]{10}" maxlength="10" placeholder="Phone Number" required="">
								<div class="send-button">
									<input type="submit" value="REGISTER">
								</div>
								<script>
                var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
                </script>
							</form>
						</div>
					</div>
				</div>
			</div>
			<button title="Close (Esc)" type="button" class="mfp-close w3layouts">×</button>
			<!-- //Popup-Box -->
		</div>
	</div>
<div  class="errmsg"><%=loginmsg2%><%=loginmsg%>
					</div>
	

	<!-- Custom-JavaScript-File-Links -->
		<script src="js/jquery-2.1.41.min.js"></script>
		<!-- pop-up-box -->
			<script src="js/jquery.magnific-popup1.js" type="text/javascript"></script>
			<script>
				$(document).ready(function() {
					$('.popup-with-zoom-anim').magnificPopup({
						type: 'inline',
						fixedContentPos: false,
						fixedBgPos: true,
						overflowY: 'auto',
						closeBtnInside: true,
						preloader: false,
						midClick: true,
						removalDelay: 300,
						mainClass: 'my-mfp-zoom-in'
					});
				});
			</script>
		<!--//pop-up-box -->
	<!-- //Custom-JavaScript-File-Links -->

</body>
<!-- //Body -->

</html>