

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
                                <div class="my-column1 col-md-8">
                                    <h2 style="display: inline-block;">Danh sách hợp đồng</h2>
                                    <!--                                    go to blog page-->

                                    <!-- Blog Post Table -->
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                
                                                <th>Khách hàng</th>
                                                <th>Tên sản phẩm</th>
                                                <th>Ngày bắt đầu</th>
                                                <th>Ngày kết thúc</th>                       
                                                <th>Trạng thái</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- Example row, you can use a loop to generate rows dynamically -->
                                        <c:forEach items="${listC}" var="o">
                                            <tr>
                                                
                                                <td>${o.getUser_fullname()}</td>
                                                <td>${o.getIp_name()}</td>
                                                <td>${o.getContract_startDate()}</td>
                                                <td>${o.getContract_endDate()}</td>
                                                
                                                <td>${o.getContract_status()}</td>
                                                <td>
                                                    <!-- Edit Button -->
                                                    <c:if test = "${o.getIp_name() eq 'Bảo hiểm TNDS'}">
                                                    <a href="Admin_Contract_detailTNDS?contract_id=${o.getContract_id()} " class="my-btn btn btn-primary">Chi tiết</a>
                                                    </c:if>
                                                    <c:if test = "${o.getIp_name() eq 'Bảo hiểm vật chất'}">
                                                    <a href="Admin_Contract_detailVatchat?contract_id=${o.getContract_id()} " class="my-btn btn btn-primary">Chi tiết</a>
                                                    </c:if>
                                                    </td>
                                            </tr>
                                        </c:forEach>    
                                        <!-- Repeat rows for each blog post -->
                                    </tbody>
                                </table>

                            </div>

                            <!-- Column 2: Edit History Table -->
                            <div class="my-column1 col-md-4">
                                <h2 style="display: inline-block;">Hợp đồng mới</h2><!--
                                <!-- togler -->

                                <!-- Edit History Table -->
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Khách hàng</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Ngày bắt đầu</th>
                                            <th>Ngày kết thúc</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Example edit history rows, you can use a loop to generate rows dynamically -->
                                        <c:forEach items="${listNC}" var="o">
                                            <tr>
                                                <td>${o.getUser_fullname()}</td>
                                                <td>${o.getIp_name()}</td>
                                                <td>${o.getContract_startDate()}</td>
                                                <td>${o.getContract_endDate()}</td>
                                            </tr>
                                        </c:forEach>

                                        <!-- Repeat rows for each edit history entry -->
                                    </tbody>
                                </table>
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
