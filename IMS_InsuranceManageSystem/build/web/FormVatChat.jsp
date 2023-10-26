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

            /*span{
        font-size: 14px;
    }*/
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
        </style>

    </head>

    <body>
        <jsp:include page="Part/header.jsp"></jsp:include>

        <form action="saveInfoTNDS" style="margin-top: 100px ;">
            <div class="container form_TNDS">
                <div class="row">
                    <div class="col-md-8 info_motobike">
                        <div id="form_TNDS">

                            <h5><i class="fa-solid fa-car"></i> Thông tin về xe</h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <!--------------------- Hãng xe --------------------->
                                    <div>
                                        <label> Hãng xe<span class="errmsg"> *</span></label><br />
                                        <select class="general-dr abc" id="type" name="type">
                                        <c:forEach items="${listBrands}" var="o1">
                                            <option value = "${o1.getBrand_name()}">${o1.getBrand_name()}</option>
                                        </c:forEach>
                                        </select>
                                    </div>
                                    <div>
                                        <br>
                                        <!--------------------------------------------->
                                        <label>Hiệu xe <span class="errmsg"> *</span></label>
                                        <select class="general-dr abc" id="level" name="level">
                                            <c:forEach items="" var="c">
                                                <option value=""></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <!--------------------------------------------->
                                    <br>
                                    <div>
                                        <label>Số máy<span class="errmsg"> *</span></label>
                                        <input class="form-control" type="text" name="soMay">
                                    </div>
                                    <!-- <span style="color: hsl(29, 57%, 54%);">Bắt buộc cần nhập số biển kiểm soát</span> -->
                                </div>

                                <div class="col-md-6">
                                    <div>
                                        <label>Biển kiểm soát<span class="errmsg"> *</span></label>
                                        <input class="form-control" type="text" name="bienXe" required="">
                                    </div>
                                    <br>
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
                                <!--------------------------------------------->

                                <div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <br>
                                                <label>Gói bảo hiểm cơ bản<span class="errmsg"> *</span></label>
                                                <select class="general-dr abc" id="level" name="level">
                                                    <c:forEach items="${listPackT}" var="pt">
                                                        <option value="${pt.getPt_percent()}">${pt.getPt_percent()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div>
                                                <label>Giá trị xe</label>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <input name="lv-fee" class="form-control" type="text" id="lv-fee"
                                                               placeholder="" readonly>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input name="tax-fee" class="form-control" type="text" id="tax-fee"
                                                               placeholder="" readonly>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <br>
                                                <label>Mức khấu trừ<span class="errmsg"> *</span></label>
                                                <select class="general-dr abc" id="num" name="num">
                                                    <c:forEach items="${listDeduc}" var="deduc">
                                                        <option value="${deduc.getDeduc_percent()}">${deduc.getDeduc_percent()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div>
                                                <label>Tổng phí</label>
                                                <input class="form-control" id="total-fee" type="text" readonly
                                                       placeholder="" name="total">
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
                                            <input id="user_iden2" class="form-control" type="text" readonly="">
                                            <label>Tên</label>
                                            <input id="user_fullName" class="form-control" type="text" readonly="">
                                            <label>Email</label>
                                            <input id="user_email2" class="form-control" type="email"" readonly="">
                                        </div>
                                        <div class=" col-md-6">
                                            <label>Số điện thoại</label>
                                            <input id="user_phoneNum2" class="form-control" type="number" readonly>
                                            <label>Ngày sinh</label>
                                            <input id="user_dob2" class="form-control" type="date" readonly>
                                            <label>Địa chỉ</label>
                                            <input id="user_address2" class="form-control" type="text" readonly>
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
    </body>

</html>
