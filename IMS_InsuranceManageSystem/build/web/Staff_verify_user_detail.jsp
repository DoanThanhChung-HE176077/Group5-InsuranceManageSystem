<%-- 
    Document   : Staff_verify_user_detail
    Created on : Nov 8, 2023, 3:49:34 AM
    Author     : chun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết</title>

        <link rel="stylesheet" href="CSS/user_profile.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

        <!--//font awéome-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
              integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!--sweet alert-->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <style>
            .myimg {
                margin-right: 10px;
                max-width: 150px !important;
                object-fit: cover;
                object-position: center;
                box-shadow: 0 0 10px #2c464f;
            }
        </style>
    </head>
    <body>
        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>
        <!--sidebar-->
        <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>
            <!-- ---------------------------------------------------------------------------------------------------------------------------- -->
            <form action="Staff_verifyUser_done" method="POST" >
                <div class="container-fluid">
                    <div class="row">
                        <div class="col min-vh-100 p-4">
                            <div class="container mt-5">
                                <div class="my-row row">
                                    <!-- Column 1: Chi tiết người dùng -->
                                    <div class="my-column1 col-md-8">
                                        <div class="d-flex justify-content-center">
                                            <h3 style="margin-top: 10px;">Thông tin tài khoản</h3>
                                        </div>
                                        <div class="d-flex  align-items-center text-center ">
                                            <table class="table table-striped">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">Nội dung</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">ID</th>
                                                        <td>${detail.getUser_id()}</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Họ và tên</th>
                                                    <td>${detail.getUser_fullName()}</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Email</th>
                                                    <td>${detail.getUser_email()}</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Ngày sinh</th>
                                                    <td class="date-column">${detail.getUser_dob()}</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Số điện thoại</th>
                                                    <td>${detail.getUser_phoneNum()}</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Địa chỉ</th>
                                                    <td>${detail.getUser_address()}</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Vai trò</th>
                                                    <td>${detail.getUser_role()}</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Trạng thái</th>
                                                    <td>Chờ phê duyệt</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- Column 2: Hợp đồng người dùng -->
                                <div class="my-column1 col-md-4">
                                    <div class="d-flex justify-content-center">
                                        <h3>Thông tin CMT/CCCD</h3>
                                    </div>
                                    <!-- Edit History Table -->
                                    <div class="container " style="margin-top: 25px">
                                        <div>
                                            <label style="font-size:  13px" class="labels">Số CMT/CCCD:<span class="errmsg" style="color: red"> *</span></label>
                                            <input type="text" value="${detail.getUser_iden()} " class="form-control" readonly>
                                        </div>
                                        <hr>
                                        <div  class="d-flex justify-content-center">
                                            <img id="output" src="${detail.getUser_iden_img()}" alt="Image Preview" class=" img-thumbnail myimg" data-toggle="modal" data-target="#exampleModal">
                                        </div>
                                        <!--//modal-->
                                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-xl">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body d-flex justify-content-center">
                                                        <!-- Display the image in the modal -->
                                                        <img id="modalImage" src="${detail.getUser_iden_img()}" alt="Image Preview" class="img-fluid">
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer d-flex justify-content-center ">
                                    <button id="btn-edit1" type="submit" class="btn btn-success">Xác minh tài khoản</button>
                                    <a href="/IMS_InsuranceManageSystem/Staf_verifyUser" id="btn-edit1" type="button" class="btn btn-secondary">Quay lại</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
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

  

                document.querySelector('form').addEventListener("submit", function (event) {
                    event.preventDefault(); // Prevent the form from actually submitting
                    swal("Bạn chắc chắn muốn phê duyệt tài khoản của người dùng: ${detail.getUser_fullName()} ?", {
                        buttons: {
                            cancel: "Hủy",
                            catch : {
                                text: "Xác nhận",
                                value: "catch"
                            }
                        }
                        iconColor:red;
                    }).then((value) => {
                        switch (value) {
                        case "catch":
                            swal("Xác minh thành công!", "Đã xác minh người dùng ${detail.getUser_fullName()}", "success").then(e => {
                           document.querySelector('form').submit(); });
                            break;
                        }
                    });
                });
        </script>
    </body>
</html>
