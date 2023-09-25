<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/header.css"/>
        <!-- box incon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
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
                    <a class="" href="/IMS_InsuranceManageSystemBackup/">Trang chủ</a>
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
                        <a class="dropdown-item" href="#">Giới thiệu</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-bs-toggle="dropdown">Thông tin</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!-- Dropdown menu items -->
                        <a class="dropdown-item" href="#">Thông tin bảo hiểm</a>
                        <a class="dropdown-item" href="#">Tra cứu bảo hiểm</a>

                    </div>
                </li>
            </ul>

            
            <!-- pro5 -->
            <div class="my-profile">
<!--                <ul class="navbar-nav menutrai">
                    <li class="d-flex align-items-center float-right" id="btnlogin">
                        <a href="logout" style="padding: 8px;"><i class="fa fa-user" style="color: #066132"></i>
                            Đăng xuất
                        </a>
                        
                    </li>
                </ul>-->
                <c:if test="${sessionScope.user != null}">
                    
                    
                <li class="dropdown">
                        
                    <a class="dropdown-toggle" data-bs-toggle="dropdown" style="text-decoration: none;">
                        <img src="Image/chung_avatar.jpg" alt="">
                        <span id="my-username" style="color: black;">
                            ${sessionScope.user.user_fullname}
                        </span>
                    </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!-- Dropdown menu items -->
                        <a class="dropdown-item" href="#">Profile</a>
                        
                        <!--phân quyền staff-->
                        <c:if test="${sessionScope.user.user_role.equals('staff')}">
                            <a class="dropdown-item" href="#">Dashboard</a>
                        </c:if>
                        
                        <!--phân quyền admin-->
                        <c:if test="${sessionScope.user.user_role.equals('staff')}">
                            <a class="dropdown-item" href="#">Dashboard</a>
                        </c:if>
                            
                        
                        <a class="dropdown-item" href="logout">Đăng xuất</a>

                    </div>
                </li>
                </c:if>
                    
                
                
                    <c:if test="${sessionScope.user == null}">
                        <ul class="navbar-nav menutrai">
                    <li class="d-flex align-items-center float-right" id="btnlogin">
                        <a href="Login.jsp" style="padding: 8px; text-decoration: none;"><i class="fa fa-user" style="color: #066132"></i>
                        Đăng nhập
                        </a>
                        
                    </li>
                </ul>
                <ul class="navbar-nav menutrai">
                    <li class="d-flex align-items-center float-right" id="btnlogin">
                        <a href="Register.jsp" style="padding: 8px; text-decoration: none;"><i class="fa fa-user" style="color: #066132"></i>
                        Đăng ký
                        </a>
                        
                    </li>
                </ul>
                    </c:if>
                
                
                </div>

        </header>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </body>
</html>
