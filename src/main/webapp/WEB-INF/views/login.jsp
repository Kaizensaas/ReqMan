<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html >
  <head>
    <meta charset="UTF-8">
    <title></title>
    
    
    <link rel="stylesheet" href="static/css/reset.css">

    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="static/css/style.css">

    
    
    
    
  </head>

  <body onload='document.loginForm.username.focus();'>

      <div>
    
<!-- Form Mixin-->
<!-- Input Mixin-->
<!-- Button Mixin-->
<!-- Pen Title-->
<!--
<div class="pen-title">
  <h1>Flat Login Form</h1><span>Pen <i class='fa fa-paint-brush'></i> + <i class='fa fa-code'></i> by <a href='http://andytran.me'>Andy Tran</a></span>
</div>
-->
<div class="pen-title">
    
</div>
<!-- Form Module-->
<div class="module form-module">
  <!-- <div class="toggle"><i class="fa fa-times fa-pencil"></i>
    <div class="tooltip">Click Me</div>
  </div> -->
  <div class="form">
    <h2>Login to your account</h2>
<c:url var="loginUrl" value="/login" />
<form name='loginForm' action="<c:url value='/login' />" method="post">
<c:if test="${not empty error}">
                                <div class="error">${error}</div>
                            </c:if>
                            <c:if test="${not empty msg}">
                                <div class="msg">${msg}</div>
                            </c:if>
      <input type="text"  id="username" name="username" placeholder="Username" required/>
      <input type="password" id="password" name="password" placeholder="Password" required/>
      <input type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}" />
      <input class="submit" type="submit" value="Log in">
    </form>
  </div>
  
  <div class="cta" style="white-space: nowrap;"><input type="checkbox" name="vehicle" value="Bike"> Keep me logged in</div>
</div>

      </div>
<div class="footer">
               <p class="p">
                
                   <a class="a" href="/pub/english.cgi/0/1?op=rmail&buy=1">Sign up</a> |
                
                <a class="a" href="/login">
                    <span>Forgot password?</span>
                </a> |
                <a class="a" href="/login">
                    <span >Single sign-on</span>
                </a>
                
               
                
            </p>
</div>


<!--
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://codepen.io/andytran/pen/vLmRVp.js'></script>

        <script src="js/index.js"></script>

  -->  
   </body>
</html>
