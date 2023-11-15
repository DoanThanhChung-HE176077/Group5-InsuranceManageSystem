<%-- 
    Document   : Login
    Created on : Sep 23, 2023, 1:10:28 PM
    Author     : thant
--%>

<%-- 
    Document   : Login
    Created on : Sep 23, 2023, 1:10:28 PM
    Author     : thant
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Ký</title>
        <link rel="stylesheet" href="CSS/auth.css">
        <!-- bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

        <style>

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
    <body>
        <jsp:include page="Part/header.jsp"></jsp:include>

            <section>
                <div id="banner-top" class="" style="pointer-events: none">
                    <div class="carousel-banner-top-item">
                        <img class="owl-lazy" src="Image/1.jpg" alt="Bảo hiểm quân đội EMIC">
                        <div class="wraper-content-carosel">ĐĂNG KÝ</div>
                    </div>
                </div>
            </section>

            <div class="login-default" style="align-items: center;">
                <form action="register" method="post">
                    <div class="title" style="text-align: center; font-size: 27px; line-height: 38px; margin-bottom: 30px; margin-top: 10px;">
                        ĐĂNG KÝ
                    </div>


                    <div class="form-group" style="display: flex;">
                        <span class="input_label">Số điện thoại</span>
                        <div class="input-group" style="margin-right: 10px;">
                            <input name="input-phoneNum" type="text" id="" class="form-control" placeholder="Nhập số điện thoại" 
                                   value="${phoneNum}" required invalid-message="Vui lòng nhập">

                    </div>

                    <span class="input_label" style="margin-left: 180px;">Email</span>
                    <div class="input-group">
                        <input name="input-mail" type="text" id="" class="form-control" placeholder="Nhập Mail" required
                               value="${mail}">

                    </div>

                </div>
                <p style="text-align: start; color: red; font-size: 14px; margin-bottom: 25px; margin-top: -20px;">
                    ${errorMessages["input-phoneNum"]} &nbsp&nbsp&nbsp ${errorMessages["input-mail"]}
                </p>


                <div class="form-group" style="margin-bottom: 25px;">
                    <span class="input_label">Họ Tên</span>
                    <div class="input-group">
                        <input name="input-fullname" type="text" id="" class="form-control" placeholder="Nhập tên, độ dài 2-64 chữ cái" required
                               value="${fullname}">
                    </div>
                </div>
                <p style="text-align: center; color: red; font-size: 14px; margin-bottom: 0;">
                    ${errorMessages["input-fullname"]}
                </p>
                <div class="form-group" style="margin-bottom: 25px;">
                    <span class="input_label">Ngày Sinh</span>
                    <div class="input-group">
                        <input name="input-dob" type="text" id="datepicker" class="form-control" placeholder="Nhập ngày sinh" style="background-color: #fff !important;" required
                               value="${dob}">
                    </div>
                </div>

                <div class="form-group" style="margin-bottom: 25px;">
                    <span class="input_label">Địa chỉ</span>
                    <div class="input-group">
                        <input name="input-address" type="text" id="" class="form-control" placeholder="Nhập địa chỉ" required
                               value="${address}">
                    </div>
                </div>

                <div class="form-group" style="margin-bottom: 25px;">
                    <span class="input_label">CMT/CCCD</span>
                    <div class="input-group">
                        <input name="input-iden" type="text" id="" class="form-control" placeholder="Nhập CMT/CCCD" required
                               value="${iden}">
                    </div>
                    <p style="text-align: center; color: red; font-size: 14px; margin-bottom: 0;">
                        ${errorMessages["input-iden"]}
                    </p>
                </div>

                <div class="form-group" id="Upa_otp"> 
                    <span class="input_label">Mật khẩu</span>
                    <div class="input-group">
                        <input name="input-password" type="password" id="" class="form-control" placeholder="Nhập mật khẩu" required
                               value="${pass}">
                    </div>
                </div>
                <div class="form-group" id="Upa_otp"> 
                    <span class="input_label">Nhập lại</span>
                    <div class="input-group">
                        <input name="input-repassword" type="password" id="" class="form-control" placeholder="Nhập lại mật khẩu" required
                               value="${repass}">
                    </div>
                    <p style="text-align: center; color: red; font-size: 14px; margin-bottom: 0;">
                        ${errorMessages["input-password"]}
                    </p>
                </div>
                <c:if test="${otpStatus != null}">
                    <div class="form-group" id="Upa_otp"> 
                        <span class="input_label">OTP</span>
                        <div class="input-group">
                            <input name="input-otp" type="text" id="" class="form-control" placeholder="Nhập Otp" required
                                   ">
                        </div>
                        <p style="text-align: center; color: red; font-size: 14px; margin-bottom: 0;">
                            ${errorMessages["input-otp"]}
                        </p>
                    </div>    
                </c:if>

                <button style="background-color: #fdd12d; color: #2c464f;" type="submit">Đăng ký</button>


            </form>


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
