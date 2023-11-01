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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-
              iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/Zpi
              Bw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

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
                                            <div class="card text-dark h-100 fade-yellow">
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
                                            <div class="card text-dark h-100 fade-yellow">
                                                 <h3 style="color: black !important; text-align: center; margin-top: 10px; font-weight: bold;">CÔNG TY CỔ PHẦN BẢO HIỂM G5</h3>
                                                 <p style="text-align: center">xxxxxxxxxxxxxxx</p>

                                                 
                                                 <h2 style="text-align: center; font-weight: bold;">
                                                     GIẤY CHỨNG NHẬN <br>
                                                     BẢO HIỂM BẮT BUỘC TNDS<br>
                                                     CỦA CHỦ XE MÔ TÔ - XE MÁY
                                                 </h2>
                                            </div>
                                        </div>

                                        <div class="col-md-6 mb-3" style="height: 300px; width: 600px;">
                                            <div class="card text-dark h-100 fade-yellow" style="font-size: 16px; line-height: 5px;">
                                                
                                                <p style="margin-left: 10px; margin-right: 10px; margin-top: 10px;">
                                                    CHỦ XE:...
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    ĐỊA CHỈ::...
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    CHỦ XE:...
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    ĐIỆN THOẠI:...
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    SỐ BIỂN KIỂM SOÁT:...
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    SỐ KHUNG:...
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    SỐ MÁY:...
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    LOẠI XE:  
                                                    Trên 50cc<input type="checkbox">  
                                                    50cc trở xuống<input type="checkbox">
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    XE MÔ TÔ 3 BÁNH TƯƠNG TỰ <input type="checkbox"> 
                                                </p>
                                                
                                                <p class="fade-red-text" style="margin-left: 10px; margin-right: 10px;">
                                                    1. MỨC TNDS ĐỐI VỚI NGƯỜI THỨ BA
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Về người:
                                                    - Về tài sản:
                                                </p>
                                                 
                                                <p class="fade-red-text" style="margin-left: 10px; margin-right: 10px;">
                                                    2. THỜI HẠN BẢO HIỂM
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    Từ ngày...tháng....năm 20..
                                                    Đến ngày...tháng....năm 20..
                                                </p>
                                                
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6 mb-3" style="height: 300px; width: 600px;">
                                            <div class="card text-dark h-100 fade-yellow" style="font-size: 16px; line-height: 5px;">
                                                
                                                <p class="fade-red-text" style="margin-left: 10px; margin-right: 10px; margin-top: 10px;">
                                                    3. PHÍ BẢO HIỂM
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Xe 50 cc trở xuống: 55.000 đồng
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Xe trên 50cc: 60.000 đồng
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Xe mô tô 3 bánh và tương tự: 290.000 đồng
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    Phí bảo hiểm phải nộp (có VAT):.....đồng
                                                </p>
                                                
                                                <p style="margin-left: 10px; margin-right: 10px;">
                                                    - Ngày nộp: Ngày.... tháng.... năm....
                                                </p>
                                                
                                                <p class="fade-red-text" style="margin-left: 10px; margin-right: 10px; margin-top: 10px;">
                                                    4. NGƯỜI CẤP
                                                    - Đại lý <input type="checkbox">
                                                    - Hình thức khác <input type="checkbox" checked>
                                                </p>
                                                
                                                <div style="margin-left: 100px; margin-right: 10px; text-align: center;">
                                                    <p>
                                                        Cấp ngày... tháng... năm 20..
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


    <!--Jquery-->
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- quan trong cua dropdowntable -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
    <!--<script src="JS/script.js"></script>-->
    
    
 
    
</body>

</html>