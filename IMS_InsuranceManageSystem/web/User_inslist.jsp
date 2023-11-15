<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/sidebar.css">
        <title>User Panel</title>

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

        <!-- font ăesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- bootstrap5 5icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

        <!-- boxincon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

        <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>

        <link rel="stylesheet" href="CSS/admin_blog_dashboard.css"/>

        <style>
            .stats {
                font-size: 18px;
                position: absolute;
                top: 20px;
            }

            .card-i {
                margin-top: 10px;
                margin-right: 10px;
            }

            .right-info {
                text-shadow: 0px 0px 1px black;
            }


            .card-footer a:hover {
                text-shadow: 0px 0px 1px #2c464f;
            }
        </style>

    </head>

    <body>

        <jsp:include page="Part/header.jsp"></jsp:include>



            <div class="container-fluid">
                <div class="row">
                    <div class="col min-vh-100 p-4">
                        <div class="container mt-5">
                            <div class="my-row row">
                                <div class="my-column1 col-md-12">
                                    <h4 style="text-align: center; font-weight: bold;">Chứng nhận bảo hiểm</h4>
                                    <br>
                                    <div style="text-align: center;">
                                        <a href="UserInsuranceList?status=active" class="btn btn-warning">Đang hiệu lực</a>
                                        <a href="UserInsuranceList?status=expired" class="btn btn-warning">Hết hiệu lực</a>
                                        <a href="UserInsuranceList?status=pending" class="btn btn-warning">Đang chờ phê duyệt</a>
                                    </div>
                                    <div class="row" style="margin-top: 20px;">
                                    <c:forEach items="${contractList}" var="cL">
                                        <div class="col-md-6 mb-3">
                                            <div class="card text-dark h-100">
                                                <div class="card-body py-5 d-flex">
                                                    <div class="col-sm-6">
                                                        <span class="left-info">Người được bảo hiểm:</span>
                                                        <br>
                                                        <br>
                                                        <span class="left-info">Ngày hiệu lực:</span>
                                                        <br>
                                                        <br>
                                                        <span class="left-info">Ngày kết thúc:</span>
                                                        <br>
                                                        <br>
                                                        <span class="left-info">Trạng thái:</span>

                                                    </div>
                                                    <div class="col-sm-6 " style="text-align: right">
                                                        <span class="right-info">${cL.user_fullname}</span>
                                                        <br>
                                                        <br>
                                                        <span class="right-info creationDateHere" id="creationDate">${cL.contract_startDate}</span>
                                                        <br>
                                                        <br>
                                                        <span class="right-info creationDateHere" id="creationDate">${cL.contract_endDate}</span>
                                                        <br>
                                                        <br>
                                                        <c:if test="${cL.contract_status.equals('Active')}">
                                                            <span class="right-info" style="">Còn hiệu lực</span>
                                                        </c:if>
                                                        <c:if test="${cL.contract_status.equals('Expired')}">
                                                            <span class="right-info">Hết hạn</span>
                                                        </c:if>
                                                        <c:if test="${cL.contract_status.equals('pending')}">
                                                            <span class="right-info">Đang chờ phê duyệt</span>
                                                        </c:if>
                                                    </div>
                                                </div>
                                                <div class="card-footer d-flex">
                                                    <c:if test="${cL.ip_id == 1}">
                                                        <i class="fa-solid fa-user-shield fa-xl card-i"></i>
                                                        <span>Bảo hiểm TNDS</span>
                                                    </c:if>

                                                    <c:if test="${cL.ip_id == 2}">
                                                        <i class="fa-solid fa-motorcycle fa-xl card-i"></i>
                                                        <span>Bảo hiểm vật chất</span>
                                                    </c:if>
                                                    <c:if test="${cL.contract_status.equals('Expired')}">
                                                        <a href="renewContract?cid=${cL.contract_id}&ip_id=${cL.ip_id}" style="text-decoration: none !important; color: #2c464f; margin-left: 150px; margin-right: 15px; transition: 0.3s;">
                                                            Gia hạn
                                                        </a>
                                                        <a href="UserContractDetail?cid=${cL.contract_id}&ip_id=${cL.ip_id}" style="text-decoration: none !important; color: #2c464f; transition: 0.3s; margin-left: 10px">
                                                            Xem bản mềm
                                                        </a>
                                                    </c:if>
                                                    <c:if test="${!cL.contract_status.equals('Expired')}">    
                                                    <a href="UserContractDetail?cid=${cL.contract_id}&ip_id=${cL.ip_id}" style="text-decoration: none !important; color: #2c464f; transition: 0.3s; margin-left: 212px">
                                                        Xem bản mềm
                                                    </a>
                                                    </c:if> 
                                                </div> 
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!--Jquery-->


            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <!-- quan trong cua dropdowntable -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
            <!--<script src="JS/script.js"></script>-->


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
                        var newDateFormat = year + '/' + month + '/' + day;
                        dateElements[i].textContent = newDateFormat;
                    }
                }
                changeDateFormat();
            </script>

    </body>

</html>