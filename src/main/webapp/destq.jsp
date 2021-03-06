
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@page import="hvpm.dcpe.Student"%>
<%@page import="java.util.Vector"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        
body {
	padding: 0;
	margin: 0;
	font-family: 'Alegreya Sans', sans-serif;

}
body a {
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
	text-decoration: none;
}
body a:hover {
	text-decoration: none;
}
body a:focus, a:hover {
	text-decoration: none;
}
input[type="button"], input[type="submit"] {
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
}
h1, h2, h3, h4, h5, h6 {
	margin: 0;
	padding: 0;
	font-family: 'Alegreya Sans', sans-serif;
}
p {
	margin: 0;
}
ul {
	margin: 0;
	padding: 0;
}
li {
	list-style-type:none;
		
}
label {
	margin: 0;
}
a:focus, a:hover {
	text-decoration: none;
	outline: none;
}
/*-- //Reset-Code --*/

.w3ls-banner {
    background: url(images/bg.jpg) no-repeat;
	background-size: cover;
    min-height: 100vh;
    color: white;
	background-position:center;
	padding-top: 30px;	
}
.heading {
    text-align: center;
	    margin-bottom: 25px;
		letter-spacing: 1px;
}
.heading h1 {
    margin-bottom: 25px;
    text-transform: uppercase;
    font-weight: 500;
	font-size: 50px;
}
.heading h2 {
    font-weight: 400;
}
.heading p {
    font-size: 16px;
    margin-top: 20px;
}
.container {
	width: 43%;
    margin: auto;
    padding: 30px 30px 20px;
    box-sizing: border-box;
    background-color: rgba(0, 0, 0, 0.5);
}

label.form-label {
    display: inline-block;
    width: 27%;
	font-weight: 400;
	letter-spacing: 1px;
	vertical-align: top;
}
.form-input {
    display: inline-block;
    width: 72%;
}
.name .form-input {
    display: inline-block;
    width: 72%;
}
ul.field-list li {
    margin: 15px 0px;
}
select {
    width: 98.4%;
    padding: 12px 10px;
    color: #666;
    border: none;
    font-size: 15px;
	font-family: 'Alegreya Sans', sans-serif;
    background-color: #fff;
}
input[type="text"]:focus, input[type="email"]:focus,select:focus {
    outline: none;
}
.dob select {
    width: 32.4%;
}

input[type="text"],input[type="email"] {
 /*   margin: 15px 0px; */
    padding: 12px 10px;
	box-sizing: border-box;
	background-color: #fff;
	font-size: 15px;
	border: none;
	width: 98.6%;
	color: #333;
	font-family: 'Alegreya Sans', sans-serif;
}
span.form-sub-label input[type="text"] {
    margin: 0px 0px 15px 0;
	width: 49%;
}

span.last input[type="text"] {
    margin: 0px 0px 0px 0;
}
.name span.form-sub-label input[type="text"],.dob span.form-sub-label input[type="text"] {
    margin-bottom: 0;
}
span.form-required {
    color: #fff;
}

label.form-label1 {
    display: inline-block;
    margin: 15px 0px;
	letter-spacing: 1px;
}
label.type-of-test {
    display: inline-block;
    width: 150px;
    margin-bottom: 10px;
    margin-left: 10px;
	letter-spacing: 1px;
	font-weight: 100;
	    font-size: 14px;
}
textarea {
    width: 98%;
	background-color: rgba(255, 255, 255, 0.63);
}
.submit_btn{
	text-align: right;
    margin-right: 10px;
}
.cancel_btn{
	text-align: right;
    margin-right: 10px;
}
input[type="submit"] {
	width: 50%;
    padding: 10px 40px;
    margin-top: 5px;
	font-size: 16px;
	background-color: #007cc0;
    border: 1px solid #007cc0;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: 1px;
	outline: 0;
	cursor: pointer;
	font-family: 'Alegreya Sans', sans-serif;
}
input[type="submit"]:hover {
    background-color: #ffc168;
    border: 1px solid #ffc168;
    color: #000;
}
input[type="reset"] {
	width: 72.5%;
    padding: 10px 40px;
    margin-top: 5px;
	font-size: 16px;
	background-color: #007cc0;
    border: 1px solid #007cc0;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: 1px;
	outline: 0;
	cursor: pointer;
	font-family: 'Alegreya Sans', sans-serif;
}
input[type="reset"]:hover {
    background-color: #ffc168;
    border: 1px solid #ffc168;
    color: #000;
}
input.year {
	width: 31% !important;
}
input[type="checkbox"] {
    vertical-align: middle;
}

::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #444;
}
::-moz-placeholder { /* Firefox 19+ */
  color: #444;
}
:-ms-input-placeholder { /* IE 10+ */
  color: #444;
}
:-moz-placeholder { /* Firefox 18- */
  color: #444;
}
.copyright p {
    text-align: center;
    padding: 15px 5px;
	letter-spacing: 1px;
    font-size: 16px;
}
.copyright a {
    color: #fff;
}
.copyright a:hover {
    color: #ffc168;
}
/* respoinsive */

@media screen and (max-width: 1366px){
	.container {
		width: 45%;
	}
	.submit_btn {
		margin-right: 8px;
	}
	input[type="submit"] {
		width: 72%;
	}
}
@media screen and (max-width: 1280px){
	.heading h1 {
		font-size: 45px;
	}
}
@media screen and (max-width: 1080px){
	.container {
		width: 52%;
	}
}
@media screen and (max-width: 991px){
	.container {
		width: 55%;
	}
	.heading h1 {
		font-size: 42px;
	}
}
@media screen and (max-width: 900px){
	.container {
		width: 58%;
	}
	.heading h1 {
		font-size: 40px;
	}
}
@media screen and (max-width: 800px){
	.container {
		width: 65%;
	}
	.heading h1 {
		font-size: 38px;
	}
}
@media screen and (max-width: 768px){
	.container {
		width: 70%;
	}
	.heading h1 {
		font-size: 36px;
	}
}
@media screen and (max-width: 736px){
	.container {
		width: 80%;
	}
}
@media screen and (max-width: 640px){
	.container {
		width: 85%;
	}
}
@media screen and (max-width: 568px){
	.container {
		width: 90%;
	}
	label.type-of-test {
		width: 40%;
	}
	label.form-sub-label1 {
		position: absolute;
		bottom: -28px;
		left: 5px;
		font-size: 13px;
		display: block;
	}
}

@media screen and (max-width: 480px){
	.heading h1 {
		font-size: 33px;
	}
	.container {
		width: 95%;
		padding: 17px 10px 20px;
	}
	label.form-label {
		font-size: 15px;
	}
	.heading h2 {
		font-size: 1.3em;
	}
	.copyright p {
		line-height: 26px;
	}
}
@media screen and (max-width: 414px){
	.form-input {
		width: 100%;
	}
	label.form-label {
	width: 100%;
		margin-bottom: 7px;
	}
	input.year {
		width: 41% !important;
	}
	label.form-sub-label1 {
		bottom: -22px;
		left: 4px;
		font-size: 13px;
		letter-spacing: 1px;
	}
	.heading h2 {
		 font-size: 22px;
	}
	.dob select {
		width: 32%;
	}
	input[type="email"] {
		 width: 99%;
	}
	textarea {
		width: 97%;
	}
	input[type="text"], input[type="email"],select {
		padding: 10px 10px;
	}
	.name .form-input {
		width: 100%;
	}
	input[type="submit"] {
		width: 100%;
	}
	.submit_btn {
		margin-right: 4px;
	}
	select {
		padding-right: 0;
	}
	.heading h1 {
		font-size: 29px;
	}
	.heading h2 {
		font-size: 20px;
	}
	.heading p {
		font-size: 15px;
		margin-top: 10px;
	}
}

@media screen and (max-width: 384px){
	
	.heading h1 {
		margin-bottom: 20px;
		font-size: 30px;
	}
	.heading h1 {
		font-size: 28px;
	}
}

@media screen and (max-width: 375px){
	
	label.type-of-test {
		width: 40%;
		margin-left: 5px;
	}
	label.form-sub-label1 {
		bottom: -25px;
	}
	input.year {
		width: 39% !important;
	}
	.heading h2 {
		font-size: 20px;
	}
	.heading p {
		font-size: 15px;
		margin-top: 15px;
	}
	.heading h1 {
		font-size: 26px;
	}
	.copyright p {
		font-size: 15px;
	}

}

@media screen and (max-width: 320px){
	.heading h1 {
		margin-bottom: 20px;
		font-size: 24px;
	}
	.heading h2 {
		font-size: 17px;
	}
	.heading p {
		font-size: 13px;
		margin-top: 15px;
	}
	span.form-sub-label input[type="text"] {
		width: 99%;
	}
		span.last input[type="text"] {
		margin: 0px 0px 15px 0;
	}
	label.type-of-test {
		width: 36%;
		margin-left: 7px;
		font-size: 14px;
	}
	input[type="text"] {
		width: 99%;
	}
	label.form-label1 {
		margin: 8px 0px;
	}
	.copyright p {
		font-size: 14px;
	}
	.name span.form-sub-label input[type="text"]:nth-child(1) {
		margin-bottom: 10px;
	}
	ul.field-list li {
		margin: 10px 0px;
	}
	input[type="submit"] {
		font-size: 15px;
		margin-top: 0px;
	}
}



        </style>
	<!-- Meta tags -->
	<title>Registration Page</title>
	<meta name="keywords" content="General Application Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- stylesheets -->
	<link rel="stylesheet" href="style.css" type="text/css" media="all">
	
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">

</head>
<body>
	<div class="w3ls-banner">
	<div class="heading">
		<h1>Add Descriptive Type Questions </h1>
	</div>
		<div class="container">
			<div class="agile-form">
                    
<form action="distqadd.jsp" onsubmit="return myFunction()">
					
					
					<ul class="field-list">
					<li>
					<label class="form-label">Question<span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="text"  name="question" placeholder="Question"   maxlength="250"  required>
							
								
							</div>
						</li>
					
					
					
					<li>
							<label class="form-label"> Question Type <span class="form-required"> * </span></label>
						   
						   <input type="radio" id="other1" name="quet" value="very short answer" required>Very Short Answer
 					<br>
 						<label class="form-label"><span class="form-required"></span></label>	 <input type="radio" id="other1" name="quet" value="Short Answer" required>Short Answer
  							<br>
  						<label class="form-label"><span class="form-required"></span></label>	<input type="radio" id="other1" name="quet" value="Long Answer" required>Long Answer
 						
 						
 						
						   </li>
						   
						   	<li>
							<label class="form-label"> Estimated Difficulty  <span class="form-required"> * </span></label>
						   																
						 
						   <br>
 						<label class="form-label"><span class="form-required"></span></label>	   <input type="radio" id="other" name="ediff" value="Very Easy" required>Very Easy
  						
 					<br>
 						<label class="form-label"><span class="form-required"></span></label>	 <input type="radio" id="other" name="ediff" value="Easy" required>Easy
  							<br>
  						<label class="form-label"><span class="form-required"></span></label>	<input type="radio" id="other" name="ediff" value="Average" required>Average
 						
 						<br>
  						<label class="form-label"><span class="form-required"></span></label>	<input type="radio" id="other" name="ediff" value="Difficult" required>Difficult 
 						
 						<br>
  						<label class="form-label"><span class="form-required"></span></label>	<input type="radio" id="other" name="ediff" value="Very Difficult" required> Very Difficult 
 						
 						
						   </li>
						<li class="name">

						<li>
							<label class="form-label"> Course Name  <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="coursen" required>
									<option value="">Course</option>
									<option value="MSC"> MSC</option>
									<option value="MCA"> MCA </option>
									<option value="BCA"> BCA</option>
									<option value="BSC"> BSC </option>
									<option value="BBA"> BBA </option>
									
									</select>
							</div>
						</li>
						
						<li>
							<label class="form-label"> Semester  <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="sem" required>
									<option value="">Semester</option>
									<option value="SEM I"> SEM I </option>
									<option value="SEM II"> SEM II </option>
									<option value="SEM III"> SEM III </option>
									<option value="SEM IV"> SEM IV </option>
									<option value="SEM V"> SEM V </option>
									<option value="SEM VI"> SEM VI </option>
									</select>
							</div>
						</li>
					
						<li>
							<label class="form-label"> Subject  <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="sub" required>
									<option value="">Subject</option>
									
										 <%
                Student stud=new Student();
                Vector vlist=stud.list22(50);
                for(int i=0;i<vlist.size();i++)
            {
                Student s=(Student)vlist.get(i);
                %>
									<option value="<%=s.getSub()%>"><%=s.getSub()%></option>
								 <%  
            }
             %>
									</select>
							</div>
						</li>




							
						
						
						
						
						<li> 
							<label class="form-label"> Marks <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" name="marks" pattern="[1,2,3,4,5,6,7,8,9,0]{2}"minlength="1" maxlength="2"  style="width: 30%;" placeholder="Marks"  required >
							</div>
						</li>
						

						
					<div class="submit_btn">
						<input type="submit" class="pure-button pure-button-primary" value="Submit">
                                               </div>
 
</form>
				</form>
  
			</div>
		</div>
		
		
	</
</body>
</html>