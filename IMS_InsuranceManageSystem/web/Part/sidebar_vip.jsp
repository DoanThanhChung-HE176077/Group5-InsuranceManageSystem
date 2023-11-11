<%-- Document : sidebar_vip Created on : Oct 4, 2023, 5:12:56 AM Author : thant --%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>side bar</title>
                <!--
         bootstrap5 
-->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                    crossorigin="anonymous">


                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
                    crossorigin="anonymous"></script>


                <!-- font awesome -->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
                    integrity="sha512-
              iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/Zpi
              Bw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

                <!-- bootstrap5 5icon -->
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

                <link rel="stylesheet" href="CSS/admin_blog_dashboard.css" />

                <style>
                    .modal-backdrop.show {
                        opacity: 0.1 !important;
                    }

                    .sidebar-container {
                        /*display: flex;*/
                        position: fixed;
                        top: 100px;
                        z-index: 10;
                    }

                    .sidebar-container a {
                        padding-top: 12px;
                        padding-right: 52px;
                    }

                    .sidebar-container i {
                        margin-top: 5px;

                    }

                    .btn-sidebar {
                        /* Border color (blue) */
                        background-color: transparent;
                        /* Transparent background */
                        color: #2c464f;
                        /* Text color (blue) */
                        width: 50px;
                        /* Set a fixed width */
                        height: 50px;
                        /* Set a fixed height */
                        transition: background-color 0.3s, color 0.3s, border-color 0.3s;
                        /* Smooth transitions */

                        border: none;
                        border-left: solid 5px #2c464f;
                        border-radius: 0px;

                        padding-left: 0px;
                    }

                    .btn-sidebar:hover {
                        background-color: none;
                        /* Background color on hover (blue) */
                        color: #fff;
                        /* Text color on hover (white) */
                        border-color: white;
                        /* Border color on hover (blue) */
                    }

                    .offcanvas-title {
                        font-weight: bold;
                        font-style: italic;
                        text-shadow: 0px 0px 1px #2c464f;
                    }

                    .list-group-item i {
                        margin-right: 10px;
                    }

                    .list-group-item span {
                        font-size: 18px;
                    }
                </style>
            </head>

            <body>
                <div class="sidebar-container">
                    <a class="btn-sidebar btn" data-bs-toggle="offcanvas" data-bs-target="#offcanvas">
                        <i class="fa-solid fa-caret-right fa-2xl"></i>
                    </a>
                </div>



                <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvas" style="width:  250px;">
                    <div class="offcanvas-header">
                        <i class="fa-solid fa-gear fa-rotate-270 fa-2xl"></i>
                        <h4 class="offcanvas-title d-none d-sm-block" id="offcanvas">Management</h4>
                        <a type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></a>
                    </div>

                    <div class="offcanvas-body px-0">
                        <ul class="list-group">


                            <li class="list-group-item my-btn1">
                                <a href="/IMS_InsuranceManageSystem/" class="my-sidebar-item">
                                    <i class="fas fa-home"></i>
                                    <span>Trang Chủ</span>
                                </a>
                            </li>
                            <li class="list-group-item my-btn1">
                                <a href="admin_Users_list" class="my-sidebar-item">
                                    <i class="fas fa-user"></i>
                                    <span style="margin-left: 3px;">Quản Lý Người Dùng</span>
                                </a>
                            </li>
                            <li class="list-group-item my-btn1">
                                <a href="blog_list" class="my-sidebar-item">
                                    <i class="fas fa-blog"></i>
                                    <span style="margin-right: 1px">Quản Lý Bài Viết</span>
                                </a>
                            </li>
                            <!-- Phân quyền admin -->
                            <c:if test="${sessionScope.user.getUser_role().equals('Admin')}">
                                <li class="list-group-item my-btn1">
                                    <a href="Admin_Contract_list" class="my-sidebar-item">
                                        <i class="fas fa-users"></i>
                                        <span style="margin-left: -4px">Quản lí Hợp Đồng</span>
                                    </a>
                                </li>
                            </c:if>
                            <!-- Phân quyền nhân viên -->
                            <c:if test="${sessionScope.user.getUser_role().equals('Nhân viên')}">
                                <li class="list-group-item my-btn1">
                                    <a href="contract_request_list" class="my-sidebar-item">
                                        <i class="fa-solid fa-file"></i>
                                        <span style="margin-left: -4px">Quản lý Hợp Đồng</span>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.user.getUser_role().equals('Nhân viên')}">
                                <li class="list-group-item my-btn1">
                                    <a href="StaffClaimListShow" class="my-sidebar-item">
                                        <i class="fa-brands fa-dochub"></i>
                                        <span style="margin-left: -4px">Quản Lý Bồi Thường</span>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.user.getUser_role().equals('Nhân viên')}">
                                <li class="list-group-item my-btn1">
                                    <a href="Staf_verifyUser" class="my-sidebar-item">
                                        <i class="fas fa-users"></i>
                                        <span style="margin-left: -4px">Xác Minh Người Dùng</span>
                                    </a>
                                </li>
                            </c:if>
                            <li class="list-group-item my-btn1">
                                <a href="admin_IP_list" class="my-sidebar-item">
                                    <i class="fas fa-shield-alt"></i>
                                    <span>Quản Lý Sản Phẩm Bảo Hiểm</span>
                                </a>
                            </li>
                        </ul>
                    </div>

                </div>
            </body>

            <!--    Jquery
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>
            <<<<<<< HEAD <!-- <script>
                $(document).on('click', function (e) {
                if ($(e.target).closest(".offcanvas").length === 0) {
                $("#offcanvas").offcanvas('hide');
                }
                });
                </script>-->
                =======
                >>>>>>> 1d04c95c6d7bba262122c2e3a7aa46410fc1e73a


            </html>