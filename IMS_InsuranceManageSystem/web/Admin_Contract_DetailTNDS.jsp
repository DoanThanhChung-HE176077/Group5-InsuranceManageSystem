

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- bootstrap5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!--        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>

        <!-- font awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-
              iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/Zpi
              Bw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- bootstrap5 5icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

        <link rel="stylesheet" href="CSS/admin_blog_dashboard.css"/>

    </head>
    <body>

        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>


            <!--sidebar-->
        <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>





            <!-- ---------------------------------------------------------------------------------------------------------------------------- -->



            <div class="container-fluid">
                <div class="row">
                    <div class="col min-vh-100 p-4">
                        <div class="container mt-5">

                            <div class="my-row row">

                                <!-- Column 1: Blog Post Table -->
                                <div class="my-column1 col-md-10">
                                    <h2 style="display: inline-block;">Chi tiết sản phẩm bảo hiểm</h2>
                                    <!--                                    go to blog page-->
                                    <button class="btn btn-success mb-3 " style="margin-left: 200px" >
                                        <a href="admin_IP_list" style="text-decoration: none; color: #fff;">Quay lại</a>
                                    </button>
                                    <!-- Blog Post Table -->
                                    <ul class="list-group">
                            <li class="list-group-item">
                                <span class="detail-label">Khách hàng:</span>
                                <span>${detail.user_fullName}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Mã sản phẩm:</span>
                                <span>${detail.user_email}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Tên sản phẩm:</span>
                                <span>${detail.user_dob}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Loại xe đăng kí:</span>
                                <span>${detail.user_address}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Số máy đăng kí:</span>
                                <span>${detail.user_phoneNum}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Biển xe đăng kí:</span>
                                <span>${detail.user_iden}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Số khung đăng kí:</span>
                                <span>${detail.user_iden}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Biển xe đăng kí:</span>
                                <span>${detail.user_iden}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Biển xe đăng kí:</span>
                                <span>${detail.user_iden}</span>
                            </li>
                            
                        </ul>

                            </div>

                            
                        </div>
                    </div>
                </div>
            </div>
        </div>






        <!-- quan trong cua dropdowntable -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>
</html>
