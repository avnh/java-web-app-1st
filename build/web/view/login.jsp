<%-- 
    Document   : login
    Created on : Oct 16, 2017, 4:15:57 PM
    Author     : Viet Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignIn</title>
    </head>
    <body>
    <link href="templates/css/style.css" rel="stylesheet" type="text/css"/>
<div class="container">
  <form method="POST" class="form-signin" action="login">
    <h2 class="form-signin-heading">SignIn or <a href='register'> SignUp here </a></h2> 
    <input type="text" name="username" class="input-block-level" placeholder="username">
    <input type="password" name="password" class="input-block-level" placeholder="password">
    <div id="error">${message}</div>
    <br>
    <button class="btn btn-primary" type="submit" name="ok">SignIn</button>
  </form>
</div>
    
</body>
</html
