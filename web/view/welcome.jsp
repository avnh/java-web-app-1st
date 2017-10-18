<%-- 
    Document   : welcome.jsp
    Created on : Oct 16, 2017, 3:46:14 PM
    Author     : Viet Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Students information</title>

<style type="text/css">
<!--
body {

text-align: center;
min-width: 860px;
background: #F1F1F1;

}
#menu{
	width: 1000px;
	text-align: right;
	/*color: #fff;*/
}
#wrapper {
	width: 800px;
	margin: 0 auto;
	background: #fff;
	font-family:"Arial";
}
#section{
	text-align: left;
	color: #fff;
}
-->

</style>

</head>

<body>

<div id="menu">
<a href='editprofile' style='padding:3pt 6pt 3pt 6pt'>Edit profile</a>
<a href='logout' style='padding:3pt 6pt 3pt 6pt'>Logout</a>
</div>

<div id="wrapper">

<h1>Students information</h1>
Find other: 
<input id="search-tbx" type="text" name="search-tbx">
<button class="button" id="search-btn"><span>Search</span></button>

<table border="0" cellpadding="5" style='font-size: 14px;text-align: left'>
	
	<tr>
		<td>
			<div id = "search-result"> 
			
			</div>
		</td>		
	</tr>

	<tr>
		<td style='width:800px; background:#006997;padding:3pt 6pt 3pt 6pt'>
			<div id ="section">
				<b>Basic information</b>
			</div>
		</td>		
	</tr>
	<tr><td>
					<p><b>Fullname: </b>${user.fullname}</p>

					<p><b>Age: </b>${user.age}</p>

					<p><b>Email: </b>${user.email}</p>
	</td></tr>
	<tr>
		<td style='width:800px; background:#006997;padding:3pt 6pt 3pt 6pt'>
			<div id ="section">
				<b>More information</b>
			</div>
		</td>		
	</tr>
	
	<tr><td>
		<p><b>Job: </b>${user.job}</p>
		
		<p><b>Introduction: </b><div>${user.introduction}</div></p>
		
		</td></tr>
	
</table>
</div>
<script src='templates/js/jquery.min.js'></script>
<script src="templates/js/search.js"></script>

</body>
</html> 
