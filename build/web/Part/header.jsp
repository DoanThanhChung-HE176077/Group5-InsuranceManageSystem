<%-- 
    Document   : header
    Created on : Sep 19, 2023, 10:33:57 PM
    Author     : chun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/header.css"/>
        <!-- box incon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    </head>
    <body>
        <!-- navbar -->
        <header id="my-header">
            
            <a href="#" class="my-logo">
                <i class='bx bxs-check-shield'>
                    G5insurance_
                </i>
            </a>
            <!-- menu icon -->

            <div class="bx bx-menu" id="my-menu-icon"></div>


            <ul class="my-navbar">
                <li class="dropdown">
                    <a class="" data-bs-toggle="dropdown">Home</a>
<!--                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                         Dropdown menu items 
                    </div>-->
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-bs-toggle="dropdown">Sản Phẩm</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!-- Dropdown menu items -->
                        <a class="dropdown-item" href="#">Bảo hiểm vật chất</a>
                        <a class="dropdown-item" href="#">Bảo hiểm TNDS</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-bs-toggle="dropdown">Giới thiệu</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!-- Dropdown menu items -->
                        <a class="dropdown-item" href="#">Bảo hiểm vật chất</a>
                        <a class="dropdown-item" href="#">Bảo hiểm TNDS</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-bs-toggle="dropdown">About</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!-- Dropdown menu items -->
                    </div>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-bs-toggle="dropdown">Option</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!-- Dropdown menu items -->
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Log out</a>
                    </div>
                </li>
            </ul>

            
            <!-- pro5 -->
            <div class="my-profile">
                <!--show pro5 when log-->
<!--                <img src="Image/chung_avatar.jpg" alt="">
                <span id="my-username">Doan Thanh Chung</span>
                <i class="bx bx-caret-down"></i>-->
                
                <ul class="navbar-nav menutrai">
                    <li class="d-flex align-items-center float-right" id="btnlogin">
                        <a href="Login.jsp" style="padding: 8px;"><i class="fa fa-user" style="color: #066132"></i></a>
                        Đăng nhập
                    </li>
                </ul>
                <ul class="navbar-nav menutrai">
                    <li class="d-flex align-items-center float-right" id="btnlogin">
                        <a href="Register.jsp" style="padding: 8px;"><i class="fa fa-user" style="color: #066132"></i></a>
                        Đăng ký
                    </li>
                </ul>
                
                <!--neu chua dang nhap thi:-->
<!--                 <ul class="my-navbar">
                    <li><a href="" class="">Log in</a></li>
                    <li><a href="" class="">Sign up</a></li>
                </ul>-->
            </div>

        </header>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


        <script>
            // Get the "option" link element
            var optionLink = document.querySelector('.my-navbar li:nth-child(5) a');

            // Get the dropdown menu element
            var dropdownMenu = document.querySelector('.dropdown-menu');

            // Add a click event listener to the "option" link
            optionLink.addEventListener('click', function (e) {
              // Prevent the default link behavior (e.g., navigating to a new page)
              e.preventDefault();

              // Toggle the display of the dropdown menu
              if (dropdownMenu.style.display === 'block') {
                dropdownMenu.style.display = 'none';
              } else {
                dropdownMenu.style.display = 'block';
              }
            });
        </script>

    </body>
</html>
