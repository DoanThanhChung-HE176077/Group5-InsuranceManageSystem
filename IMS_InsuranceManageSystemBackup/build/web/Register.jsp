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
        <title>Đăng Ký</title>
        <link rel="stylesheet" href="CSS/auth.css">
        <!-- bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
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
                        <input name="input-phoneNum" type="text" id="" class="form-control" placeholder="Nhập số điện thoại">
                    </div>
                    <span class="input_label" style="margin-left: 180px;">Email</span>
                    <div class="input-group">
                        <input name="input-mail" type="text" id="" class="form-control" placeholder="Nhập Mail">
                    </div>
                </div>
                
                <div class="form-group" style="margin-bottom: 25px;">
                    <span class="input_label">Họ Tên</span>
                    <div class="input-group">
                        <input name="input-fullname" type="text" id="" class="form-control" placeholder="Nhập họ tên đầy đủ">
                    </div>
                </div>
                
                <div class="form-group" style="margin-bottom: 25px;">
                    <span class="input_label">Ngày Sinh</span>
                    <div class="input-group">
                        <input name="input-dob" type="date" id="" class="form-control" placeholder="Nhập ngày sinh">
                    </div>
                </div>
                
                <div class="form-group" style="margin-bottom: 25px;">
                    <span class="input_label">Địa chỉ</span>
                    <div class="input-group">
                        <input name="input-address" type="text" id="" class="form-control" placeholder="Nhập địa chỉ">
                    </div>
                </div>
                
                <div class="form-group" style="margin-bottom: 25px;">
                    <span class="input_label">CMT/CCCD</span>
                    <div class="input-group">
                        <input name="input-iden" type="text" id="" class="form-control" placeholder="Nhập CMT/CCCD">
                    </div>
                </div>

                <div class="form-group" id="Upa_otp"> 
                    <span class="input_label">Mật khẩu</span>
                    <div class="input-group">
                        <input name="input-password" type="password" id="" class="form-control" placeholder="Nhập mật khẩu">
                    </div>
                </div>
                <div class="form-group" id="Upa_otp"> 
                    <span class="input_label">Nhập lại</span>
                    <div class="input-group">
                        <input name="input-repassword" type="password" id="" class="form-control" placeholder="Nhập lại mật khẩu">
                    </div>
                </div>
                <p style="text-align:center;color:red; font-size: 14px; margin-bottom: 10px;">
                    ${msg}
                </p>
                <button style="background-color: green;" type="submit">Đăng ký</button>


            </form>
                
                
        </div>
                
        
    </body>
</html>
