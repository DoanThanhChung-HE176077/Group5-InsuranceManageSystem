<%-- 
    Document   : Admin_blog_dashboard
    Created on : Oct 2, 2023, 7:46:10 PM
    Author     : chun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng kí nhân viên</title>
        <link rel="stylesheet" href="CSS/auth.css">
        <!-- bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

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
            input:focus {
                border-color: #000 !important;
                transition: border-color 0.5s;
            }

            .flatpickr-months .flatpickr-month {
                background-color: #fdd12d;
            }

            .flatpickr-current-month .flatpickr-monthDropdown-months {
                background-color: #fdd12d;
            }

            .flatpickr-weekdays {
                background-color: #fdd12d !important;
            }

            .flatpickr-weekday {
                background-color: #fdd12d !important;
                color: #fff !important;
            }

            .flatpickr-calendar.arrowTop:after {
                border-bottom-color: #fdd12d;
            }

            .flatpickr-calendar.arrowBottom:after {
                border-top-color: #fdd12d;
            }
        </style>
    </head>
    <body style="background-color: hsl(47,98%,58%);">

        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>


            <!--sidebar-->
        <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>






        <jsp:include page="Part/header.jsp"></jsp:include>


            <div class="form-info" style="margin-top: 150px">
                <div class="container  bg-white mt-5 mb-5" id="main-container">
                    <div class="row">
                        <div class="col-md-3 ">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                <img id="profileImage" class="rounded-circle mt-5 myimg" width="150px" src="">
                            </div>
                            <!-- Image thumbnail -->
                            <!--tk xac nhan-->

                        </div>
                        <div class="col-md-6 " >
                            <div class="p-3 py-5">
                                <div class="login-default" style="align-items: center;">
                                    <form action="admin_Staff_add" method="post">
                                        <div class="title" style="text-align: center; font-size: 27px; line-height: 38px; margin-bottom: 30px; margin-top: 10px;">
                                            Đăng kí nhân viên
                                        </div>



                                        <span class="input_label">Số điện thoại</span>
                                        <div  class="input-group" >
                                            <input name="input-phoneNum" type="text" id="" class="form-control" placeholder="Nhập số điện thoại" required>

                                        </div>
                                        <p style="text-align: start; color: red; font-size: 14px; margin-bottom: 0">
                                        ${errorMessages["input-phoneNum"]}
                                    </p>

                                    <span class="input_label">Email</span>
                                    <div class="input-group" >
                                        <input name="input-mail" type="text" id="" class="form-control" placeholder="Nhập Mail" required>

                                    </div>
                                    <p style="text-align: start; color: red; font-size: 14px; margin-bottom: 0">
                                        ${errorMessages["input-mail"]}
                                    </p>





                                    <span class="input_label">Họ Tên</span>
                                    <div class="input-group">
                                        <input name="input-fullname" type="text" id="" class="form-control" placeholder="Nhập tên, độ dài 2-64 chữ cái" required>
                                    </div>

                                    <p style="text-align: start; color: red; font-size: 14px; margin-bottom: 0;">
                                        ${errorMessages["input-fullname"]}
                                    </p>

                                    <span class="input_label">Ngày Sinh</span>
                                    <div class="input-group">
                                        <input name="input-dob" type="text" id="datepicker" class="form-control" placeholder="Nhập ngày sinh" style="background-color: #fff !important;" required>
                                    </div>



                                    <span class="input_label">Địa chỉ</span>
                                    <div class="input-group">
                                        <input name="input-address" type="text" id="" class="form-control" placeholder="Nhập địa chỉ" required>
                                    </div>



                                    <span class="input_label">CMT/CCCD</span>
                                    <div class="input-group">
                                        <input name="input-iden" type="text" id="" class="form-control" placeholder="Nhập CMT/CCCD" required>
                                    </div>
                                    <p style="text-align: start; color: red; font-size: 14px; margin-bottom: 0;">
                                        ${errorMessages["input-iden"]}
                                    </p>



                                    <span class="input_label">Mật khẩu</span>
                                    <div class="input-group">
                                        <input name="input-password" type="password" id="" class="form-control" placeholder="Nhập mật khẩu" required>
                                    </div>


                                    <span class="input_label">Nhập lại</span>
                                    <div class="input-group">
                                        <input name="input-repassword" type="password" id="" class="form-control" placeholder="Nhập lại mật khẩu" required>
                                    </div>
                                    <p style="text-align: start; color: red; font-size: 14px; margin-bottom: 0;">
                                        ${errorMessages["input-password"]}
                                    </p>

                                    <div class="form-group" style="display: flex;">
                                        <button style="background-color: #076233; color: #fff;width: 50%;margin-right: 10px" >
                                            <a href="admin_Staff_list" style="text-decoration: none; color: #fff;">Quay lại</a>

                                        </button>
                                        <button style="background-color: #24262b; color: #fff; width: 50%">Đăng ký</button>
                                    </div>

                                </form>


                            </div>
                        </div>
                    </div>


                </div>
            </div>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const today = new Date();
                const maxDate = new Date();
                maxDate.setFullYear(today.getFullYear() - 18);

                flatpickr("#datepicker", {
                    dateFormat: "d/m/Y",
                    maxDate: maxDate
                });
            });
        </script>


    </body>
</html>
