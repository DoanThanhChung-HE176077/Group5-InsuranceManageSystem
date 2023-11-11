<%-- Document : FormVatChat Created on : Oct 19, 2023, 8:59:21 PM Author : chun --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Form Vat Chat</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
              integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />


        <style>
            body {
                background-color: #fdd12d !important;
                font-size: 14px !important;
            }

            .info_motobike {
                padding: 15px;
                background-color: rgb(255, 255, 255);
                border: 1px solid rgb(157, 151, 151);
                border-radius: 7px;
            }

            .general-dr {
                width: 100%;
                height: 40px;
                outline: none;
                border-radius: 5px;
                border: 1px solid hsl(213, 15%, 85%);
            }

            .payment {
                padding: 10px;
                background-color: rgb(255, 255, 255);
                border: 1px solid rgb(157, 151, 151);
                border-radius: 7px;

            }

            .payment button {
                width: 100%;
                background-color: hsl(244, 43%, 46%);
                color: white;
                font-weight: bolder;
                border: none;

            }

            .payment button:hover {
                background-color: #fdd12d;
            }

            .errmsg {
                color: red;

            }

            #mySelect option[disabled] {
                color: grey;
                /* Màu chữ mờ */
            }
        </style>

    </head>

    <body>
        <jsp:include page="Part/header.jsp"></jsp:include>

            <form action="renewContract" method="GET" style="margin-top: 100px ;" id="frmCreateOrder">
                <div class="container form_TNDS">
                    <div class="row">
                        <div class="col-md-8 info_motobike">
                            <div id="form_TNDS">

                                <h5 style="font-weight: bold"><i class="fa-solid fa-car"></i> Thông tin về xe</h5>
                                <div class="row">
                                    <div class="col-md-6">
                                        <!--------------------- Hãng xe --------------------->
                                        <div>

                                            <label>Hãng xe<span class="errmsg" style="color: red;"> *</span></label><br />

                                            <input readonly="" value="${hangXe}" class="general-dr abc form-control" id="motorBrands" name="send-brand_id"/>
                                                   
                                                
                                         
                                    </div>
                                    <!--------------------- Hieu xe --------------------->
                                    <div>
                                        <br>

                                        <label>Hiệu xe <span class="errmsg" style="color: red;"> *</span></label>

                                        <input readonly value="${hieuXe}" class="general-dr abc form-control" id="motorBrandModel" name="model_id"/>
                                       
                                        <input type="hidden" name="send-model_id" value="" />
                                    </div>
                                    <!---------------------So may------------------------>
                                    <br>
                                    <div>

                                        <label>Số máy<span class="errmsg" style="color: red;"> *</span></label>

                                        <input readonly value="${obj.getFvc_deviceNum()}" class="form-control" type="text" name="soMay">
                                    </div>
                                    <p style="color: red; font-style: italic; font-weight: bold ">Người mua bảo
                                        hiểm cam kết cung cấp thông tin chính xác để đảm bảo quyền lợi bảo hiểm
                                    </p>

                                </div>

                                <!--------------------- BKS --------------------->
                                <div class="col-md-6">
                                    <div>

                                        <label>Biển kiểm soát<span class="errmsg" style="color: red;"> *</span></label>

                                        <input readonly value="${obj.getFvc_deviceChassisNum()}" class="form-control" type="text" name="bienXe" required="">
                                    </div>
                                    <br>
                                    <!--------------------- so khung --------------------->
                                    <div>

                                        <label>Số khung<span class="errmsg" style="color: red;"> *</span></label>

                                        <input readonly  value="${obj.getFvc_licensePlates()}" class="form-control" type="text" name="soKhung"/>
                                    </div>
                                </div>
                            </div>

                            <!----------------------PHẠM VI BẢO HIỂM----------------------->
                            <div id="scope insurance">
                                <h5 style=" font-weight: bold"><i class="fas fa-plus-square"></i> Phạm vi bảo
                                    hiểm</h5>
                                <!--------------------------------------------->
                                <div class="row">
                                    <div class="col-md-6">

                                        <label>Từ ngày<span class="errmsg" style="color: red;"> *</span></label>

                                        <input readonly  class="form-control" required type="date"
                                               placeholder="Default input" name="fromDate" id="fromDate"
                                               >
                                        <p  style="color: red; font-style: italic; font-weight: bold ">Người dùng
                                            vui lòng nhập ngày bắt đầu hợp đồng lớn hơn ngày hiện tại</p>
                                    </div>
                                    <div class="col-md-6">

                                        <label>Đến ngày<span class="errmsg" style="color: red;"> *</span></label>

                                        <input readonly class="form-control" type="date" placeholder="Default input"
                                               name="toDate" id="toDate" readonly>
                                    </div>
                                </div>
                                <!--------------------Goi bao hiem co ban------------------------->
                                <div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>

                                                <label>
                                                    Gói bảo hiểm cơ bản<span class="errmsg" style="color: red;"> *</span>
                                                </label>
                                                <div style="float: right" tabindex="0" class="" data-toggle="tooltip" data-placement="top" title="Đây là tooltip cho gói bảo hiểm cơ bản :">
                                                    <i class="fas fa-question-circle" style="pointer-events: none;"></i> 
                                                </div>

                                                <input readonly value="${pk}%" class="general-dr abc form-control " id="pack_percent"/>
                                                      
                                                <input type="hidden" value="" class="send-pt_id"
                                                       name="send-pt_id1" />
                                            </div>
                                            <!--------------------Gia tri xe------------------------->
                                           
                                        </div>
                                        <!--------------------Muc khau tru------------------------->
                                        <div class="col-md-6">
                                            <div>

                                                <label>Mức khấu trừ<span class="errmsg" style="color: red;"> *</span></label>
                                                <div style="float: right" tabindex="0" class="" data-toggle="tooltip" data-placement="top" title="Đaya là tooltip cho mức khấu trừ:">
                                                    <i class="fas fa-question-circle" style="pointer-events: none;"></i> 
                                                </div>

                                                <input readonly value="${deduct}%" class="general-dr abc form-control" id="deduc_percent"/>
                                                       
                                                <input type="hidden" value="" class="send-deduc_id"
                                                       name="send-deduc_id1" />
                                            </div>
                                           
                                            <div>
                                                <br>
                                                <input class="form-control" id="inWord" type="text" readonly
                                                       placeholder="" value="">

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div id="vehicle_owner_information">
                                    <h5 style="margin-top: 10px; font-weight: bold"> <i
                                            class="fas fa-address-card"></i> Thông tin chủ xe
                                        (<span>Theo đăng kí xe</span>)</h5>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Số CCCD/CMT/Hộ chiếu</label>
                                            <input id="user_iden2" class="form-control" type="text" readonly=""
                                                   value="${sessionScope.user.getUser_iden()}">
                                            <label>Tên</label>
                                            <input id="user_fullName" class="form-control" type="text"
                                                   readonly="" value="${sessionScope.user.getUser_fullName()}">
                                            <label>Email</label>
                                            <input id="user_email2" class="form-control"
                                                   type="email"" readonly="" value="
                                                   ${sessionScope.user.getUser_email()}">
                                        </div>
                                        <div class=" col-md-6">
                                            <label>Số điện thoại</label>
                                            <input id="user_phoneNum2" class="form-control" type="number"
                                                   readonly value="${sessionScope.user.getUser_phoneNum()}">
                                            <label>Ngày sinh</label>
                                            <input id="user_dob2" class="form-control" type="date" readonly
                                                   value="${sessionScope.user.getUser_dob()}">
                                            <label>Địa chỉ</label>
                                            <input id="user_address2" class="form-control" type="text" readonly
                                                   value="${sessionScope.user.getUser_address()}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 ">
                        <div class="container payment">
                            <h5 style="font-weight:bold">Thông tin thanh toán</h5>
                            <table class="table ">
                                <tbody>
                                    <tr>
                                        <th>Tổng chi phí:</th>
                                        <td>
                                            <p id="b"   style="font-size: 20px;" type="text"
                                               name="tong-chi-phi">${obj.getTotalPrice()} VND
                                                 
                                            </p>
                                            <input  value="${obj.getTotalPrice()}" hidden class="form-control" readonly data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required." id="amount"  name="amount" type="number" />
                                            <span
                                                style=" float: left; font-style: italic; font-size: 10px;margin-top: -15px"
                                                id="submitFrom_bangchu" name="bang-chu">

                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>


                            <c:if test = "${sessionScope.user.getUser_role().equals('Khách hàng')}">
                                <c:if test = "${sessionScope.user.getStatus().equals('Đã xác minh')}">
                                    <button type="submit" class="btn ">Thanh toán</button>
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
                                        <a type="button" href="User_verify.jsp" class="btn btn-danger">Xác minh tài khoản</a>
                                    </div>
                                </c:if>
                                <c:if test="${sessionScope.user.getUser_iden_img() != null && sessionScope.user.getStatus() == 'Chưa xác minh'}">
                                    <br>
                                    <span style="color: red;font-style: italic;font-weight: bold;font-size: 12px;margin-left: 13px;margin-top: 10px;">Yêu cầu xác minh tài khoản đang chờ phê duyệt.</span>
                                </c:if>
                            </c:if>


                            <c:if test="${sessionScope.user.user_role.equals('Admin') }">
                                <div class="d-flex justify-content-center" style="color: red; font-style: italic; font-weight: bold">
                                    Tài khoản của bạn không thuộc phạm vi thao tác chức năng này!.
                                </div>
                            </c:if>

                            <c:if test="${sessionScope.user.user_role.equals('Nhân viên') }">
                                <div class="d-flex justify-content-center" style="color: red; font-style: italic; font-weight: bold">
                                    Tài khoản của bạn không thuộc phạm vi thao tác chức năng này!
                                </div>
                            </c:if>

                        </div>
                        <input type="hidden" value="vatchat" name="check"  >

                    </div>
                </div>
            </div>
        </form>

        <!-- JavaScript code using jQuery for the dependent dropdown -->
        <!--        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>-->



        <script>
           



            $("#frmCreateOrder").submit(function () {
                var postData = $("#frmCreateOrder").serialize();
                var submitUrl = $("#frmCreateOrder").attr("action");
                console.log(postData);
                $.ajax({
                    type: "POST",
                    url: submitUrl,
                    data: postData,
                    dataType: 'JSON',
                    success: function (x) {
                        if (x.code === '00') {
                            if (window.vnpay) {
                                vnpay.open({width: 768, height: 600, url: x.data});
                            } else {
                                location.href = x.data;
                            }
                            return false;
                        } else {
                            alert(x.Message);
                        }
                    }
                });
                return false;
            });
            
              //Đổi tiền sang số thập phân
    function formatNumber(number) {
    return number.toFixed(0).replace(/\d(?=(\d{3})+$)/g, '$&,');
    }
   
    // Lấy phần tử input dựa trên id
//    
//     var b = document.getElementById("b");
//    // Format và gán lại giá trị của input
//   
   b.innerHTML =  parseFloat(b.innerHTML).toLocaleString() ;
//    
//     var fromDateInput = document.getElementById('fromDate');
//
//    // Get the current value of fromDate
//    var fromDateValue = new Date(fromDateInput.value);
//
//    // Increase the year by 1
//    fromDateValue.setFullYear(fromDateValue.getFullYear() + 1);
//
//    // Format the new date to match the date input format
//    var fromValueRenew = fromDateValue.toISOString().split('T')[0];
//
//    // Set the new value to the toDate input element
//    document.getElementById('fromDate').value = fromValueRenew;
////    -----------------------------------------------------
//     var toDateInput = document.getElementById('toDate');
//    // Get the current value of fromDate
//    var toDateValue = new Date(toDateInput.value);
//
//    // Increase the year by 1
//    toDateValue.setFullYear(fromDateValue.getFullYear() + 1);
//
//    // Format the new date to match the date input format
//    var toValueRenew = toDateValue.toISOString().split('T')[0];
//
//    // Set the new value to the toDate input element
//    document.getElementById('toDate').value = toValueRenew;

     function updateToDate() {
        // Get the 'fromDate' input element
        var fromDateInput = document.getElementById('fromDate');

        // Get the selected date from 'fromDate'
        var selectedDate = fromDateInput.value;

        // Set the 'toDate' input field to the selected date
        document.getElementById('toDate').value = selectedDate;
    }
        // Set the 'fromDate' input field to today's date
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); // January is 0!
    var yyyy = today.getFullYear();

    today = yyyy + '-' + mm + '-' + dd;
//    ------------------------------------------------------------
    document.getElementById('fromDate').value = today;
     var toDateInput = document.getElementById('toDate');
    // Get the current value of fromDate
    var toDateValue = new Date();

    // Increase the year by 1
    toDateValue.setFullYear(yyyy + 1);

    // Format the new date to match the date input format
    var toValueRenew = toDateValue.toISOString().split('T')[0];

    // Set the new value to the toDate input element
    document.getElementById('toDate').value = toValueRenew;
    
   

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







    </script>





</body>


</html>