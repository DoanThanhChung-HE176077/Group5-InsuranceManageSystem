<%-- Document : Staff_claim_list Created on : Nov 9, 2023, 12:18:55 AM Author : chun --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý bồi thường</title>


        <!--                <link rel="stylesheet"

          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>-->


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
                            <div class="d-flex justify-content-center " style="margin-top:32px">
                                <h3 style="margin-top: 10px;">Danh sách yêu cầu bồi thường</h3>
                            </div>
                            <div class="d-flex flex-column align-items-center text-center p-3">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Chủ sở hữu</th>
                                            <th>Hợp đồng</th>
                                            <th>Ngày tạo</th>
                                            <th>Trạng thái</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${claim}" var="o1">
                                        <c:if test="${o1.getClaim_status().equals('pending')}">
                                            <tr>
                                                <td>Yêu cầu số ${o1.getClaim_id()}</td>
                                                <c:forEach items="${user}" var="o2">
                                                    <c:if test="${o1.getUser_id() == o2.getUser_id()}">
                                                        <td>${o2.getUser_fullName()}</td>
                                                    </c:if>
                                                </c:forEach>
                                                <c:forEach items="${contract}" var="o3">
                                                    <c:if
                                                        test="${o3.getContract_id() == o1.getContract_id()}">
                                                        <td>Hợp đồng
                                                            <c:if test="${o3.getIp_id() == 1}">
                                                                bảo hiểm TNDS
                                                            </c:if>
                                                            <c:if test="${o3.getIp_id() == 2}">
                                                                bảo hiểm vật chất
                                                            </c:if>
                                                            số
                                                            ${o3.getContract_id()}
                                                        </td>
                                                    </c:if>
                                                </c:forEach>
                                                <td class="mycreationdate">
                                                    ${o1.getCreationDate()}
                                                </td>
                                                <td>
                                                    Chờ phê duyệt
                                                </td>
                                                <td>
                                                    <a type="button" class="btn btn-success"
                                                       href="/IMS_InsuranceManageSystem/StaffClaimDetail?claim_id=${o1.getClaim_id()}">
                                                        Chi tiết
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:if>

                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-4 border-right">
                        <div class="" style="margin-top:32px">
                            <div class="d-flex justify-content-center">
                                <h3 style="margin-top: 8px;margin-bottom: 25px">Yêu cầu đã xử lý</h3>
                            </div>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Người tạo yêu cầu</th>
                                        <th>Ngày kết thúc</th>
                                        <th>Trạng thái</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach items="${claim}" var="o">
                                        <tr>
                                            <td>${o.claim_id}</td>
                                            <c:forEach items="${user}" var="o1">
                                                <c:if test="${o.user_id == o1.user_id}">
                                                    <td>${o1.user_fullName}</td>
                                                </c:if>
                                            </c:forEach>    
                                            <td class="mycreationdate" id="creationDate" >${o.creationDate}</td>
                                            <c:if test="${o.claim_status.equals('Accept')}">
                                                <td >Đã duyệt</td>
                                            </c:if>
                                            <c:if test="${o.claim_status.equals('Reject')}">
                                                <td >Đã từ chối</td>
                                            </c:if>
                                            <c:if test="${o.claim_status.equals('pending')}">
                                                <td >Đang chờ duyệt</td>
                                            </c:if>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script>
            function changeDateFormat() {
                var dateElements = document.getElementsByClassName("mycreationdate");

                for (var i = 0; i < dateElements.length; i++) {
                    var oldDateText = dateElements[i].textContent;
                    var dateParts = oldDateText.split('-');
                    var day = dateParts[0];
                    var month = dateParts[1];
                    var year = dateParts[2];
                    var newDateFormat = year + '-' + month + '-' + day;
                    dateElements[i].textContent = newDateFormat;
                }
            }
            changeDateFormat();


        </script>
    </body>

</html>