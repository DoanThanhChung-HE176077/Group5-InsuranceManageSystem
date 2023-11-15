<%-- 
    Document   : Staff_ContractRequest_list
    Created on : Nov 1, 2023, 9:35:23 PM
    Author     : pc minh
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contract Request List</title>
        
        <!-- bootstrap5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
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

                                <!-- Column 1: Contract Request Table -->
                                <div class="my-column1 col-md-8">
                                    <h2 style="display: inline-block;">Danh sách hợp đồng chưa được duyệt</h2>
                                    <!-- Contract Request Table -->
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Khách hàng</th>
                                                <th>Loại hợp đồng</th>
                                                <th>Ngày bắt đầu</th>
                                                <th>Ngày kết thúc</th>
                                                <th>Thanh toán</th>
                                                <th>Trạng thái</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- Example row, you can use a loop to generate rows dynamically -->
                                        <c:forEach items="${requestScope.pendingList}" var="pList">
                                            <tr>

                                                <td>${pList.getUser_fullname()}</td>
                                                <td>${pList.getIp_name()}</td>
                                                <td class="creationDateHere" id="creationDate">${pList.getContract_startDate()}</td>
                                                <td class="creationDateHere" id="creationDate">${pList.getContract_endDate()}</td>
                                                 <fmt:formatNumber value="${pList.getTotal_price()}" pattern="#,##0" var="formattedTongChiPhi" />
                                                <td>${formattedTongChiPhi}VND</td>
                                                <td>
                                                    <c:if test="${pList.getContract_status() eq 'Pending'}">
                                                    Đang chờ duyệt
                                                    </c:if>
                                                    <c:if test="${pList.getContract_status() eq 'pending'}">
                                                        Đang chờ duyệt
                                                    </c:if>
                                                </td>
                                                <td>
                                                    <!-- Detail Button -->
                                                    <a href="contract_request_detail?contract_id=${pList.getContract_id()} " class="my-btn btn btn-primary">Chi tiết</a>
                                                </td>
                                            </tr>
                                        </c:forEach>    
                                        <!-- Repeat rows for each blog post -->
                                    </tbody>
                                </table>

                            </div>

                            <!-- Column 2: Edit History Table -->
                            <div class="my-column1 col-md-4">
                                <h2 style="display: inline-block;">Hợp đồng đã duyệt</h2><!--
                                <!-- togler -->

                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Khách hàng</th>
                                            <th>Loại hợp đồng</th>
                                            <th>Ngày bắt đầu</th>
                                            <th>Ngày kết thúc</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Example edit history rows, you can use a loop to generate rows dynamically -->
                                        <c:forEach items="${activeList}" var="aList">
                                            <tr>
                                                <td>${aList.getUser_fullname()}</td>
                                                <td>${aList.getIp_name()}</td>
                                                <td class="creationDateHere" id="creationDate">${aList.getContract_startDate()}</td>
                                                <td class="creationDateHere" id="creationDate">${aList.getContract_endDate()}</td>
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
            function setCurrentDate() {
                var currentDate = new Date();
                var formattedDate = currentDate.toISOString().split('T')[0];
                document.getElementById("creationDate").value = formattedDate;
            }
            setCurrentDate();

            function changeDateFormat() {
                var dateElements = document.getElementsByClassName("creationDateHere");

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
