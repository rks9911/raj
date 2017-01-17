<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Support Store | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="resources/dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="resources/plugins/iCheck/square/blue.css">
     <script src="resources/popup/js/sweetalert-dev.js"></script>
    <script src="resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script src="resources/dist/js/ajax.js"></script>
	<link rel="stylesheet" href="resources/popup/css/sweetalert.css">
 <style type="text/css">
    #msg { 
  color: green;
  font-size: 16px;
  font-weight: 600;
  font-style: italic;
  font-family: "Times New Roman", Times, serif;
}
#error { 
  color: red;
  font-size: 16px;
  font-weight: 600;
  font-style: italic;
  font-family: "Times New Roman", Times, serif;
}
    </style>
  </head>
  <body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo">
        <!-- <a href="index"><b>Support</b>Store</a> -->
        <img src ="resources/dist/img/SupportStore.png"/>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>
        <form action="<c:url value='j_spring_security_check'/>" method="POST" class="form-horizontal" role="form">
          <div class="form-group has-feedback">
            <input type="email" class="form-control" name="username" id="userEmail" placeholder="Email" required="required">
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" id="password"  placeholder="Password">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
            <div class="col-xs-12">
            <p id="noUser" style="color:red;"></p>
            	<div id="error">${error}</div>
			    <div id="msg">${msg}</div>
              <button type="submit" id="LoginButton" class="btn btn-primary btn-block btn-flat">Login</button>
            </div><!-- /.col -->
          </div>
        </form>

        <!-- <div class="social-auth-links text-center">
          <p>- OR -</p>
          <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
          <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
        </div> --><!-- /.social-auth-links -->

        <p><a href="ForgotPassword">Forgot Password</a></p>
        <p><a href="registrationPage" class="text-center">Register a New Membership</a></p>
        <p><a href="requestForNewCompany" class="text-center">Request For New Company</a></p>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->


    <script src="resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="resources/plugins/iCheck/icheck.min.js"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>
