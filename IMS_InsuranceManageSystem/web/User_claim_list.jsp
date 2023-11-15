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
<!--        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>




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

            .mybtn {
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1) ;
                border-radius: 5px ;
                border: none ;
                cursor: pointer ;
                transition: box-shadow 0.3s ease ;
            }
            .mybtn:hover {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
            }
            .atag1{

            }

            .swal2-cancel {
                margin-right: 10px;
            }
        </style>
    </head>
    <body style="background-color: hsl(47,98%,58%);">
        <jsp:include page="Part/header.jsp"></jsp:include>
            <form class="form-info" id="turung" style="margin-top: 150px" method="POST" action="UserClaimListSV" enctype="multipart/form-data">
                <div class="container  bg-white mt-5 mb-5" id="main-container">
                    <div class="row">
                        <div class="col-md-6 border-right">
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
                                            <c:if test="${o.claim_status.equals('pending') || o.claim_status.equals('Accept') || o.claim_status.equals('Reject')}">
                                                <tr>
                                                    <td >Yêu cầu số 
                                                        <span class="claim_id">${o.claim_id}</span></td>
                                                    <td class="creationDateHere" id="creationDate1">${o.creationDate}</td>
                                                    <c:if test="${o.claim_status.equals('pending')}">
                                                        <td>
                                                            Đang chờ duyệt
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${o.claim_status.equals('Accept')}">
                                                        <td>
                                                            Đã duyệt
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${o.claim_status.equals('Reject')}">
                                                        <td>
                                                            Bị từ chối
                                                        </td>
                                                    </c:if>

                                                    <td>

                                                        <div class="atag1" >
                                                            <i class="fa-solid fa-eye" data-toggle="modal" data-target="#staticBackdrop"></i>
                                                            <c:if test="${o.claim_status.equals('pending')}">
                                                                <i class="fa-solid fa-trash" onclick="confirmDelete(${o.claim_id})" style="margin-left: 10px"></i>
                                                            </c:if>
                                                        </div>
                                                        <div class="modal fade " id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <div class="d-flex justify-content-between align-items-center">
                                                                            <h5 class="modal-title" id="staticBackdropLabel">Chi tiết yêu cầu</h5>
                                                                        </div>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <div >
                                                                            <table class="table-striped">
                                                                                <thead>
                                                                                    <tr>
                                                                                        <th>
                                                                                            #
                                                                                        </th>
                                                                                        <th>
                                                                                            Thông tin
                                                                                        </th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <th>
                                                                                            Hợp đồng
                                                                                        </th>
                                                                                        <td id="contractid-info">

                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <th>
                                                                                            Người tạo
                                                                                        </th>
                                                                                        <td id="">
                                                                                            ${username}
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <th>
                                                                                            Ngày tạo
                                                                                        </th>
                                                                                        <td class="creationDateHere" id="creation-date">

                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <th>
                                                                                            Trạng thái
                                                                                        </th>
                                                                                        <td id="status-info">

                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <th>
                                                                                            Tệp đính kèm
                                                                                        </th>
                                                                                        <td id="filedoc-info">

                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <th>
                                                                                            Thông tin mô tả
                                                                                        </th>
                                                                                        <td id="des-info">

                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                                                        <div class="addbutton"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>    
                                                    </td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-5 border-left">
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
                                    <c:if test ="${ct2.size() > 0}">
                                        <select class="custom-select" name="contract_id"> 
                                            <option selected>Lựa chọn</option>
                                            <c:forEach items="${ct2}" var="contract1">
                                                <c:if test="${contract1.getContract_status() == 'Active'}">
                                                    <option value="${contract1.getContract_id()}">
                                                        Hợp đồng
                                                        <c:if test="${contract1.getIp_id() == 1}">
                                                            TNDS
                                                        </c:if>
                                                        <c:if test="${contract1.getIp_id() == 2}">
                                                            vật chất
                                                        </c:if>
                                                        số ${contract1.getContract_id()}
                                                    </option>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                    </c:if>
                                    <c:if test ="${ct2.size() == 0 }">
                                        <div>
                                            <span style="color: red;font-style: italic;font-weight: bold;font-size: 18px;">
                                                Các hợp đồng của bạn đã được yêu cầu hoặc bạn chưa có hợp đồng nào.
                                            </span>
                                        </div>
                                    </c:if>
                                </div>
                                <div class="col-md-6" style="margin-top:15px">
                                    <label class="labels">Thông tin ngân hàng<span class="errmsg" style="color: red;"> *</span></label>
                                    <select class="custom-select" name="claim_bank"> 
                                        <option selected>Ngân hàng</option>
                                        <option value="vietcombank">Ngân hàng Ngoại Thương Việt Nam (Vietcombank)</option>
                                        <option value="bidv">Ngân hàng Đầu tư và Phát triển Việt Nam (BIDV)</option>
                                        <option value="vietinbank">Ngân hàng Công Thương Việt Nam (VietinBank)</option>
                                        <option value="acb">Ngân hàng Á Châu (ACB)</option>
                                        <option value="sacombank">Ngân hàng TMCP Sài Gòn Thương Tín (Sacombank)</option>
                                        <option value="techcombank">Ngân hàng Thương mại Cổ phần Kỹ thương Việt Nam (Techcombank)</option>
                                        <option value="mb">Ngân hàng Quân Đội (MB)</option>
                                        <option value="hdbank">Ngân hàng Phát triển TP.Hồ Chí Minh (HDBank)</option>
                                        <option value="dongabank">Ngân hàng Đông Á (DongA Bank)</option>
                                        <option value="pvcombank">Ngân hàng TMCP Đại Chúng Việt Nam (PVcomBank)</option>
                                        <option value="tpbank">Ngân hàng Tiên Phong (TPBank)</option>
                                        <option value="maritimebank">Ngân hàng TMCP Hàng Hải Việt Nam (Maritime Bank)</option>
                                        <option value="shb">Ngân hàng TMCP Sài Gòn - Hà Nội (SHB)</option>
                                        <option value="agribank">Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam (Agribank)</option>
                                        <option value="pgbank">Ngân hàng TMCP Xăng dầu Petrolimex (PG Bank)</option>
                                        <option value="seabank">Ngân hàng TMCP Đông Nam Á (SeABank)</option>
                                        <option value="scb">Ngân hàng TMCP Sài Gòn (SCB)</option>
                                        <option value="ocb">Ngân hàng TMCP Phương Đông (OCB)</option>
                                        <option value="ncb">Ngân hàng TMCP Quốc Dân (NCB)</option>
                                        <!-- Các ngân hàng khác -->
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
                                    <c:if test ="${ct2.size() > 0 }">
                                        <c:if test="${sessionScope.user.getStatus().equals('Đã xác minh')}">
                                            <button id="btn-edit1" type="submit" class="btn mybtn btn-primary">Gửi yêu cầu</button>
                                        </c:if>
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
                                                <a type="button" href="User_verify.jsp" class="btn mybtn btn-danger">Xác minh tài khoản</a>
                                            </div>
                                        </c:if>
                                        <c:if test="${sessionScope.user.getUser_iden_img() != null && sessionScope.user.getStatus() == 'Chưa xác minh'}">
                                            <br>
                                            <span style="color: red;font-style: italic;font-weight: bold;font-size: 18px;margin-left: 13px;">Yêu cầu xác minh tài khoản đang chờ phê duyệt.</span>
                                        </c:if>
                                    </c:if>   
                                </c:if>
                                <!--/modal huong dan-->  
                                <a type="button" class="btn mybtn btn-success" data-toggle="modal" data-target="#exampleModal2" >Hướng dẫn  yêu cầu bồi thường</a>
                                <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary">Save changes</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                    Swal.fire({
                        title: 'Thành công!',
                        text: 'Đã gửi yêu cầu thành công',
                        icon: 'success',
                        confirmButtonText: "Đóng"
                    }).then(() => {
                        document.getElementById("turung").submit();
                    });
                } else {
                    Swal.fire({
                        title: 'Thất bại!',
                        text: 'Vui lòng điền đầy đủ thông tin và tải ảnh đầy đủ!!',
                        icon: 'error'
                    });
                }
            });
        </script>

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

            $(document).ready(function () {
                $('.fa-eye').on('click', function () {
                    var claimId = $(this).closest('tr').find('.claim_id').text();
                    $.ajax({
                        type: 'GET',
                        url: 'UserClaimListSV',
                        data: {claim_id: claimId},
                        success: function (data) {
                            //                              response in network f12
                            $('#contractid-info').text(data.contract_id);
//                            $('#creator-info').text(data.user_id);
                            var creationDate = data.creationDate;
                            var dateObject = new Date(creationDate);
                            var day = dateObject.getDate();
                            var month = dateObject.getMonth() + 1;
                            var year = dateObject.getFullYear();
                            var formattedDate = (day < 10 ? '0' : '') + day + '-' + (month < 10 ? '0' : '') + month + '-' + year;
                            $('#creation-date').text(formattedDate);

                            if (data.claim_status === 'pending') {
                                $('#status-info').text('Đang chờ duyệt');
                            } else if (data.claim_status === 'Accept') {
                                $('#status-info').text('Đã duyệt');
                            } else if (data.claim_status === 'Reject') {
                                $('#status-info').text('Bị từ chối');
                            } else {
                                $('#status-info').text(data.claim_status);
                            }
                            $('#filedoc-info').text(data.claim_file_des);
                            $('#des-info').text(data.claim_description);

                        },
                        error: function () {
                            console.log('Error fetching data');
                        }
                    });
                });
            });


            function confirmDelete(claim_id) {
                const swalWithBootstrapButtons = Swal.mixin({
                    customClass: {
                        confirmButton: "btn btn-success",
                        cancelButton: "btn btn-danger"
                    },
                    buttonsStyling: false
                });

                swalWithBootstrapButtons.fire({
                    title: "Are you sure?",
                    text: "You won't be able to revert this!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonText: "Yes, delete it!",
                    cancelButtonText: "No, cancel!",
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {
                        // Thực hiện xóa với claim_id đã được truyền vào
                        deleteClaim(claim_id);
                    } else if (result.dismiss === Swal.DismissReason.cancel) {
                        swalWithBootstrapButtons.fire({
                            title: "Cancelled",
                            text: "Your imaginary file is safe :)",
                            icon: "error"
                        });
                    }
                });
            }

            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                    confirmButton: "btn btn-success",
                    cancelButton: "btn btn-danger"
                },
                buttonsStyling: false
            });

            function confirmDelete(claim_id) {
                swalWithBootstrapButtons.fire({
                    title: "Bạn có chắc chắn xóa yêu cầu?",
                    text: "Bạn sẽ không thể khôi phục lại yêu cầu này!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonText: "Xác nhận",
                    cancelButtonText: "Hủy",
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {
                        // Thực hiện xóa với claim_id đã được truyền vào
                        deleteClaim(claim_id);
                    } else if (result.dismiss === Swal.DismissReason.cancel) {
                        swalWithBootstrapButtons.fire({
                            title: "Hủy thành công",
                            text: "Bạn đã hủy thao tác xóa!",
                            icon: "error"
                        });
                    }
                });
            }

            function deleteClaim(claim_id) {
                $.ajax({
                    type: 'POST',
                    url: 'UserClaimListShow',
                    data: {claim_id: claim_id},
                    success: function (data) {
                        swalWithBootstrapButtons.fire({
                            title: "Xóa thành công!",
                            text: "Yêu cầu đền bù đã bị hủy.",
                            icon: "success"
                        }).then(() => {
                            location.reload();
                            console.log('meo'+ data );
                        });                        
                    },
                    error: function () {
                        swalWithBootstrapButtons.fire({
                            title: "Error",
                            text: "An error occurred while deleting the claim.",
                            icon: "error"
                        });
                    }
                });
                
            }



        </script>

    </body>
</html>
