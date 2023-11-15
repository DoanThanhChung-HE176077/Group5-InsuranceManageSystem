<%-- 
    Document   : Admin_blog_dashboard
    Created on : Oct 2, 2023, 7:46:10 PM
    Author     : chun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết khách hàng</title>

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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
                    .myimg {
                        margin-right: 10px;
                        max-width: 250px;
                        object-fit: cover;
                        object-position: center;
                        box-shadow: 0 0 10px #2c464f;
                    }
                    #main-container{
                        box-shadow: 0 33px 61px -29px rgb(0 0 0/80%);
                        object-fit: cover;
                        border-radius: 25px;
                    }
                    
                </style>
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

                    <!-- Column 1: Chi tiết người dùng -->
                     <div class="my-column1 col-md-3" style="margin-top: 100px">
                                
                                            <div class="d-flex flex-column align-items-center text-center p-3 py-5" >
                                                <img src="${detail.user_iden_img}" id="idenImage" class="img-thumbnail myimg" width="350px" src="" data-toggle="modal" data-target="#myModal" >
                                </div>
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="myModalLabel">Full Image</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <img src="${detail.user_iden_img}" class="img-fluid " >
                                            </div>
                                        </div>
                                    </div>
                                </div>                    
                            </div>
                    <div class="my-column1 col-md-5">
                        <h2 style="display: inline-block;">Chi tiết người dùng</h2>
                        <button class="btn btn-success mb-3" style="margin-left: 100px;">
                            <a href="admin_Users_list" style="text-decoration: none; color: #fff;">Quay lại</a>
                        </button>
                        <!-- Danh sách chi tiết người dùng -->
                        <ul class="list-group">
                            <li class="list-group-item">
                                <span class="detail-label">Họ Tên:</span>
                                <span style="float: right">${detail.user_fullName}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Email:</span>
                                <span style="float: right">${detail.user_email}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Ngày sinh:</span>
                                <span class="date-column" style="float: right">${detail.user_dob}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Địa chỉ:</span>
                                <span style="float: right">${detail.user_address}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Số điện thoại:</span>
                                <span style="float: right">${detail.user_phoneNum}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">CCCD:</span>
                                <span style="float: right">${detail.user_iden}</span>
                            </li>
<!--                            <li class="list-group-item">
                                <span class="detail-label">Ảnh CCCD:</span>
                                <img src="${detail.user_iden_img}" width="60px" height="60px">
                            </li>-->
                            
                            <li class="list-group-item">
                                <span class="detail-label">Trạng thái:</span>
                                <span style="float: right">${detail.status}</span>
                            </li>
                            
                        </ul>
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        
                            
                                            
                    </div>
                            
                           
                    <!-- Column 2: Hợp đồng người dùng -->
                    <div class="my-column1 col-md-4">
                        <h2 style="display: inline-block;">Hợp đồng người dùng</h2>
                        <!-- Edit History Table -->
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Họ Tên</th>
                                    <th>Tên hợp đồng</th>
                                    <th>Ngày bắt đầu</th>
                                    <th>Ngày kết thúc</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Example edit history rows, you can use a loop to generate rows dynamically -->
                                <c:forEach items="${listC}" var="o">
                                    <tr>
                                        <td>${o.user_fullname}</td>
                                        <td>${o.ip_name}</td>
                                        <td class="date-column">${o.contract_startDate}</td>
                                        <td class="date-column">${o.contract_endDate}</td>
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
        <script>
    // Chuyển đổi định dạng ngày trong tất cả các phần tử trong cột "date-column"
    document.querySelectorAll('.date-column').forEach(function (element) {
        var originalDate = element.textContent; // Lấy ngày ban đầu
        var formattedDate = formatDate(originalDate); // Gọi hàm formatDate để chuyển đổi định dạng
        element.textContent = formattedDate; // Hiển thị ngày đã được định dạng
    });

    // Hàm để chuyển đổi định dạng ngày (VD: từ "YYYY-MM-DD" thành "DD/MM/YYYY")
    function formatDate(inputDate) {
        var dateParts = inputDate.split('-');
        if (dateParts.length === 3) {
            var year = dateParts[0];
            var month = dateParts[1];
            var day = dateParts[2];
            return day + '/' + month + '/' + year;
        }
        return inputDate; // Trả về nguyên dạng nếu không thể chuyển đổi
    }
</script>
    </body>
</html>
