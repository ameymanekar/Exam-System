<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Login </title>
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all"/>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
    <style>
		
	
		.errmsg{font-family: arial;
    font-size: 20pt;
    color: #ffffff;
    text-align: center;}

     body{
background: url(images/1.jpg)no-repeat;
background-attachment: fixed;
    background-position: center;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
}

                </style>
                <%
 String loginmsg="";
 if(request.getParameter("login2")!=null)
    loginmsg="Invalid UserID/Pwd";
 %>
<!--header start here-->
<div class="header">
		<div class="header-main">
		       <h1>Student Login </h1>
			<div class="header-bottom">
				<div class="header-right w3agile">
					
					<div class="header-left-bottom agileinfo">
						
					 <form action="checklogin2.jsp" >
						<input type="text"  value="User name" name="userid" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User name';}"/>
					<input type="password"  value="Password" name="pwd" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}"/>
					
					<select type="text" name="ar" >
 						 <option value="admin">Volvo</option>
 						 <option value="index">Saab</option>
 						
			</select>
					<input type="hidden"  value="Student" name="loginas" />
						<div class="remember">
			             
						 <div class="forgot">
						 	
						 </div>
						<div class="clear"> </div>
					  </div>
					   
						<input type="submit" value="Login">
                                                <div  class="errmsg">  <%=loginmsg%>
					</div>
					</form>	
                                            
					
					
						
				</div>
				</div>
			  
			</div>
		</div>
</div>
<!--header end here-->

<!--footer end here-->
</body>
</html>