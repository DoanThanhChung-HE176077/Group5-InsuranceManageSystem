<%-- 
    Document   : User_claim_list
    Created on : Nov 8, 2023, 10:36:03 AM
    Author     : chun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tạo yêu cầu bồi thường</title>
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
            .labels {
                font-size: 15px !important;
            }

        </style>
    </head>
    <body style="background-color: hsl(47,98%,58%);">
        <jsp:include page="Part/header.jsp"></jsp:include>
            <form class="form-info" id="turung" style="margin-top: 150px" method="POST" action="UserClaimListSV" enctype="multipart/form-data">
                <div class="container  bg-white mt-5 mb-5" id="main-container">
                    <div class="row">
                        <div class="col-md-5 border-right">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                <div style="float: right" tabindex="0" class="" data-toggle="tooltip" data-placement="top" title="">
                                    <span style="color: red; font-style: italic; font-weight: bold;font-size: 12px ">Tip: Hãy click vào ảnh</span>
                                </div>
                                <img id="output" src="" alt="Image Preview" class="img-thumbnail mt-3" data-toggle="modal" data-target="#exampleModal">
                                <!-- The modal -->
                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <!-- Display the image in the modal -->
                                                <img id="modalImage" src="" alt="Image Preview" class="img-fluid">
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="container" style="margin-top:20px">
                                    <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                        <h4>Yêu cầu đã gửi</h4>
                                    </div>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Ngày tạo</th>
                                                <th>Trạng thái</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${cl}" var="o">
                                            <c:if test="${o.claim_status.equals('pending')}">
                                                <tr>
                                                    <td>Yêu cầu số ${o.claim_id}</td>
                                                    <td id="creationDate1">${o.creationDate}</td>
                                                    <td>Chưa duyệt</td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Yêu cầu đền bù bảo hiểm</h4>
                            </div>
                            <div class="row ">
                                <div class="col-md-12"style="margin-top:15px">
                                    <label class="labels">Người tạo yêu cầu :<span class="errmsg" style="color: red;"> *</span></label>
                                    <input value="${sessionScope.user.getUser_fullName()}" type="text"class="form-control" placeholder="" id="" name="" readonly>
                                    <input value="" type="hidden"class="form-control" placeholder="" id="" name="user_id" >
                                </div>
                                <div class="col-md-6" style="margin-top:15px">
                                    <label class="labels">Ngày tạo yêu cầu:<span class="errmsg" style="color: red;"> *</span></label>
                                    <input value="" type="date"class="form-control" placeholder="" id="creationDate" name="creationDate" readonly>
                                </div>
                                <div class="col-md-6" style="margin-top:15px">
                                    <label class="labels">Lựa chọn hợp đồng<span class="errmsg" style="color: red;"> *</span></label>
                                    <select class="custom-select" name="contract_id"> 
                                        <option selected>Lựa chọn</option>

                                        <c:forEach items="${ct}" var="o1">
                                            <c:forEach items="${cl}" var="ocl">
                                                <c:if test="${ocl.getContract_id() == o1.getContract_id() }">

                                                </c:if>
                                                <c:if test="${ocl.getContract_id() != o1.getContract_id() }">
                                                    <c:if test = "${o1.getUser_id() == sessionScope.user.getUser_id()} && ${ol.getStatus().equals('Active')}">
                                                        <option value="${o1.getContract_id()}">
                                                            Hợp đồng
                                                            <c:if test="${o1.getIp_id() == 1}">
                                                                TNDS
                                                            </c:if>
                                                            <c:if test="${o1.getIp_id() == 2}">
                                                                vật chất
                                                            </c:if>
                                                            số ${o1.getContract_id()}
                                                        </option>
                                                    </c:if>
                                                </c:if>

                                            </c:forEach>

                                        </c:forEach>                
                                    </select>
                                </div>
                                <div class="col-md-6" style="margin-top:15px">
                                    <label class="labels">Thông tin ngân hàng<span class="errmsg" style="color: red;"> *</span></label>
                                    <select class="custom-select" name="claim_bank"> 
                                        <option selected>Ngân hàng</option>
                                        <option>hd1</option>
                                        <option>hd2</option>
                                    </select>
                                </div>
                                <div class="col-md-12" style="margin-top:15px">
                                    <input value="" type="text"class="form-control" placeholder="Số tài khoản" id="" name="claim_bank_number" style="margin-top: 10px">
                                </div>
                                <input name="flag" value="1" type="hidden">
                                <div class="col-md-12"style="margin-top:15px">
                                    <label class="labels">Mô tả yêu cầu đền bù:<span class="errmsg" style="color: red;"> *</span></label>
                                    <div style="float: right" tabindex="0" class="" data-toggle="tooltip" data-placement="top" title="Khách hàng mô tả nguyên nhân/ lý do của yêu cầu tại đây.">
                                        <i class="fas fa-question-circle" style="pointer-events: none;"></i> 
                                    </div>
                                    <textarea  value="" type="text"class="form-control" placeholder="" id="claim_des" name="claim_description" ></textarea>
                                </div>
                                <div class="col-md-12" style="margin-top:15px">
                                    <label class="labels">Hình ảnh mô tả:<span class="errmsg" style="color: red;"> *</span></label>
                                    <input  type="file" class="form-control-file"  id="file1" name="claim_img_des" accept="image/*" onchange="loadFile(event)" >
                                </div>
                                <div class="col-md-12" style="margin-top:15px">
                                    <label class="labels">Tài liệu mô tả:<span class="errmsg" style="color: red;"> *</span></label>
                                    <input  type="file" class="form-control-file"  id="file2" name="claim_file_des" accept=".doc,.docx,.txt,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document"  >
                                </div>
                            </div>
                            <br>
                            <div class="modal-footer">
                                <c:if test="${sessionScope.user.user_role.equals('Khách hàng')}">
                                    <c:if test="${sessionScope.user.getStatus().equals('Đã xác minh')}">
                                        <button id="btn-edit1" type="submit" class="btn btn-primary">Gửi yêu cầu</button>
                                    </c:if>
                                    <c:if test="${sessionScope.user.user_role.equals('Khách hàng') &&  sessionScope.user.getStatus().equals('Chưa xác minh')}">
                                        <c:if test="${sessionScope.user.getUser_iden_img() == null && sessionScope.user.getStatus() == 'Chưa xác minh'}">
                                            <div class="d-flex justify-content-center" style="margin-top: 0px">
                                                <div class="d-flex justify-content-center" style="color: red; font-style: italic; font-weight: bold">
                                                    Bạn cần xác minh tài khoản để thực hiện thao tác này.
                                                </div>
                                            </div>
                                            <br>
                                            <div class="d-flex justify-content-center">
                                                <a type="button" href="User_verify.jsp" class="btn btn-danger">Xác minh tài khoản</a>
                                            </div>
                                        </c:if>
                                        <c:if test="${sessionScope.user.getUser_iden_img() != null && sessionScope.user.getStatus() == 'Chưa xác minh'}">
                                            <br>
                                            <span style="color: red;font-style: italic;font-weight: bold;font-size: 18px;margin-left: 13px;">Yêu cầu xác minh tài khoản đang chờ phê duyệt.</span>
                                        </c:if>
                                    </c:if>   
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script>
            var loadFile = function (event) {
                var output = document.getElementById('output');
                var modalImage = document.getElementById('modalImage');

                output.src = URL.createObjectURL(event.target.files[0]);
                modalImage.src = output.src;
            };

            document.querySelector('#turung').addEventListener('submit', function (e) {
                e.preventDefault();

                var soCCCD = document.getElementById('claim_des').value;
                var fileInput = document.getElementById('file1');

                if (soCCCD.trim() !== '' && fileInput.files.length > 0) {
                    swal({
                        title: 'Thành công!',
                        text: 'Đã gửi yêu cầu thành công',
                        icon: 'success',
                        button: "Đóng"
                    }).then(() => {
                        document.getElementById("turung").submit();
                    });
                } else {
                    swal({
                        title: 'Thất bại!',
                        text: 'Vui lòng điền đầy đủ thông tin và tải ảnh đầy đủ!!',
                        icon: 'error'
                    });
                }
            });
        </script>
        <script>
            function setCurrentDate() {
                // Get the current date
                var currentDate = new Date();

                // Format the date as "YYYY-MM-DD"
                var formattedDate = currentDate.toISOString().split('T')[0];

                // Set the formatted date as the value of the input field
                document.getElementById("creationDate").value = formattedDate;
            }

            // Call the function to set the current date when the page loads
            setCurrentDate();
        </script>

    </body>
</html>
