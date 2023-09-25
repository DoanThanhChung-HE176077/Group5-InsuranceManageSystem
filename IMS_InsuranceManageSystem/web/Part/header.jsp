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
        
        <!--bootstrap 5-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
    </head>
    <body>

        <!-- header -->
        <header id="my-header">

            <a href="#" class="my-logo">
                <i class='bx bxs-check-shield'>
                    G5insurance_
                </i>
            </a>
            menu icon 

            <div class="bx bx-menu" id="my-menu-icon"></div>
            nav list 
            <ul class="my-navbar">
                <li><a href="" class="home-active">Home</a></li>
                <li><a href="" class="">category</a></li>
                <li><a href="" class="">product</a></li>
                <li><a href="" class="">about</a></li>
                <li><a href="" class="">option</a></li>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    Dropdown menu items 
                    <div>
                        <a class="dropdown-item" href="#">
                            <i class='bx bxs-user'></i>
                            <span>Profile</span>
                        </a>
                    </div>
                    <div>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-list" aria-hidden="true"></i>
                            <span>My Insurance</span>
                        </a>
                    </div>
                    <div>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <span>item1</span>
                        </a>
                    </div>
                    <div>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <span>item2</span>
                        </a>
                    </div>
                    ---- 
                    <div class="dropdown-divider"></div>
                    <div>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-sign-out" aria-hidden="true"></i>
                            <span>Log out</span>
                        </a>
                    </div>
                </div>
            </ul>
<!--            pro5 -->
            <div class="my-profile">
<!--                show pro5 when log-->
                <img src="Image/chung_avatar.jpg" alt="">
                <span id="my-username">Doan Thanh Chung</span>
                <i class="bx bx-caret-down"></i>

<!--                neu chua dang nhap thi:
                <ul class="my-navbar">
                    <li><a href="" class="">Log in</a></li>
                    <li><a href="" class="">Sign up</a></li>
                </ul>-->
            </div>

        </header>
    </body>
</html>
