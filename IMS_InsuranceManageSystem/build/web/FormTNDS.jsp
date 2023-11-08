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
                                                        <input name="lv-fee"  class="form-control" type="text" id="lv-fee" placeholder="" readonly>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input name="tax-fee" class="form-control" type="text" id="tax-fee" placeholder="" readonly>
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
<!--                                                <input class="form-control" id="total-fee" type="text" readonly placeholder="" name="total" >-->
                                                <input class="form-control" readonly data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required." id="amount"  name="amount" type="number" value="" />
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
                                            <input id="user_dob2" class="form-control" type="date" readonly>
                                            <span>Địa chỉ</span>
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
                            <div class="fee">
                                <span>Phí</span>
                                <span id="a" style="float: right;"></span>
                            </div>
                            <div class="fee">
                                <span>Tổng phí</span>
                                <h6 id="b" style="float: right;"></h6>
                            </div>
                            <c:if test="${sessionScope.user.user_role.equals('Khách hàng') &&  sessionScope.user.getStatus().equals('Đã xác minh')}">
                                <button type="submit" class="btn ">Thanh toán</button>
                            </c:if>
                            <c:if test="${sessionScope.user.user_role.equals('Khách hàng') &&  sessionScope.user.getStatus().equals('Chưa xác minh')}">
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


    <!--       <script>
            $(document).ready(function () {
                $("#type, #level, #num").change(function () {
                    var type = $("#type").val();
                    var level = $("#level").val();
                    var num = $("#num").val();

                    // Kiểm tra giá trị null hoặc rỗng trước khi gửi AJAX request
                    if (type != null && level != null && num != null &&
                        type.trim() !== '' && level.trim() !== '' && num.trim() !== '') {
                        $.ajax({
                            url: "HandleFormTNDS",
                            type: "POST",
                            data: { type: type, level: level, num: num },
                            success: function (data) {
                                // Parse dữ liệu JSON nhận được
                                  var jsonData = JSON.parse(data);
                              alert('ok' + data)

                                // Cập nhật giá trị trong các thẻ HTML
                                $("#lv-fee").val(jsonData.lvFee);
                                $("#tax-fee").val(jsonData.taxFee);
                            },
                            error: function (error) {
                                console.log("Error: " + error);
                            }
                        });
                    } else {
                        console.log("Invalid input values");
                    }
                });
            });
        </script>-->

    <script>
          $("#frmCreateOrder").submit(function () {
                var postData = $("#frmCreateOrder").serialize();
                var submitUrl = $("#frmCreateOrder").attr("action");
                console.log(postData);
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
                        $("#lv-fee").val(jsonData.levelFee);
                        $("#tax-fee").val(jsonData.taxFee);
                        $("#amount").val(parseInt(jsonData.levelFee) + parseInt(jsonData.taxFee));
                        document.getElementById("a").innerHTML= jsonData.levelFee;
                        document.getElementById("b").innerHTML= parseInt(jsonData.levelFee) + parseInt(jsonData.taxFee);
                         $("#user_iden2").val(jsonData.user_iden);
                          $("#user_fullName").val(jsonData.user_fullName);
                           $("#user_email2").val(jsonData.user_email);
                            $("#user_phoneNum2").val(jsonData.user_phoneNum);
                             $("#user_dob2").val(jsonData.user_dob);
                              $("#user_address2").val(jsonData.user_address);
                    }
                };

                // Thiết lập tiêu đề yêu cầu
                xhr.setRequestHeader("Content-Type", "application/json");

                // Gửi dữ liệu với phương thức POST và định dạng là JSON
                xhr.send(JSON.stringify({type: type, level: level, num: num}));
            });
        });
        //Chuyển đổi Date tự động sang 1 năm
        function updateToDate() {
            // Lấy giá trị từ trường fromDate
            var fromDate = document.getElementById("fromDate").value;

            // Chuyển đổi giá trị fromDate thành đối tượng Date
            var fromDateObj = new Date(fromDate);

            // Cộng thêm 1 năm
            fromDateObj.setFullYear(fromDateObj.getFullYear() + 1);

            // Format lại ngày tháng để có thể đặt giá trị vào trường toDate
            var toDate = fromDateObj.toISOString().split('T')[0];

            // Đặt giá trị vào trường toDate
            document.getElementById("toDate").value = toDate;
        }
        




    </script>


</html>
