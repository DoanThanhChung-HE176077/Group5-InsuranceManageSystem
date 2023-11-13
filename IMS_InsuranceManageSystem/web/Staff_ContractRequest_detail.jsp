<%-- Document : Staff_ContractRequest_detail Created on : Nov 2, 2023, 12:40:04 AM Author : pc minh --%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết yêu cầu</title>
        
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
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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
            .mybtn {
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1) ;
                border-radius: 5px ;
                border: none ;
                cursor: pointer ;
                transition: box-shadow 0.3s ease ;
                margin-right: 10px
            }
            .mybtn:hover {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
            }

            .swal2-cancel{
                margin-right: 10px !important;
            }
        </style>
    </head>
    <body style="background-color: hsl(47,98%,58%);">
        <jsp:include page="Part/header.jsp"></jsp:include>
        <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>
            <form class="form-info" id="turung" style="margin-top: 150px" method="POST" action="UserClaimListSV" enctype="multipart/form-data">
                <div>
                    <div class="container bg-white mt-5 mb-5" id="main-container">
                        <div class="row">
                            <!--Thông tin chi tiết yêu cầu-->
                            <div class="col-md-5 ">
                                <div class="d-flex justify-content-center mt-3 mb-3">
                                    <h4>Thông tin chi tiết yêu cầu đăng kí bảo hiểm</h4>
                                </div>
                                <div>
                                    <table class="table " >
                                        <thead >
                                            <tr >
                                                <th scope="col">#</th>
                                                <th scope="col">Thông tin</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr scope="row">
                                                <th>Người đăng ký bảo hiểm</th>
                                                <td>${contract.getUser_fullname()}</td>
                                        </tr>
                                        <tr scope="row">
                                            <th>Email</th>
                                            <td>${contract.getUser_mail()}</td>
                                        </tr>
                                        <tr scope="row">
                                            <th>Số điện thoại</th>
                                            <td>
                                                ${contract.getUser_phoneNum()}
                                            </td>
                                        </tr >
                                        <tr scope="row">
                                            <th>Địa chỉ</th>
                                            <td>
                                                ${contract.getUser_address()}
                                            </td>
                                        </tr >
                                        
                                        <tr scope="row">
                                            <th>Trạng thái hợp đồng</th>
                                            <td>Chưa duyệt</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <div class="col-md-2">
                            <div class="d-flex justify-content-center mt-5">
                                <h4></h4>
                            </div>
                            <div>

                            </div>
                        </div>
                        <!--Thông tin hợp đồng-->
                        <div class="col-md-5">
                            <div class="d-flex justify-content-center mt-3 mb-3">
                                <h4>Hợp đồng được yêu cầu</h4>
                            </div>
                            <div>
                                <table class="table " >
                                    <thead >
                                        <tr >
                                            <th scope="col">#</th>
                                            <th scope="col">Thông tin</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr scope="row">
                                            <th>Khách hàng</th>
                                            <td>${contract.getUser_fullname()}</td>
                                        </tr>
                                        <tr scope="row">
                                            <th>Loại hợp đồng</th>
                                                <c:if test="${contract.getIp_id() == 1}">
                                                <td>HĐ bảo hiểm TNDS</td>
                                            </c:if>
                                            <c:if test="${contract.getIp_id() == 2}">
                                                <td>HĐ bảo hiểm vật chất</td>
                                            </c:if>
                                        </tr>
                                        <tr scope="row">
                                            <th>Ngày hiệu lực <i style="color: gray;font-size: 13px">(dd/mm/yyyy)</i></th>
                                            <td  class="creationDateHere" id="creationDate">${contract.getContract_startDate()}</td>
                                        </tr >
                                        <tr scope="row">
                                            <th>Ngày hết hạn  <i style="color: gray;font-size: 13px">(dd/mm/yyyy)</i></th>
                                            <td class="creationDateHere" id="creationDate">${contract.getContract_endDate()}</td>
                                        </tr>
                                        <c:if test="${contractTNDS != null}">
                                            <tr scope="row">
                                                <th>Biển kiểm soát</th>
                                                <td>${contractTNDS.getBienxe()}</td>
                                            </tr>
                                            <tr scope="row">
                                                <th>Số khung</th>
                                                <td>${contractTNDS.getSokhung()}</td>
                                            </tr>
                                            <tr scope="row">
                                                <th>Số máy</th>
                                                <td>${contractTNDS.getSomay()}</td>
                                            </tr>
                                            <tr scope="row">
                                                <th>Mức trách nhiệm</th>
                                                <td>${contractTNDS.getMuctrachnhiem()}</td>
                                            </tr>
                                            <tr scope="row">
                                                <th>Số người</th>
                                                <td>${contractTNDS.getSonguoi()} người</td>
                                            </tr>
                                            <tr scope="row">
                                                <th>Tổng tiền</th>
                                                <td style="color: red" class="totalPrice">${contractTNDS.getTongchiphi()}</td>
                                            </tr>
                                        </c:if>

                                        <c:if test="${contractVatchat != null}">
                                            <tr>
                                                <th>Gói bảo hiểm cơ bản</th>
                                                <td>${contractVatchat.getGoibhcb()}%</td>
                                            </tr>
                                            <tr>
                                                <th>Mức khấu trừ</th>
                                                <td>${contractVatchat.getMuckhautru()}%</td>
                                            </tr>
                                            <tr>
                                                <th>Hãng xe</th>
                                                <td>${contractVatchat.getHangxe()}</td>
                                            </tr>
                                            <tr>
                                                <th>Hiệu xe</th>
                                                <td>${contractVatchat.getHieuxe()}</td>
                                            </tr>
                                            </tr>
                                            <tr scope="row">
                                                <th>Số khung</th>
                                                <td>${contractVatchat.getSokhung()}</td>
                                            </tr>
                                            <tr scope="row">
                                                <th>Số máy</th>
                                                <td>${contractVatchat.getSomay()}</td>
                                            </tr>
                                            <tr scope="row">
                                                <th>Tổng tiền</th>
                                                <td style="color: red" class="totalPrice">${contractVatchat.getTongchiphi()}</td>
                                            </tr>
                                        </c:if>
                                        <!--===================================================================================================-->

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="row ">
                        <div class="col-md-12  mb-3"><hr>
                            <div class="d-flex justify-content-center">
                                <a type="button" href="contract_request_list" class="btn btn-secondary mybtn">
                                    Trở lại
                                </a>
                                <a type="submit" href="StaffContractRequestCheck?status=Reject" class="btn btn-danger mybtn" id="denyBtn">
                                    Từ chối
                                </a>
                                <a type="submit" href="StaffContractRequestCheck?status=Active" class="btn btn-success mybtn" id="approveBtn">
                                    Phê duyệt
                                </a>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </form>
                                        
        <!-- quan trong cua dropdowntable -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous">    
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

            function updateTextContent() {
                var links = document.getElementsByClassName('docfile');
                var links2 = document.getElementsByClassName('imgfile');

                for (var i = 0; i < links.length; i++) {
                    var originalText = links[i].innerText;
                    var newText = originalText.replace('Documents/', '');
                    links[i].innerText = newText;
                }
                for (var i = 0; i < links2.length; i++) {
                    var originalText = links2[i].innerText;
                    var newText = originalText.replace('Image/cccd/', '');
                    links2[i].innerText = newText;
                }
            }
            updateTextContent();

            function updatePriceFormat() {
                var tdElement = document.querySelector('.totalPrice');
                var originalValue = tdElement.innerText;
                var formattedValue = parseFloat(originalValue).toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});
                tdElement.innerText = formattedValue;
            }

            updatePriceFormat();

            function showDenyConfirmation() {
                const swalWithBootstrapButtons = Swal.mixin({
                    customClass: {
                        confirmButton: "btn btn-success",
                        cancelButton: "btn btn-danger"
                    },
                    buttonsStyling: false
                });

                swalWithBootstrapButtons.fire({
                    title: "Từ chối hợp đồng này?",
                    text: "Bạn sẽ không thể thực hiện lại thao tác này!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonText: "Từ chối!",
                    cancelButtonText: "Hủy bỏ",
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {
                        swalWithBootstrapButtons.fire({
                            title: "Thành công!",
                            text: "Đã từ chối hợp đồng!",
                            icon: "success"
                        }).then(() => {
                            window.location.href = "StaffContractRequestCheck?status=Reject&contract_id=${contract.getContract_id()}";
                        });
                    } else if (result.dismiss === Swal.DismissReason.cancel) {
                        swalWithBootstrapButtons.fire({
                            title: "Hủy bỏ!",
                            text: "Hủy bỏ thao tác từ chối hợp đồng.",
                            icon: "error"
                        });
                    }
                });
            }

            function showApprovalConfirmation() {
                const swalWithBootstrapButtons = Swal.mixin({
                    customClass: {
                        confirmButton: "btn btn-success",
                        cancelButton: "btn btn-danger"
                    },
                    buttonsStyling: false
                });

                swalWithBootstrapButtons.fire({
                    title: "Phê duyệt hợp đồng này?",
                    text: "Bạn sẽ không thể thực hiện lại thao tác này!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonText: "Phê duyệt!",
                    cancelButtonText: "Hủy bỏ",
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {
                        swalWithBootstrapButtons.fire({
                            title: "Thành công!",
                            text: "Hợp đồng đã được phê duyệt thành công.",
                            icon: "success"
                        }).then(() => {
                            window.location.href = "StaffContractRequestCheck?status=Active&contract_id=${contract.getContract_id()}";
                        });
                    } else if (result.dismiss === Swal.DismissReason.cancel) {
                        swalWithBootstrapButtons.fire({
                            title: "Hủy bỏ!",
                            text: "Hủy bỏ thao tác phê duyệt hợp đồng.",
                            icon: "error"
                        });
                    }
                });
            }

            document.getElementById("denyBtn").addEventListener("click", function (event) {
                event.preventDefault();
                showDenyConfirmation();
            });

            document.getElementById("approveBtn").addEventListener("click", function (event) {
                event.preventDefault();
                showApprovalConfirmation();
            });

        </script>                  
    </body>
</html>