<%-- 
    Document   : User_Mail_OTP
    Created on : Nov 2, 2023, 1:44:59 AM
    Author     : chun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="CSS/user_profile.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

        <style>
            .myimg {
                margin-right: 10px;
                max-width: 250px;
                object-fit: cover;
                object-position: center;
                box-shadow: 0 0 10px #2c464f;
            }
            #main-container{
                box-shadow: 0 33px 61px -29px rgb(0 0 0/80%);
                object-fit: cover;
                border-radius: 25px;
            }

        </style>
    </head>
    <body style="background-color: hsl(47,98%,58%);">
        <jsp:include page="Part/header.jsp"></jsp:include>
            <form class="form-info" style="margin-top: 150px" method="POST" action="UserChangeEmailOTP">
                <div class="container  bg-white mt-5 mb-5" id="main-container">
                    <div class="row">
                        <div class="col-md-5 border-right">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                <img id="profileImage" class="rounded-circle mt-5 myimg" width="150px" src="">
                            </div>
                        </div>
                        <div class="col-md-5 border-right">
                            <div class="p-3 py-5">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4 class="text-right">Xác nhận thay đổi</h4>
                                </div>
                                <div class="row ">
                                    <div class="col-md-12">
                                        <label class="labels">Nhập OTP</label>
                                        <input  type="text"class="form-control" placeholder="OTP" id="user_email2" name="enterOTP" required="">
                                    </div>
                                </div>
                                <input type="text" value="${newMail}" hidden name="newMail"/>
                                <div class="modal-footer">
                                    <button id="btn-edit1" type="submit" class="btn btn-primary">Gửi mã xác nhận</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
    </body>

</html>