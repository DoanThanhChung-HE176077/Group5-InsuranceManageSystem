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
        <title>Đăng nhập</title>
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
                    <div class="wraper-content-carosel">ĐĂNG NHẬP</div>
                </div>
            </div>
        </section>
        
        <div class="login-default col-xl-3 col-lg-4 col-md-6 col-12">
            <form action="login" method="post">
                <div class="title" style="text-align: center; font-size: 27px; line-height: 38px; margin-bottom: 30px; margin-top: 10px;">
                    ĐĂNG NHẬP
                </div>
                <div class="form-group" style="margin-bottom: 25px;">
                    <span class="input_label">Mã đăng nhập</span>
                    <div class="input-group">
                        <input name="input-login" type="text" id="" class="form-control" placeholder="Nhập số điện thoại/Email">
                    </div>
                </div>

                <div class="form-group" id="Upa_otp"> 
                    <span class="input_label">Mật khẩu</span>
                    <div class="input-group">
                        <input name="input-password" type="password" id="" class="form-control" placeholder="Nhập mật khẩu">
                    </div>
                </div>
                <p style="text-align:center;color:red; font-size: 14px; margin-bottom: 10px;">
                    ${msg}
                </p>
                <button style="background-color: green;" type="submit">Đăng nhập</button>
    
            </form>
        </div>
        
    </body>
</html>
