

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết hợp đồng</title>
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

        <!-- bootstrap5 5icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

        <link rel="stylesheet" href="CSS/admin_blog_dashboard.css"/>
        
    </head>
    <body>

        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>


            <!--sidebar-->
        <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>





            <!-- ---------------------------------------------------------------------------------------------------------------------------- -->



<div class="container-fluid">
    <div class="row">
        <div class="col min-vh-100 p-4">
            <div class="container mt-5">

                <div class="my-row row">

                    <!-- Column 1: Chi tiết người dùng -->
                    <div class="my-column1 col-md-12">
                        <h2 style="display: inline-block;margin-left: 15% ">Chi tiết hợp đồng</h2>
                        <button class="btn btn-success mb-3" style="margin-left: 200px;">
                            <a href="Admin_Contract_list" style="text-decoration: none; color: #fff;">Quay lại</a>
                        </button>
                    </div>
                        
                        <!-- Danh sách chi tiết người dùng -->
                    <c:if test="${contract.nameip eq 'Bảo hiểm TNDS'}" >
                        <div class="my-column1 col-md-6">
    <div class="column" style="flex: 1; padding: 10px;">
        <li class="list-group-item">
            <span class="detail-label">Khách hàng:</span>
            <span>${contract.fullname}</span>
        </li>
        <li class="list-group-item">
            <span class="detail-label">Mã hợp đồng:</span>
            <span>${contract.tnds_id}</span>
        </li>
        <li class="list-group-item">
            <span class="detail-label">Loại hợp đồng:</span>
            <span>${contract.nameip}</span>
        </li>
        <li class="list-group-item">
            <span class="detail-label">Loại xe:</span>
            <span>${contract.loaixe}</span>
        </li>
        <li class="list-group-item">
            <span class="detail-label">Số máy:</span>
            <span>${contract.somay}</span>
        </li>
        <li class="list-group-item">
            <span class="detail-label">Biển xe:</span>
            <span>${contract.bienxe}</span>
        </li>
        <li class="list-group-item">
            <span class="detail-label">Số khung:</span>
            <span>${contract.sokhung}</span>
        </li>
         <li class="list-group-item">
            <span class="detail-label">Mức trách nhiệm:</span>
            <span>${contract.muctrachnhiem}</span>
        </li>
        <li class="list-group-item">
            <span class="detail-label">Số người:</span>
            <span>${contract.songuoi}</span>
        </li>           
    </div>
                    </div>
        <div class="my-column1 col-md-6">
    <div class="column" style="flex: 1; padding: 10px;">
        
        <li class="list-group-item">
            <span class="detail-label">Ngày bắt đầu:</span>
            <span class="date-column">${contract.ngaybd}</span>
        </li>
        <li class="list-group-item">
            <span class="detail-label">Ngày kết thúc:</span>
            <span class="date-column">${contract.ngaykt}</span>
        </li>
        
        <li class="list-group-item">
            <span class="detail-label">Tổng chi phí:</span>
            <span>${contract.tongchiphi}</span>
        </li>
        <li class="list-group-item">
            <span class="detail-label">Trạng thái:</span>
            <span>${contract.trangthai}</span>
        </li>
    </div>



                            </c:if>
                            
                          <c:if test="${contract.nameip eq 'Bảo hiểm vật chất'}" >
                        <div class="my-column1 col-md-6">
                              <ul class="list-group">
                            <li class="list-group-item">
                                <span class="detail-label">Khách hàng:</span>
                                <span>${contract.fullname}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Mã hợp đồng:</span>
                                <span>${contract.vatchat_id}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Loại hợp đồng:</span>
                                <span>${contract.nameip}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Hãng xe:</span>
                                <span>${contract.hangxe}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Hiệu xe:</span>
                                <span>${contract.hieuxe}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Số máy:</span>
                                <span>${contract.somay}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Biển kiểm soát:</span>
                                <span>${contract.bienkiemsoat}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Số khung:</span>
                                <span>${contract.sokhung}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Gói bảo hiểm cơ bản:</span>
                                <span>${contract.goibhcb}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Mức khấu trừ:</span>
                                <span>${contract.muckhautru}</span>
                            </li>
                        </div>
                            <div class="my-column1 col-md-6">
                            <li class="list-group-item">
                                <span class="detail-label">Ngày bắt đầu:</span>
                                <span class="date-column">${contract.ngaybd}</span>
                            </li>
                            <li class="list-group-item">
                                <span class="detail-label">Ngày kết thúc:</span>
                                <span class="date-column">${contract.ngaykt}</span>
                            </li>
                            
                            <li class="list-group-item">
    <span class="detail-label">Tổng chi phí:</span>
                                <span>${contract.tongchiphi}</span>
</li>
                            <li class="list-group-item">
                                <span class="detail-label">Trạng thái:</span>
                                <span>${contract.trangthai}</span>
                            </li>
                            </div>
                            
                       
                            </c:if>  
                            
                            
                    </div>
                            
                    
                </div>
            </div>
        </div>
    </div>
</div>








        <!-- quan trong cua dropdowntable -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script>
    // Chuyển đổi định dạng ngày trong tất cả các phần tử trong cột "date-column"
    document.querySelectorAll('.date-column').forEach(function (element) {
        var originalDate = element.textContent; // Lấy ngày ban đầu
        var formattedDate = formatDate(originalDate); // Gọi hàm formatDate để chuyển đổi định dạng
        element.textContent = formattedDate; // Hiển thị ngày đã được định dạng
    });

    // Hàm để chuyển đổi định dạng ngày (VD: từ "YYYY-MM-DD" thành "DD/MM/YYYY")
    function formatDate(inputDate) {
        var dateParts = inputDate.split('-');
        if (dateParts.length === 3) {
            var year = dateParts[0];
            var month = dateParts[1];
            var day = dateParts[2];
            return day + '/' + month + '/' + year;
        }
        return inputDate; // Trả về nguyên dạng nếu không thể chuyển đổi
    }
</script>
<script>
    // Lấy tất cả các phần tử <span> chứa trạng thái từ các phần tử có class "detail-label"
var trangThaiSpans = document.querySelectorAll('.detail-label + span');

// Duyệt qua từng phần tử và kiểm tra trạng thái
for (var i = 0; i < trangThaiSpans.length; i++) {
    if (trangThaiSpans[i].textContent === 'paid') {
        // Nếu trạng thái là "paid", thay đổi nội dung thành "đã thanh toán"
        trangThaiSpans[i].textContent = 'Đã thanh toán';
    }
    else if (trangThaiSpans[i].textContent === 'unpaid'){
        trangThaiSpans[i].textContent = 'Chưa thanh toán';
    }
}

</script>

    </body>
</html>
