<%-- 
    Document   : Staff_ContractRequest_detail
    Created on : Nov 2, 2023, 12:40:04 AM
    Author     : pc minh
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
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

        <link rel="stylesheet" href="CSS/contractDetail.css">
    </head>
    <body>
        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>


            <!--sidebar-->
        <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>
        
        <div class="container-fluid">
                <div class="row">
                    <div class="col min-vh-100 p-4">
                        <div class="container mt-5">

                            <div class="my-row row">

                                <!-- Column 1: Contract's general information -->
                                <div class="my-column1 col-md-4">
                                    <h2 style="display: inline-block;">Thông tin chung của hợp đồng</h2>
                                    <!-- Contract General Information -->
                                    
                                    <h6 style="font-weight: bold">ID:&nbsp;<span style="font-weight: normal">${contract.getContract_id()}</span></h6>
                                    <h6 style="font-weight: bold">Loại hợp đồng:&nbsp;<span style="font-weight: normal">${contract.getIp_name()}</span></h6>
                                    <h6 style="font-weight: bold">Người tạo hợp đồng:&nbsp;<span style="font-weight: normal">${contract.getUser_fullname()}</span></h6>
                                    <h6 style="font-weight: bold">Ngày tạo hợp đồng:&nbsp;<span style="font-weight: normal">${contract.getContract_startDate()}</span></h6>
                                    <h6 style="font-weight: bold">Ngày hết hạn hợp đồng:&nbsp;<span style="font-weight: normal">${contract.getContract_endDate()}</span></h6>
                                    <h6 style="font-weight: bold">Tổng tiền thanh toán:&nbsp;<span style="font-weight: normal">${contract.getTotal_price()}</span></h6>
                                    <c:if test="${sessionScope.user.getUser_role().equals('Admin')}">
                                    <h6 style="font-weight: bold">Tình trạng hợp đồng:&nbsp;<span style="font-weight: normal">${contract.getContract_status()}</span></h6>
                                    </c:if>
                                    <c:if test="${sessionScope.user.getUser_role().equals('Nhân viên')}">
                                    <form action="contract_request_detail?contract_id=${contract.getContract_id()}" method="post">
                                        <div class="mb-3">
                                            <label class="form-label"><h6 style="font-weight: bold">Quyết định tình trạng hợp đồng:</h6></label>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" id="active" name="status" value="Active" required>
                                                <label class="form-check-label" for="active">
                                                    <h6>Accept</h6>
                                                </label>
                                                
                                                
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" id="reject" name="status" value="Reject" required>
                                                <label class="form-check-label" for="reject">
                                                    <h6>Reject</h6>
                                                </label>
                                            </div>
                                        </div>
                                        <!-- Submit Button -->
                                        <input class="btn btn-primary" onclick="createCourse()" type="submit" id="submit" value="Submit" >
                                        <a href="contract_request_list" class="my-btn btn btn-primary" style="background-color: red">Go back</a>
                                    </form>
                                    </c:if>
                                    

                            </div>

                            <!-- Column 2: Edit History Table -->
                            <div class="my-column1 col-md-8">
                                <h2 style="display: inline-block;">Thông tin chi tiết của hợp đồng</h2><!--
                                <!-- togler -->
<form  action="contract_request_detail" method="" id="frmCreateOrder">
                 
                 
            <div class="container form_TNDS">
                <div class="row">
                    <div class="info_motobike">
                        <div id="form_TNDS">

                            <h5><i class="fa-solid fa-motorcycle"></i> Thông tin về xe</h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div>
                                        <span> Loại xe</span><br/>
                                        <input class="form-control" type="text" value="${contractTNDS.getLoaiXe()}" readonly="">
                                        
                                    </div>
                                    <div>
                                        <span>Số máy</span>
                                        <input class="form-control" type="text" value="${contractTNDS.getSoMay()}" readonly="">
                                    </div>                        
                                </div>
                                <div class="col-md-6">
                                    <div>
                                        <span>Biển xe</span>
                                        <input class="form-control" type="text" value="${contractTNDS.getBienXe()}" readonly="">
                                    </div>                            
                                    <div>
                                        <span>Số khung</span>
                                        <input class="form-control" type="text" value="${contractTNDS.getSoKhung()}" readonly="">
                                    </div>
                                </div>
                            </div>
                            <div id="scope insurance">
                                <h5><i class="fas fa-plus-square"></i> Phạm vi bảo hiểm</h5>
                                <div class="row">
                                    <div class="col-md-6">
                                        <span>Từ ngày</span>
                                        <input class="form-control" type="text" value="${contractTNDS.getStartDate()}" readonly="">
                                    </div>
                                    <div class="col-md-6">
                                        <span>Đến ngày</span>
                                        <input class="form-control" type="text" value="${contractTNDS.getEndDate()}" readonly="">

                                    </div>
                                </div>
                                <div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <span> Mức trách nhiệm</span>
                                                <input class="form-control" type="text" value="${contractTNDS.getMucTrachNhiem()}" readonly="">
                                            </div>
                                            
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <span>Số người</span>
                                                <input class="form-control" type="text" value="${contractTNDS.getSoNguoi()}" readonly="">                                            </div>                            
                                            
                                        </div>
                                        <div>
                                            <span>Tổng phí</span>
                                            <input class="form-control" type="text" value="${contractTNDS.getTongChiPhi()}" readonly="">
                                        </div>
                                    </div>
                                </div>


                                <div id="vehicle_owner_information">
                                    <h5 style="margin-top: 10px;"> <i class="fas fa-address-card"></i>Thông tin chủ xe (<span>Theo đăng kí xe</span>)</h5>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span>Số CCCD/CMT/Hộ chiếu</span>
                                            <input class="form-control" type="text" value="${contractTNDS.getUser_iden()}" readonly="">
                                            <span>Tên</span>
                                            <input class="form-control" type="text" value="${contractTNDS.getUser_fullname()}" readonly="">
                                            <span>Email</span>
                                            <input class="form-control" type="text" value="${contractTNDS.getUser_mail()}" readonly="">                                        </div>
                                        <div class="col-md-6">
                                            <span>Số điện thoại</span>
                                            <input class="form-control" type="text" value="${contractTNDS.getUser_phoneNum()}" readonly="">
                                            <span>Ngày sinh</span>
                                            <input class="form-control" type="text" value="${contractTNDS.getUser_dob()}" readonly="">
                                            <span>Địa chỉ</span>
                                            <input class="form-control" type="text" value="${contractTNDS.getUser_address()}" readonly="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
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
