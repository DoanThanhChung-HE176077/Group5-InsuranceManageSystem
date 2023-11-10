<%-- Document : Staff_verify_user Created on : Nov 8, 2023, 12:58:47 AM Author : chun --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        
        <!-- bootstrap5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>

        <!--//font awéome-->
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
              integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!--sweet alert-->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <style>
            .myimg {
                margin-right: 10px;
                max-width: 63px;
                object-fit: cover;
                object-position: center;
                box-shadow: 0 0 10px #2c464f;
            }

            #main-container {
                box-shadow: 0 33px 61px -29px rgb(0 0 0/80%);
                object-fit: cover;
                border-radius: 25px;
            }
        </style>
    </head>

    <body style="background-color: hsl(47,98%,58%);">
        <jsp:include page="Part/header.jsp"></jsp:include>
        <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>
            <div class="form-info" id="turung" style="margin-top: 150px" method="POST" action="UserVerify"
                 enctype="multipart/form-data">
                <div class="container  bg-white mt-5 mb-5" id="main-container">
                    <div class="row">
                        <div class="col-md-8 border-right">
                            <div class="d-flex justify-content-center">
                                <h3 style="margin-top: 10px;">Xác minh người dùng</h3>
                            </div>
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Họ và tên</th>
                                            <th>Số CMT/CCCD</th>
                                            <th>Ảnh CMT/CCCD</th>
                                            <th>Trạng thái</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${uget}" var="o1">
                                        <tr>
                                            <td>${o1.getUser_id()}</td>
                                            <td>${o1.getUser_fullName()}</td>
                                            <td>${o1.getUser_iden()}</td>
                                            <td>
                                                <img id="idenImageModal" class="myimg " src="${o1.getUser_iden_img()}" alt="null">
                                            </td>
                                            <td>
                                                Chờ phê duyệt
                                            </td>
                                            <td>
                                                <a type="button" class="btn btn-success" href="/IMS_InsuranceManageSystem/Staff_verifyUser_done?id=${o1.getUser_id()}">
                                                    Chi tiết
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-4 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-center">
                                <h3 style="margin-top: 10px;">Tài khoản đã xác minh</h3>
                            </div>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Họ và tên</th>
                                        <th>Số điện thoại</th>
                                        <th>Trạng thái</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${uget2}" var="o">
                                        <c:if test="${o.getUser_role() == 'Khách hàng' && o.getStatus() == 'Đã xác minh'}">
                                            <tr>
                                                <td>${o.getUser_id()}</td>
                                                <td>${o.getUser_fullName()}</td>
                                                <td>${o.getUser_phoneNum()}</td>
                                                <td>${o.getStatus()}</td>
                                            </tr>
                                        </c:if>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            
            <!-- quan trong cua dropdowntable -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous">    
        </script>

    </body>

</html>