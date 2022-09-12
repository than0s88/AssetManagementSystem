<%--
  Created by IntelliJ IDEA.
  User: SW2-IT
  Date: 9/12/2022
  Time: 10:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>PH Asset Management System</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="assets/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="assets/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="assets/css/login.css">
  <style>
    .btn-block {
      color: white;
      background-color: #03535a;
    }
    .input-group-prepend span, .input-group-append, .input-group-text {
      background-color: #03535a!important;
      color: white;
      border: 0 !important;
    }
  </style>
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body">



      <center><img src="/assets/images/ohp-logo2.png" width="95%"></center>


      <center>
        <p style="font-size: 1rem;">PH ASSET MANAGEMENT SYSTEM<br>
          Admin Access Only</p></center>
      <form action="LoginServlet" method="post">

        <div class="input-group form-group">

          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-user white-icon"></i></span>
          </div>
          <input type="text" class="form-control" placeholder="Enter Username" name="username" required autofocus>
        </div>

        <div class="input-group form-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-key white-icon"></i></span>
          </div>
          <input type="password" class="form-control" placeholder="Enter Password" name="password" required>

          <span class="invalid-feedback" role="alert">
                <strong></strong>
              </span>

        </div>
        <div class="form-group form-check">
          <input class="form-check-input" type="checkbox" name="remember" id="remember" checked>
          <label class="form-check-label" for="remember">

          </label>
        </div>
        <div class="social-auth-links text-center mb-3">
          <button type="submit" name="submit" class="btn btn-success btn-block">Submit</button>
        </div>
      </form>
      <!-- /.social-auth-links -->
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->
<!-- jQuery -->
<script src="/assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/assets/dist/js/adminlte.min.js"></script>
</body>
</html>
