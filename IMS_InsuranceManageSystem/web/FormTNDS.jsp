<%-- 
    Document   : formTNDS
    Created on : Oct 7, 2023, 3:57:27 PM
    Author     : x`
--%>

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

    </head>
    <body>
        <jsp:include page="Part/header.jsp"></jsp:include>
            <form  action="saveInfoTNDS" method="get" id="frmCreateOrder" style="margin-top: 100px ; background-color: #fdcf2b ; padding: 20px 0" >
                <input type="hidden" Checked="True" id="bankCode" name="bankCode" value="" >
                <input type="text"  name="check" value="tnds" hidden >

                <div class="container form_TNDS">
                    <div class="row">
                        <div class="col-md-8 info_motobike">
                            <div id="form_TNDS">

                                <h5><i class="fa-solid fa-motorcycle"></i> Thông tin về xe</h5>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div>
                                            <span> Loại xe</span><br/>
                                            <select class="general-dr abc" id="type" name="type">
                                            <c:forEach items="${listType}" var="c">
                                                <option value="${c.getId()}">${c.getType_name()}</option>
                                            </c:forEach>

                                        </select>
                                    </div>
                                    <div>
                                        <span>Số máy</span>
                                        <h1>${msg}</h1>
                                        <input required="" class="form-control" type="text" name="soMay" >
                                    </div>
<span style="color: hsl(29, 57%, 54%);">Bắt buộc cần nhập số biển kiểm soát</span>
                                </div>
                                <div class="col-md-6">
                                    <div>
                                        <span>Biển xe</span>
                                        <input class="form-control" type="text" name="bienXe" required="" >
                                    </div>                            
                                    <div>
                                        <span>Số khung</span>
                                        <input required="" class="form-control" type="text" name="soKhung">
                                    </div>
                                </div>
                            </div>
                            <div id="scope insurance">
                                <h5><i class="fas fa-plus-square"></i> Phạm vi bảo hiểm</h5>
                                <div class="row">
                                    <div class="col-md-6">
                                        <span>Từ ngày</span>
                                        <input class="form-control" required type="date" placeholder="Default input" name="fromDate" id="fromDate" onchange="updateToDate()" >
                                    </div>
                                    <div class="col-md-6">
                                        <span>Đến ngày</span>
                                        <input class="form-control" type="date" placeholder="Default input" name="toDate" id="toDate" readonly>

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
                                                <select class="general-dr abc" id="level" name="level">
                                                    <c:forEach items="${listLevel}" var="c">
                                                        <option value="${c.getLv_id()}">${c.getLv_value()}</option>
                                                    </c:forEach>

                                                </select>
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
                                                <select class="general-dr abc" id="num" name="num">
                                                    <c:forEach  items="${listNum}" var="c">
                                                        <option value="${c}">${c}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>                            
                                            <div>
                                                <span>Tổng phí</span>
                                                <input class="form-control" id="total-fee" type="number" readonly placeholder="" name="total" >
                                                <input hidden class="form-control" readonly data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required." id="amount"  name="amount" type="number" value="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div id="vehicle_owner_information">
                                    <h5 style="margin-top: 10px;"> <i class="fas fa-address-card"></i>Thông tin chủ xe (<span>Theo đăng kí xe</span>)</h5>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span>Số CCCD/CMT/Hộ chiếu</span>
                                            <input id="user_iden2" class="form-control" type="text" readonly="" >
                                            <span>Tên</span>
                                            <input id="user_fullName" class="form-control" type="text" readonly="" >
                                            <span>Email</span>
<input id="user_email2" class="form-control" type="email"" readonly="">
                                        </div>
                                        <div class="col-md-6">
                                            <span>Số điện thoại</span>
                                            <input id="user_phoneNum2" class="form-control" type="number" readonly >
                                            <span>Ngày sinh</span>
                                            <input id="user_dob2" class="form-control"  type="date"   readonly>                                            <span>Địa chỉ</span>
                                            <input id="user_address2" class="form-control" type="text" readonly >
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
                            <div class="fax">
                                <span>Thuế</span>
                                <span id="c" style="float: right;"></span>
                            </div>
                            <div class="fee">
                                <span>Phí</span>
                                <span id="a" style="float: right;"></span>
                            </div>
                            <div class="fee">
                                <span>Tổng phí</span>
                                <h6 id="b" style="float: right;"></h6>
                            </div>
                            <p id="msg">${msg}</p>
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
           var bienXeValue = $("input[name='bienXe']").val();
            var soKhungValue = $("input[name='soKhung']").val();
             var soMayValue = $("input[name='soMay']").val();

        // Kiểm tra xem có khoảng trắng trong bienXe hay không
        if (/\s/.test(soKhungValue)) {
            alert("Số khung xe không được khoảng trắng.");
            return false;
        }
        if (/\s/.test(soMayValue)) {
            alert("Số máy không được chứa khoảng trắng .");
            return false;
        }
        if (/\s/.test(bienXeValue)) {
            alert("Biển số xe không được chứa khoảng trắng .");
            return false;
        }

        // Kiểm tra xem có kí hiệu đặc biệt trong bienXe hay không
        var specialCharacters = /[!@#$%^&*()_+\-=<>?/,.;:'"\\|{}[\]`~]/;
        if (specialCharacters.test(bienXeValue)) {
            alert("Biển số xe không được chứa kí hiệu đặc biệt.");
            return false;
        }
        if (specialCharacters.test(soKhungValue)) {
            alert("Số khung không được chứa kí hiệu đặc biệt.");
            return false;
        }
        if (specialCharacters.test(soMayValue)) {
            alert("Biển máy không được chứa kí hiệu đặc biệt.");
            return false;
        }

        // Nếu không có lỗi, tiếp tục submit form
        var postData = $("#frmCreateOrder").serialize();
        var submitUrl = $("#frmCreateOrder").attr("action");

            $.ajax({
                type: "GET",
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
        document.querySelectorAll(".abc").forEach(function (element) {
            element.addEventListener("click", function () {
                var xhr = new XMLHttpRequest();
                var type = $("#type").val();  // Lấy giá trị từ #num
                var level = $("#level").val();
                var num = $("#num").val();
                xhr.open("POST", "HandleFormTNDS", true);

                // Thêm sự kiện readystatechange
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var jsonData = JSON.parse(xhr.responseText);
                        console.log(jsonData);

                        // Cập nhật giá trị trong các thẻ HTML
                        var levelFee = parseInt(jsonData.levelFee);
                        var taxFee = parseInt(jsonData.taxFee);
                        var amount = parseInt(jsonData.levelFee) + parseInt(jsonData.taxFee);
                        var formattedLevelFee2 = formatNumberWithDot(levelFee);
                        var formattedTaxFee2 = formatNumberWithDot(taxFee);
                        var formattedAmount2 = formatNumberWithDot(amount);
                        
                        
                        var formattedLevelFee = parseFloat(levelFee).toLocaleString();
                        var formattedTaxFee = parseFloat(taxFee).toLocaleString();
                        var formattedAmount = parseFloat(amount).toLocaleString();
                        $("#lv-fee").val(formattedLevelFee);
                        $("#tax-fee").val(formattedTaxFee);
                        $("#total-fee").val(formattedAmount);
                        $("#amount").val(amount);
//                        $("#lv-fee").val(formattedLevelFee2);
//                        $("#tax-fee").val(formattedTaxFee2);
//                        $("#total-fee").val(formattedAmount2);
//                        $("#amount").val(formattedAmount2);
                        document.getElementById("a").innerHTML = formattedLevelFee2+' ₫';
                        document.getElementById("b").innerHTML = formattedAmount2+' ₫';
                        document.getElementById("c").innerHTML = formattedTaxFee2+' ₫';

                        if (jsonData.msg !== "null") {
                            document.getElementById("msg").innerHTML = jsonData.msg;
                            alert(jsonData.msg);
                            window.location.href = "HandleFormTNDS";
                        }
$("#user_iden2").val(jsonData.user_iden);
                        $("#user_fullName").val(jsonData.user_fullName);
                        $("#user_email2").val(jsonData.user_email);
                        $("#user_phoneNum2").val(jsonData.user_phoneNum);

                        var dobParts = jsonData.user_dob.split('/');
                        var formattedDob = dobParts[2] + '-' + dobParts[0] + '-' + dobParts[1];

                        $("#user_dob2").val(jsonData.user_dob);
                        $("#user_address2").val(jsonData.user_address);
                    }
                };
                xhr.setRequestHeader("Content-Type", "application/json");
                xhr.send(JSON.stringify({type: type, level: level, num: num}));
            });
        });
        function formatNumberWithDot(number) {
            var numberString = number.toString();
            var decimalIndex = numberString.indexOf('.');
            if (decimalIndex === -1) {
                decimalIndex = numberString.length;
            }
            for (var i = decimalIndex - 3; i > 0; i -= 3) {
                numberString = numberString.slice(0, i) + '.' + numberString.slice(i);
            }
            return numberString;
        }


        function updateToDate() {
            var fromDateInput = document.getElementById("fromDate");
            var toDateInput = document.getElementById("toDate");
            var currentDate = new Date();
            var fromDate = new Date(fromDateInput.value);
            if (!isNaN(fromDate) && fromDate >= currentDate) {
                var endDate = new Date(fromDate);
                endDate.setFullYear(endDate.getFullYear() + 1);
                var endDateFormatted = endDate.toISOString().split('T')[0];
                toDateInput.value = endDateFormatted;
            } else {
                toDateInput.value = "";
                alert("Ngày bắt đầu hơn ngày hôm nay");
            }
        }



        //đinh dạng ngày sinh
        var inputDate = document.getElementById('user_dob2');

    </script>


</html>