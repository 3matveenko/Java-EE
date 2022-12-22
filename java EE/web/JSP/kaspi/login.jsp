
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="header.jsp"%>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Login</title>
        <link href="vendor/fontawesome-free/css/all<div class="text-center">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,
            300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
    </head>
    <body class="bg-gradient-primary">
        <div class="container">
            <div style="margin-top: 100px" class="row justify-content-center">
                <div class="col-xl-10 col-lg-12 col-md-9">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <div class="row">
                                <div   class="col-lg-6 d-none d-lg-block bg-login-image" >
                                    <img src="/JSP/kaspi/image/logo.jpg" style="margin-left: 80px;margin-top: 15px" width="390" >
                                </div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Welcome!</h1>
                                        </div>
                                        <form class="user" action="KaspiSession" method="post">
                                            <div style="margin-top: 5px" class="form-group">
                                                <input type="email" class="form-control form-control-user"
                                                       id="exampleInputEmail" aria-describedby="emailHelp"
                                                       placeholder="Enter Email Address..." name="email">
                                                <%
                                                    String error = (String) request.getAttribute("error");
                                                    if(error!=null){
                                                    if(error.equals("1")){
                                                %>  <div class="text-danger">
                                                        Email error
                                                    </div>
                                                <%
                                                    }
                                                }
                                                %>

                                            </div>
                                            <div class="form-group">
                                                <input style="margin-top: 15px" type="password" class="form-control
                                                form-control-user"
                                                       id="exampleInputPassword" placeholder="Password" name="password">
                                                <%  if(error!=null){
                                                    if(error.equals("2")){
                                                %>
                                                <div class="text-danger">
                                                    Password error
                                                <%
                                                    }
                                                }
                                                %>
                                            </div>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox small"></div>
                                            </div>
                                            <button style="margin-top: 15px;padding-left: 30px;padding-right: 30px"
                                                    type="submit" class="btn btn-primary">login</button>
                                            <hr>
                                            <a href="index.html" class="btn btn-google btn-user btn-block">
                                                <i class="fab fa-google fa-fw"></i>
                                            </a>
                                            <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                                <i class="fab fa-facebook-f fa-fw"></i>
                                            </a>
                                        </form>
                                        <div class="text-center">
                                            <form action="/KaspiForgotPass" method="get">
                                                <button style="margin-top: 10px"
                                                        class="btn btn-primary">Forgot Password?</button>
                                            </form>
                                        </div>
                                        <div class="text-center">
                                            <form action="/KaspiCreateUser" method="get">
                                                <button style="margin-top: 10px"
                                                        class="btn btn-primary">Create an Account!</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>