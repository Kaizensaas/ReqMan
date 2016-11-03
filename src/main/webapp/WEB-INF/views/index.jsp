<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ENOC</title>  
        <style>
            html{
                background-color:#e9e9e9;
            }
            .username.ng-valid {
                background-color: lightgreen;
            }
            .username.ng-dirty.ng-invalid-required {
                background-color: red;
            }
            .username.ng-dirty.ng-invalid-minlength {
                background-color: yellow;
            }
            .email.ng-valid {
                background-color: lightgreen;
            }
            .email.ng-dirty.ng-invalid-required {
                background-color: red;
            }
            .email.ng-dirty.ng-invalid-email {
                background-color: yellow;
            }
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"/>
        <link rel="shortcut icon" href="<c:url value='/static/img/favicon.ico' />" />

        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.8/angular-ui-router.min.js"></script>
        <script src="<c:url value='/static/js/app.js' />"></script>
        <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>
        
        <style type="text/css">
body {
	background-color: #e9e9e9;
	margin:100px 100px 100px 100px;
}
div#fixedheader {
	position:fixed;
	top:0px;
	left:0px;
	width:100%;
	color:#CCC;
	background:#333;
	padding:16px;
        margin: 0 auto;
}
div#right_part {
    width:49%;
    float:right;
    border:2px solid #000;
    text-align:right;
}
div#left_part {
    border:0px solid #000;
    float:left;
    width:49%;
}
div#fixedfooter {
	position:fixed;
	bottom:0px;
	left:0px;
	width:100%;
	color:#CCC;
	background:#333;
	padding:8px;
}

nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}

nav ul {
    list-style-type: none;
    padding: 0;
}
   
nav ul a {
    text-decoration: none;
}

nav ul li {
    border: 1px solid #a1a1a1;
    padding: 10px 30px;
    background: #dddddd;
    width: 150px;
    border-radius: 2px;
    align-content: flex-start;
}

article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
}

</style>
        

    </head>
    <body ng-app="myApp">
        
        <div>
        
        <div id="fixedheader">
            <div id="left_part"><b style="color: white">My overview</b></div>
            <div id="right_part"><span style="color: white"><b>${pageContext.request.userPrincipal.name} </b>| <a
                        href="javascript:formSubmit()"> <b style="color:red">Logout</b> </a></span></div>
        </div>
                        
                        <div id="nav">
                            <nav>
                                <ul>
                                  <li><a data-toggle="pill" ui-sref="person">Person</a></li>
                                  <li><a href="#">Link1</a></li>
                                  <li><a href="#">Link2</a></li>
                                  <li><a href="#">Link3</a></li>
                                </ul>
                            </nav>
                        </div>
                        
 
                        
                        
                        <div id="article">
                            <article>
                                
                                
                                
                                <c:if test="${pageContext.request.userPrincipal.name == null}">
                                    <h2>
                                        <c:redirect url="/login"/>
                                    </h2>
                                </c:if> 

                                <sec:authorize access="hasRole('ROLE_USER')">
                                    <!-- For login user -->
                                    <c:url value="/logout" var="logoutUrl" />
                                    <form action="${logoutUrl}" method="post" id="logoutForm">
                                        <input type="hidden" name="${_csrf.parameterName}"
                                               value="${_csrf.token}" />
                                    </form>
                                    <script>
                                        function formSubmit() {
                                            document.getElementById("logoutForm").submit();
                                        }
                                    </script>

                                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                                        <div ui-view>

                                        </div>
                                    </c:if>
                                </sec:authorize>

                            </article>
                        </div>
        
        
        
    </div>    

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
            $(document).ready(function() {
                $('ul.nav-pills li a').click(function(e) {
                    $('ul.nav-pills li.active').removeClass('active')
                    $(this).parent('li').addClass('active')
                })
            });
</script>    
</html>
