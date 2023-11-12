<%-- 
    Document   : formTNDS
    Created on : Oct 7, 2023, 3:57:27 PM
    Author     : x`
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/formTNDS.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <jsp:include page="Part/header.jsp"></jsp:include>
            <form  action="renewContract" method="post" id="frmCreateOrder" style="margin-top: 100px ; background-color: #fdcf2b ; padding: 20px 0" >
                <input type="hidden" Checked="True" id="bankCode" name="bankCode" value="" >
                <input type="text"  name="check" value="tnds" hidden >

                <div class="container form_TNDS">
                    <div class="row">
                       
                        <div class="col-md-8 info_motobike">
                            <div id="form_TNDS">
                                  <h1>Thông tin hợp đồng khách hành muốn đăng kí lại</h1>
                                <h5><i class="fa-solid fa-motorcycle"></i> Thông tin về xe</h5>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div>
                                            <span> Loại xe</span><br/>
                                            <input readonly value="${obj.getLoaiXe()}" class="general-dr abc form-control" id="type" name="type">
                                            

                                       
                                    </div>
                                    <div>
                                        <span>Số máy</span>
                                        <h1>${msg}</h1>
                                        <input  readonly value="${obj.getSoMay()}"  required="" class="form-control" type="text" name="soMay" >
                                    </div>
                                    <span style="color: hsl(29, 57%, 54%);">Bắt buộc cần nhập số biển kiểm soát</span>                        
                                </div>
                                <div class="col-md-6">
                                    <div>
                                        <span>Biển xe</span>
                                        <input readonly  value="${obj.getBienXe()}"  class="form-control" type="text" name="bienXe" required="" >
                                    </div>                            
                                    <div>
                                        <span>Số khung</span>
                                        <input readonly value="${obj.getSoKhung()}" required="" class="form-control" type="text" name="soKhung">
                                    </div>
                                </div>
                            </div>
                            <div id="scope insurance">
                                <h5><i class="fas fa-plus-square"></i> Phạm vi bảo hiểm</h5>
                                <div class="row">
                                    <div class="col-md-6">
                                        <span>Từ ngày</span>
                                    <input readonly class="form-control" required type="date" placeholder="Default input" name="fromDate" id="fromDate" onchange="updateToDate()">
                                    </div>
                                    <div class="col-md-6">
                                        <span>Đến ngày</span>
                                        <input value="${obj.getEndDate()}" class="form-control" type="date" placeholder="Default input" name="toDate" id="toDate" readonly>

                                    </div>
                                </div>

                                <div>
                                    <strong>1.TNDS bắt buộc</strong><i style="color: blue; margin-left: 7px;" class="fa-solid fa-square-check"></i>
                                </div>
                                <div>
                                    <strong>2.Tai nạn người ngồi trên xe</strong>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <span> Mức trách nhiệm</span>
                                                <input readonly="" value="${obj.getMucTrachNhiem()}" class="general-dr abc form-control" id="level" name="level">
                                                   
                                             
                                            </div>
                                            <div>
                                                <span>Phí</span>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <input name="lv-fee"  class="form-control" type="number" id="lv-fee" placeholder="" readonly>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input name="tax-fee" class="form-control" type="number" id="tax-fee" placeholder="" readonly>
                                                    </div>
                                                </div>                                   
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <span>Số người</span>
                                                <input readonly value="${obj.getSoNguoi()}" class="general-dr abc form-control" id="num" name="num">
                                                   
                                                
                                            </div>                            
                                            <div>
                                                <span>Tổng phí</span>
                                                <input readonly value="${obj.getTongChiPhi()}"  class="form-control" id="total-fee" type="number" readonly placeholder="" name="total" >
                                                <input readonly  value="${obj.getTongChiPhi()}" hidden class="form-control" readonly data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required." id="amount"  name="amount" type="number" value="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div id="vehicle_owner_information">
                                    <h5 style="margin-top: 10px;"> <i class="fas fa-address-card"></i>Thông tin chủ xe (<span>Theo đăng kí xe</span>)</h5>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span>Số CCCD/CMT/Hộ chiếu</span>
                                            <input value="${u.getUser_iden()}" id="user_iden2" class="form-control" type="text" readonly="" >
                                            <span>Tên</span>
                                            <input value="${u.getUser_fullName()}" id="user_fullName" class="form-control" type="text" readonly="" >
                                            <span>Email</span>
                                            <input value="${u.getUser_email()}" id="user_email2" class="form-control" type="email"" readonly="">
                                        </div>
                                        <div class="col-md-6">
                                            <span>Số điện thoại</span>
                                            <input value="${u.getUser_phoneNum()}" id="user_phoneNum2" class="form-control" type="number" readonly >
                                            <span>Ngày sinh</span>
                                            <input value="${u.getUser_dob()}   class="creationDateHere" id="creationDate"  class="form-control"  type="date"   readonly>                                            <span>Địa chỉ</span>
                                            <input value="${u.getUser_address()}"  id="user_address2" class="form-control" type="text" readonly >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 ">
                        <div class="payment">
                            <h6>Thông tin phí bảo hiểm</h6>
                            <hr>
                            
                            <div class="fee">
                                <span>Tổng phí</span>
                                <h6 id="b" style="float: right;">${obj.getTongChiPhi()}</h6>
                            </div>

                            

                            <c:if test="${sessionScope.user.user_role.equals('Khách hàng') &&  sessionScope.user.getStatus().equals('Đã xác minh')}">
                                <button type="submit" class="btn abc">Thanh toán</button>

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

                            </c:if>
                            <c:if test="${sessionScope.user.user_role.equals('Nhân viên') }">

                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>


   

    <script>
        $("#frmCreateOrder").submit(function () {
            var postData = $("#frmCreateOrder").serialize();
            var submitUrl = $("#frmCreateOrder").attr("action");
            console.log(submitUrl);
            console.log(postData);
            $.ajax({
                type: "POST",
                url: submitUrl,
                data: postData,
                dataType: 'JSON',
                success: function (x) {
                    console.log(x);
                    if (x.code === '00') {
                        if (window.vnpay) {
                            
                            vnpay.open({width: 768, height: 600, url: x.data});
                        } else {
                            location.href = x.data;
                        }
                        return false;
                    } else {
                        alert(x.Message);
                        console.log(x);
                    }
                }
            });
            return false;
        });
//        --------------------------------------------------
//         
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
    
    document.getElementById('fromDate').value = today
//        --------------------------------------------------
//         var fromDateInput = document.getElementById('fromDate');
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
//    -----------------------------------------------------
     var toDateInput = document.getElementById('toDate');
    // Get the current value of fromDate
    var toDateValue = new Date();

    // Increase the year by 1
    toDateValue.setFullYear(yyyy + 1);

    // Format the new date to match the date input format
    var toValueRenew = toDateValue.toISOString().split('T')[0];

    // Set the new value to the toDate input element
    document.getElementById('toDate').value = toValueRenew;
    
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
    //Đổi tiền sang số thập phân
    function formatNumber(number) {
    return number.toFixed(0).replace(/\d(?=(\d{3})+$)/g, '$&,');
    }
   
    // Lấy phần tử input dựa trên id
    var totalFeeInput = document.getElementById("total-fee");
     var b = document.getElementById("b");
    // Format và gán lại giá trị của input
    totalFeeInput.value = parseFloat(totalFeeInput.value).toLocaleString() ;
    b.innerHTML =  parseFloat(b.innerHTML).toLocaleString() ;
    
   
    
    </script>


</html>
