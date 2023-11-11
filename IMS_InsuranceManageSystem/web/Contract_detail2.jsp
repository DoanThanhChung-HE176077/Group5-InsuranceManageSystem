<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/sidebar.css">
    <title>User Panel</title>

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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- font ăesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <!-- bootstrap5 5icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        
        <!-- boxincon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        
        <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
        
        <style>
            * {
                font-family: "Times New Roman", Times, serif !important;
            }
            
            .fade-yellow {
                background-color: #f5df51;
            }
            
            .super-fade-yellow {
                background-color: #fcfceb;
            }
            
            .fade-red-text{
                color: #f53b3b !important;
            }
            
            .card {
                border-radius: 0px;
                border: solid 3px black;
            }
            
            .stats {
                font-size: 18px;
                position: absolute;
                top: 20px;
            }
            
            .card-i {
                margin-top: 10px;
                margin-right: 10px;
            }
            
            .right-info {
                font-weight: bold;
            }
        </style>

</head>

<body>


    
    <div class="container-fluid">
                <div class="row">
                    <div class="col min-vh-100 p-4">
                        <div class="container mt-5">

                            <div class="my-row row">

                                <div class="my-column1 col-md-12">

                                    <div class="row" style="margin-top: 20px;">

                                        
                                        <div class="col-md-6 mb-3" style="height: 300px; width: 600px;">
                                            <div class="card text-dark h-100 super-fade-yellow">
                                                <h4 class="fade-red-text" style="text-align: center; margin-top: 10px; font-weight: bold;">LƯU Ý ĐỐI VỚI CHỦ XE, LÁI XE</h4>
                                                 
                                                <p style="margin-left: 10px; margin-right: 10px; font-size: 16px; text-align: justify;">
                                                    <i>1. Giấy chứng nhận bảo hiểm này được cấp theo Thông tư số
                                                    2016/TT-BTC ngày 16 tháng 02 năm 2016 của Bộ Tài Chính
                                                    quy định Quy tắc, điều khoản, biểu phí và mức trách nhiệm bảo
                                                    hiểm bắt buộc TNDS của chủ xe cơ giới. Chủ xe, bãi xe cần đọc
                                                    kĩ để biết được quyền lợi và nghĩa vụ của mình khi tham gia
                                                    bảo hiểm.<br>
                                                    2. Khi sử dụng xe, luôn mang theo GCN bảo hiểm này để xuất
                                                    trình khi cơ quan có thẩm quyền yêu cẩu.
                                                    3. Khi tai nạn giao thông xảy ra, phải có trách nhiệm:<br>
                                                    - Áp dụng mọi biện pháp để cứu chữa người và tài sản.<br>
                                                    Báo ngay cho cơ quan Công an (hoặc chính quyền địa phương)<br>
                                                    nơi gần nhất và doanh nghiệp bảo hiểm.</i>
                                                 </p>
                                                 
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6 mb-3" style="height: 300px; width: 600px;">
                                            <div class="card text-dark h-100 super-fade-yellow">
                                                 <h3 style="color: black !important; text-align: center; margin-top: 10px; font-weight: bold;">CÔNG TY CỔ PHẦN BẢO HIỂM G5</h3>
                                                 <p style="text-align: center">xxxxxxxxxxxxxxx</p>

                                                 
                                                 <h2 style="text-align: center; font-weight: bold; color: black !important;">
                                                     GIẤY CHỨNG NHẬN <br>
                                                     BẢO HIỂM THIỆT HẠI VẬT CHẤT<br>
                                                     CỦA CHỦ XE MÔ TÔ - XE MÁY
                                                 </h2>
                                            </div>
                                        </div>

                                        <div class="col-md-6 mb-3" style="height: 300px; width: 600px;">
                                            <div class="card text-dark h-100 super-fade-yellow" style="font-size: 16px; line-height: 5px;">
                                                
                                                <p style="margin-left: 10px; margin-right: 10px; margin-top: 10px;">
                                                    CHỦ XE: ${contract.fullname}
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    ĐỊA CHỈ: ${userContract.user_address}
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    ĐIỆN THOẠI: ${userContract.user_phoneNum}
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    SỐ BIỂN KIỂM SOÁT: ${contract.bienkiemsoat}
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    SỐ KHUNG: ${contract.sokhung}
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    SỐ MÁY: ${contract.somay}
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    HÃNG XE:  ${contract.hangxe}
<!--                                                    Trên 50cc<input type="checkbox">  
                                                    50cc trở xuống<input type="checkbox">-->
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    HIỆU XE: ${contract.hieuxe}
                                                </p>
                                                
                                                <p class="fade-red-text" style="margin-left: 10px; margin-right: 10px;">
                                                    1. PHẠM VI BẢO HIỂM
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Gói bảo hiểm cơ bản: ${contract.goibhcb} %
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Mức khấu trừ: ${contract.muckhautru} %
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Giá trị xe: <span class="totalPrice">${modelPrice}</span>
                                                </p>
                                                 
                                                
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6 mb-3" style="height: 300px; width: 600px;">
                                            <div class="card text-dark h-100 super-fade-yellow" style="font-size: 16px; line-height: 5px;">
                                                
                                                <p class="fade-red-text" style="margin-left: 10px; margin-right: 10px; margin-top: 10px;">
                                                    2. THỜI HẠN BẢO HIỂM
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    Từ <span class="creationDateHere" id="creationDate">${contract.ngaybd}</span>
<!--                                                    Từ ngày...tháng....năm 20..
                                                    Đến ngày...tháng....năm 20..-->
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    Đến <span class="creationDateHere" id="creationDate">${contract.ngaykt}</span>
<!--                                                    Từ ngày...tháng....năm 20..
                                                    Đến ngày...tháng....năm 20..-->
                                                </p>
                                                
                                                <p class="fade-red-text" style="margin-left: 10px; margin-right: 10px;">
                                                    3. PHÍ BẢO HIỂM
                                                </p>
                                                
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    Phí bảo hiểm phải nộp (có VAT): <span class="totalPrice2">${contract.tongchiphi}</span>
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Ngày nộp: Ngày.... tháng.... năm....
                                                </p>
                                                
                                                <p class="fade-red-text" style="margin-left: 10px; margin-right: 10px; margin-top: 10px;">
                                                    4. NGƯỜI CẤP
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Đại lý
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Hình thức khác <i class="fa-solid fa-check" style="color: #000000;"></i>
                                                </p>
                                                
                                                <div style="margin-left: 100px; margin-right: 10px; text-align: center;">
                                                    <p>
                                                        Cấp <span class="creationDateHere" id="creationDate">${contract.ngaybd}</span>
<!--                                                        Cấp ngày... tháng... năm 20..-->
                                                    </p>

                                                    <p>
                                                        CÔNG TY CP BẢO HIỂM G5
                                                    </p>
                                                </div>
                                                
                                                
                                                
                                            </div>
                                        </div>





                                    </div>


                                </div>
                    </div>
                </div>
            </div>
        </div>

        
        <!--font awesome-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js" integrity="sha512-uKQ39gEGiyUJl4AI6L+ekBdGKpGw4xJ55+xyJG7YFlJokPNYegn9KwQ3P8A7aFQAUtUsAQHep+d/lrGqrbPIDQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!--Jquery-->
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- quan trong cua dropdowntable -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
    <!--<script src="JS/script.js"></script>-->
    
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
                    var newDateFormat = ' ngày ' + year  + ' tháng ' + month + ' năm ' + day;
                    dateElements[i].textContent = newDateFormat;
                }
            }
            changeDateFormat();
            
            function updatePriceFormat() {
                var tdElement = document.querySelector('.totalPrice');
                var originalValue = tdElement.innerText;
                var formattedValue = parseFloat(originalValue).toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});
                tdElement.innerText = formattedValue;
            }
            updatePriceFormat();
            
            function updatePriceFormat2() {
                var tdElement = document.querySelector('.totalPrice2');
                var originalValue = tdElement.innerText;
                var formattedValue = parseFloat(originalValue).toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});
                tdElement.innerText = formattedValue;
            }
            updatePriceFormat2();
        </script>
 
    
</body>

</html>