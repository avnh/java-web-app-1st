<%-- 
    Document   : register
    Created on : Oct 17, 2017, 3:43:53 PM
    Author     : Viet Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp</title>
    </head>
    <body>
        <link href="templates/css/style.css" rel="stylesheet" type="text/css"/>
<div class="container">
  <form method="POST" class="form-signin" action="register">
    <h2 class="form-signin-heading">SignUp or <a href='login'> SignIn here </a></h2>
    <input type="text" name="username" class="input-block-level" placeholder="username">
    <input type="password" name="password" class="input-block-level" placeholder="password">
    
    <div id="error">${message}</div>
    <br>
    <button class="btn btn-primary" type="submit" name="ok">SignUp</button>
  </form>
</div>
    </body>
</html>
