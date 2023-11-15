<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
            <link rel="stylesheet" href="CSS/header.css" />



            <!-- box incon -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

            <!-- Font Awesome -->
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
                integrity="sha512-
              iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/Zpi
              Bw==" crossorigin="anonymous" referrerpolicy="no-referrer" />



        </head>

        <body>
            <!-- navbar -->
            <header id="my-header">

                <div class="my-logo">
                    <i class="fa-solid fa-shield-halved fa-2xl" style="color: #fdd12d;"></i>
                    <span>G5insurance</span>

                </div>
                <!-- menu icon -->

                <div class="bx bx-menu" id="my-menu-icon"></div>


                <ul class="my-navbar">
                    <li class="dropdown">
                        <a class="" href="/IMS_InsuranceManageSystem/">Trang chủ</a>
                        <!--                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                         Dropdown menu items 
                    </div>-->
                    </li>
                    <li class="dropdown">
                        <!--                    <a class="dropdown-toggle" data-bs-toggle="dropdown" >Sản Phẩm</a>-->
                        <a href="listInsuranceProduct">Sản Phẩm</a>
                        <!--                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                         Dropdown menu items 
                        <a class="dropdown-item" href="ListProductInsurance.jsp">Bảo hiểm vật chất</a>
                        <a class="dropdown-item" href="ListProductInsurance.jsp">Bảo hiểm TNDS</a>
                    </div>-->
                    </li>
                    <li class="dropdown">
                        <a href="Introduce.jsp">Giới thiệu</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-bs-toggle="dropdown">Thông tin</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <!-- Dropdown menu items -->


                            <a class="dropdown-item" href="blog_home_show">Tin tức bảo hiểm</a>
                        </div>
                    </li>
                </ul>


                <!-- pro5 -->
                <div class="my-profile">
                    <c:if test="${sessionScope.user != null}">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-bs-toggle="dropdown" style="text-decoration: none;">
                                <img src=" ${sessionScope.user.user_image}" alt="">
                                <span id="my-username" style="color: black; ">
                                    Xin chào <b>${sessionScope.user.user_fullName}</b> 
                                </span>
                            </a>

                            <div class="dropdown-menu" aria-labelledby="navbarDropdown"
                                style="background-color: #fdd12d;">
                                <!-- Dropdown menu items -->
                                <a class="dropdown-item" href="UserProfile.jsp">Profile</a>


                                <!--phân quyền customer-->
                                <c:if test="${sessionScope.user.user_role.equals('Khách hàng')}">
                                    <a class="dropdown-item" href="UserInsuranceList?status=active">Hợp đồng của tôi</a>
                                </c:if>

                                <c:if test="${sessionScope.user.user_role.equals('Khách hàng')}">
                                    <a class="dropdown-item" href="UserClaimListShow">Tạo yêu cầu bồi thường</a>
                                </c:if>

                                <!--phân quyền staff-->
                                <c:if test="${sessionScope.user.user_role.equals('Nhân viên')}">
                                    <a class="dropdown-item" href="admin_dashboard">Trang quản lý</a>
                                </c:if>

                                <!--phân quyền admin-->
                                <c:if test="${sessionScope.user.user_role.equals('Admin')}">
                                    <a class="dropdown-item" href="admin_dashboard">Trang quản lý</a>
                                </c:if>


                                <a class="dropdown-item" href="logout">Đăng xuất</a>

                            </div>
                        </li>
                    </c:if>



                    <c:if test="${sessionScope.user == null}">
                        <ul class="navbar-nav menutrai">
                            <li class="d-flex align-items-center float-right" id="btnlogin">
                                <a href="Login.jsp"
                                    style="padding: 8px; text-decoration: none; text-shadow: 0px 0px 1px #2c464f; color: #2c464f;">
                                    <i class="fa fa-user" style="color: #2c464f"></i>
                                    Đăng nhập
                                </a>
                            </li>
                        </ul>
                        <ul class="navbar-nav menutrai">
                            <li class="d-flex align-items-center float-right" id="btnlogin">
                                <a href="Register.jsp"
                                    style="padding: 8px; text-decoration: none; text-shadow: 0px 0px 1px #2c464f; color: #2c464f;">
                                    <i class="fa fa-user" style="color: #2c464f"></i>
                                    Đăng ký
                                </a>
                            </li>
                        </ul>
                    </c:if>
                </div>
            </header>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous">
                </script>
        </body>

        </html>