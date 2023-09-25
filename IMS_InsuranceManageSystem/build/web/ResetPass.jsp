<%-- 
    Document   : Login
    Created on : Sep 23, 2023, 1:10:28 PM
    Author     : thant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quên Mật khẩu</title>
        <link rel="stylesheet" href="CSS/auth.css">
        <style>
            
            input:focus {
                border-color: #000 !important;
                transition: border-color 0.5s;
            }
            
        </style>
    </head>
    <body>
        <jsp:include page="Part/header.jsp"></jsp:include>
        
        <section>
            <div id="banner-top" class="" style="pointer-events: none">
                <div class="carousel-banner-top-item">
                    <img class="owl-lazy" src="Image/1.jpg" alt="Bảo hiểm quân đội EMIC">
                    <div class="wraper-content-carosel">QUÊN MẬT KHẨU</div>
                </div>
            </div>
        </section>
        
        <div class="login-default col-xl-3 col-lg-4 col-md-6 col-12">
            <form action="#">
                <div class="title" style="text-align: center; font-size: 27px; line-height: 38px; margin-bottom: 30px; margin-top: 10px;">
                    QUÊN MẬT KHẨU
                </div>
                <!--            <div class="input-group">
                                <label for="username">Mã đăng nhập</label>
                                <input type="text" id="username" placeholder="Nhập số điện thoại/ Email">
                            </div>-->
                <div class="form-group" style="margin-bottom: 25px;">
                    <span class="input_label">Mã đăng nhập</span>
                    <div class="input-group">
                        <input name="" type="text" id="" class="form-control" placeholder="Nhập số điện thoại/Email đang sử dụng">
                    </div>
                </div>

                <div class="form-group" id="Upa_otp"> 
                    <span class="input_label">OTP</span>
                    <div class="input-group">
                        <input name="" type="password" id="" class="form-control" placeholder="Nhập OTP">
                    </div>
                </div>
                <button style="background-color: green;" type="submit">Xác Nhận</button>


            </form>
        </div>
        
    </body>
</html>
