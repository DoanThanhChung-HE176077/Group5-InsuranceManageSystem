<%-- 
    Document   : ChangePassword
    Created on : Oct 2, 2023, 4:12:29 PM
    Author     : Dell
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

        <script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            body{
                background-color:hsl(47,98%,58%) !important;
                font-family: Arial, Helvetica, sans-serif;
                height: 100vh;
                padding: 50px;

            }
            #password-form{
                background-color: white;
                padding: 70px 50px;
                border-radius:20px;
                margin-top: 100px;
            }
            #password-form h1{
                margin-top: 20px;
            }
            #password-form input{
                width: 400px;
                height: 35px;
                border-radius: 3px;
                margin-bottom: 20px;
                size: 30px;
                border: 1px solid gray;
                font-size: 16px;
            }
            #password-form p{
                margin: 3px 0;
                font-size: 13px;

            }
            .btn{
                background-color:hsl(47,98%,58%);
                color: white;
                border: none;
            }
            #password-form a{
                color: white;
                border-radius: 5px;
                padding: 15px;
                background-color: hsl(47,98%,58%);

                text-decoration: none;
            }
            #password-form a:hover{
                color: black;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Part/header.jsp"></jsp:include>
            <div id="password-form">
                <h1>Thay đổi mật khẩu</h1>
                <form action="changePassword" method="post">
                    <p>Mật khẩu cũ</p> <input type="password" name="oldPass" required placeholder="Old password"/><br/>
                    <p>Mật khẩu mới</p> <input type="password" name="newPass" required placeholder="New password"/><br/>
                    <p>Xác nhận</p> <input type="password" required name="reNewPass" placeholder="Confirm password"/><br/>
                    <p style="color: red">${msg}</p>
                <input class="btn" type="submit" value="Change my password"/>
            </form>
        </div>
    </body>
</html>
