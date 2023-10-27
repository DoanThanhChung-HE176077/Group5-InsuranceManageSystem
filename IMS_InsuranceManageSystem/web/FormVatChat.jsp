<%-- 
    Document   : FormVatChat
    Created on : Oct 19, 2023, 8:59:21 PM
    Author     : chun
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                color: grey; /* Màu chữ mờ */
             }

        </style>

    </head>

    <body>
        <jsp:include page="Part/header.jsp"></jsp:include>

        <form action="SaveInfoVatChat" method="POST" style="margin-top: 100px ;">
            <div class="container form_TNDS">
                <div class="row">
                    <div class="col-md-8 info_motobike">
                        <div id="form_TNDS">

                            <h5><i class="fa-solid fa-car"></i> Thông tin về xe</h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <!--------------------- Hãng xe --------------------->
                                    <div>
                                        <label>Hãng xe<span class="errmsg"> *</span></label><br />
                                        <select class="general-dr abc" id="motorBrands" name="motorBrands" onchange="updateCarModels()">
                                            <option id="mySelect" value="" disabled selected>Lựa chọn hãng xe của bạn</option>
                                        <c:forEach items="${listBrands}" var="brand">
                                            <option value="${brand.getBrand_id()}">${brand.getBrand_name()} have id: ${brand.getBrand_id()}</option>
                                        </c:forEach>
                                        </select>
                                    </div>              
                                    <!--------------------- Hieu xe --------------------->
                                    <div>
                                        <br>
                                        <label>Hiệu xe <span class="errmsg"> *</span></label>
                                        <select class="general-dr abc" id="motorBrandModel" name="motorBrandModel">
                                        </select>
                                    </div>
                                    <!---------------------So may------------------------>
                                    <br>
                                    <div>
                                        <label>Số máy<span class="errmsg"> *</span></label>
                                        <input class="form-control" type="text" name="soMay">
                                    </div>
                                </div>
                                <!--------------------- BKS --------------------->
                                <div class="col-md-6">
                                    <div>
                                        <label>Biển kiểm soát<span class="errmsg"> *</span></label>
                                        <input class="form-control" type="text" name="bienXe" required="">
                                    </div>
                                    <br>
                                    <!--------------------- so khung --------------------->
                                    <div>
                                        <label>Số khung<span class="errmsg"> *</span></label>
                                        <input class="form-control" type="text" name="soKhung">
                                    </div>
                                </div>
                            </div>

                            <!----------------------PHẠM VI BẢO HIỂM----------------------->
                            <div id="scope insurance">
                                <h5><i class="fas fa-plus-square"></i> Phạm vi bảo hiểm</h5>
                                <!--------------------------------------------->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Từ ngày<span class="errmsg"> *</span></label>
                                        <input class="form-control" required type="date" placeholder="Default input"
                                               name="fromDate" id="fromDate" onchange="updateToDate()">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Đến ngày<span class="errmsg"> *</span></label>
                                        <input class="form-control" type="date" placeholder="Default input" name="toDate"
                                               id="toDate" readonly>
                                    </div>
                                </div>
                                <!--------------------Goi bao hiem co ban------------------------->
                                <div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <br>
                                                <label>Gói bảo hiểm cơ bản<span class="errmsg"> *</span></label>
                                                <select class="general-dr abc" id="pack_percent" name="pack_percent">
                                                        <option id="mySelect" disabled selected>Lựa chọn gói</option>
                                                    <c:forEach items="${listPackT}" var="pt">
                                                        <option value="${pt.getPt_percent()}">${pt.getPt_percent()}%</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <!--------------------Gia tri xe------------------------->
                                            <div>
                                                <label>Giá trị xe</label>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <input value="" name="motorBrandModel-price" class="form-control" type="text" id="motorBrandModel-price" readonly="readonly">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input name="tax-fee" class="form-control" type="text" id="tax-fee"
                                                               placeholder="" readonly>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <!--------------------Muc khau tru------------------------->
                                        <div class="col-md-6">
                                            <div>
                                                <br>
                                                <label>Mức khấu trừ<span class="errmsg"> *</span></label>
                                                <select class="general-dr abc" id="deduc_percent" name="deduc_percent">
                                                    <option id="mySelect" disabled selected>Lựa chọn mức khấu trừ</option>
                                                    <c:forEach items="${listDeduc}" var="deduc">
                                                        <option value="${deduc.getDeduc_percent()}">${deduc.getDeduc_percent()}%</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <!------------------------Tong phi ------------------->
                                            <div>
                                                <label>Tổng phí</label>
                                                <input class="form-control" id="total-fee" type="text" readonly
                                                       placeholder="" name="total" value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div id="vehicle_owner_information">
                                    <h5 style="margin-top: 10px;"> <i class="fas fa-address-card"></i>Thông tin chủ xe
                                        (<span>Theo đăng kí xe</span>)</h5>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Số CCCD/CMT/Hộ chiếu</label>
                                            <input id="user_iden2" class="form-control" type="text" readonly="" value="${sessionScope.user.getUser_iden()}">
                                            <label>Tên</label>
                                            <input id="user_fullName" class="form-control" type="text" readonly="" value="${sessionScope.user.getUser_fullName()}">
                                            <label>Email</label>
                                            <input id="user_email2" class="form-control" type="email"" readonly="" value="${sessionScope.user.getUser_email()}">
                                        </div>
                                        <div class=" col-md-6">
                                            <label>Số điện thoại</label>
                                            <input id="user_phoneNum2" class="form-control" type="number" readonly value="${sessionScope.user.getUser_phoneNum()}">
                                            <label>Ngày sinh</label>
                                            <input id="user_dob2" class="form-control" type="date" readonly value="${sessionScope.user.getUser_dob()}">
                                            <label>Địa chỉ</label>
                                            <input id="user_address2" class="form-control" type="text" readonly value="${sessionScope.user.getUser_address()}">
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
                                <label>Phí</label>
                                <span id="a" style="float: right;"></span>
                            </div>
                            <div class="fee">
                                <label>Tổng phí</label>
                                <h6 id="b" style="float: right;"></h6>
                            </div>
                            <button type="submit" class="btn ">Thanh toán</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        
        <!-- JavaScript code using jQuery for the dependent dropdown -->
<!--        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>-->



    <script>
        // Initialize the car model dropdown with the default value
        updateCarModels();
        function updateCarModels() {
            var selectedBrandId = document.getElementById("motorBrands").value;
            var carModelsDropdown = document.getElementById("motorBrandModel");
            carModelsDropdown.innerHTML = "<option value=''>Lựa chọn loại xe</option>"; // Clear the current options

            // Use JSTL to loop through the listModels attribute
            <c:forEach items="${listModels}" var="model">
                if (${model.getBrand_id()} == selectedBrandId) {
                    var option = document.createElement("option");
                    option.value = "${model.getModel_price()}";
                    option.id = "${model.getModel_id()}";
                    option.innerText = "${model.getModel_name()} thuoc: ${model.getBrand_id()}";
                    carModelsDropdown.appendChild(option);
                }
            </c:forEach>
            document.getElementById("motorBrandModel-price").value = "";
       }

        // Event cap nhat gia xe vao Gia tri xe
        document.getElementById("motorBrandModel").addEventListener("change", function () {
            var selectedModelPrice = this.value;
            document.getElementById("motorBrandModel-price").value = selectedModelPrice;
            document.getElementById("motorBrandModel-price").setAttribute("value", selectedModelPrice);
        }); 
        
        
        // Function to calculate the total
        function calculateTotal() {
            var packPercent = parseFloat(document.getElementById("pack_percent").value);
            var deducPercent = parseFloat(document.getElementById("deduc_percent").value);
            var motoPrice = parseFloat(document.getElementById("motorBrandModel-price").value);
            console.log("packPercent: " + packPercent);
            console.log("deducPercent: " + deducPercent);
            console.log("motoPrice: " + motoPrice);
            if (!isNaN(packPercent) && !isNaN(deducPercent) && !isNaN(motoPrice)) {
                var total = (motoPrice * (packPercent / 100) * (1 - (deducPercent / 100)));
                document.getElementById("tax-fee").value = total;
                document.getElementById("total-fee").value = total;
            } else {
                document.getElementById("tax-fee").value = ""; // Clear the total if any of the values is not a number
                document.getElementById("total-fee").value = "";
            }
        }

        // Event listeners to trigger the calculation when the user selects options
        document.getElementById("pack_percent").addEventListener("change", calculateTotal);
        document.getElementById("deduc_percent").addEventListener("change", calculateTotal);
        document.getElementById("motorBrandModel-price").addEventListener("change", calculateTotal);

        // Initial calculation on page load
        calculateTotal();
        
        




</script>





    </body>

</html>
