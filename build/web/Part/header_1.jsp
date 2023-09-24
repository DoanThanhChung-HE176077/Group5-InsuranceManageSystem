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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- box incon -->
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
            
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

            
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

    </body>
</html>
