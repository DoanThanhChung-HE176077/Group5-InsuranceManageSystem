<%-- 
    Document   : BillOfInsuranceTNDS
    Created on : Oct 17, 2023, 8:45:35 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/BillOfTnds.css"/>
    </head>
    <body>
        <section>
            <div class="invoice">
                <div class="top_line"></div>
                <div class="header">
                    <div class="i_row">
                        <div class="i_logo">
                            <p>IMS </p>
                        </div>
                        <div class="i_title">
                            <h2>Bảo hiểm về xe máy</h2>

                        </div>
                    </div>
                    <div class="i_row">
                        <div class="i_number">
                            <p class="p_title">CONTRACT NO:${requestScope.obj.getFvc_id()}</p>
                        </div>

                    </div>
                </div>
                <div class="body">
                    <div class="i_table">
                        <div class="info" style="font-size: 17px; ">
                            <p>Họ tên khách hàng: ${requestScope.user.user_fullName}</p>

                            <p>Thời gian bắt đầu: ${requestScope.startDate}</p>

                            <p>Thời gian kết thúc:  ${requestScope.endDate}</p>
                            <p>Hãng xe:  ${requestScope.hangXe}</p>
                            <p>Hiệu xe: ${requestScope.hieuXe}</p>
                            <p>Biển xe: ${requestScope.obj.fvc_deviceNum}</p>
                            <p>Số máy: ${requestScope.obj.fvc_deviceChassisNum}</p>
                            <p>Số khung: ${requestScope.obj.fvc_licensePlates}</p>
                            <p>Gói bảo hiểm cơ bản:${requestScope.pk}%</p>
                            <p>Mức khấu trừ:${requestScope.deduct}%</p>
                        </div>

                        <div class="i_table_foot">
                            <div class="i_row">
                                <div class="i_col w_15">
                                    <p></p>
                                </div>
                                <div class="i_col w_55">
                                    <p></p>
                                </div>
                                <!-- <div class="i_col w_15">
                                  <p>Phí</p>
                                  <p>Thuế </p>
                                </div>
                                <div class="i_col w_15">
                                  <p>$150.00</p>
                                  <p>$15.00</p>
                                </div> -->
                            </div>
                            <div class="i_row grand_total_wrap">
                                <div style="width: 70%;">
                                </div>

                                <div style ="border: none; border-radius: 5px; margin-left: 30%;" class="i_col w_50">
                                    <p style="font-size: 15px;"><span>Tổng phí: </span>
                                    <div style="display: inline" id="totalPrice" data-total="${requestScope.obj.getTotalPrice()}">
                                       
                                        <!-- Display the total price without formatting -->
                                        <span  style="font-size: 15px; font-weight: bold;display: inline">${requestScope.obj.getTotalPrice()}</span ><span style="font-size: 15px; font-weight: bold;display: inline">VND</span>
                                    </div>

                                    </p>
                                </div>

                            </div>
                            <div style="margin-top: 0;" class="i_row grand_total_wrap">
                                <div style="width: 71%;">
                                </div>
                                <button onclick="goToHome()"  style ="border: none; border-radius: 5px; width: 120px;" class="i_col  grand_total">
                                    <p style="font-size: 15px;"><span>Hoàn thành</span>

                                    </p>
                                </button  >

                            </div>
                        </div>
                    </div>
                </div>


                <div class="footer">
                    <div class="i_row">
                        <div class="i_col w_50">
                            <p class="p_title">Công ty TNHH IMS</p>
                            <p>Cảm ơn quý khách sử dụng dịch vụ công ty chúng tôi.Nếu có gì thắc mắc, liên hệ tới HotLine:0373704672</p>
                        </div>
                        <div class="i_col w_50 text_right">
                            <p class="p_title">Chú ý</p>
                            <p>Hợp đồng có hiệu lực từ ngày kích hoạt</p>
                        </div>
                    </div>
                </div>
                <div class="bottom_line"></div>
            </div>
        </section>
        <script>
              // Your JavaScript code for formatting the total price
        var totalPriceElement = document.getElementById('totalPrice');
        var total = parseFloat(totalPriceElement.getAttribute('data-total'));

        // Format the total price (assuming you want to use commas as the thousands separator)
        var formattedTotal = new Intl.NumberFormat('en-US').format(total);

        // Update the span with the formatted total price
        totalPriceElement.querySelector('span').innerText = formattedTotal;
        
          function goToHome() {
        // Chuyển hướng về trang Home
        window.location.href = '/IMS_InsuranceManageSystem'; // Thay đổi '/path/to/home' bằng đường dẫn thực tế của trang Home
    }
        </script>
    </body>
</html>
