<%-- 
    Document   : BillOfInsuranceTNDS
    Created on : Oct 17, 2023, 8:45:35 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <p class="p_title text_right" id="currentDate"></p>
              </div>
            </div>
            <div class="i_row">
              <div class="i_number">
                <p class="p_title">CONTRACT NO: 3452324</p>
              </div>
              <div class="i_address text_right">
                <p>TO</p>
                <p class="p_title">
                  Tên user <br />
                  <span>Adress</span><br />
                  
                </p>
              </div>
            </div>
          </div>
          <div class="body">
            <div class="i_table">
              <div class="info" style="font-size: 17px; ">
                <p>Họ tên khách hàng: Đỗ Đức Thiện</p>
                <p>Thời gian bắt đầu: 2023</p>
                <p>Thời gian kết thúc: 2023</p>
                <p>Loại xe:</p>
                <p>Loại xe:</p>
                <p>Số máy:</p>
                <p>Số khung:</p>
                <p>Mức chịu trách nhiệm:</p>
                <p>Số người:</p>
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
                    <p style="font-size: 15px;"><span>Tổng phí:</span>
                      <span>$165.00</span>
                    </p>
                  </div>
                  
                </div>
                <div style="margin-top: 0;" class="i_row grand_total_wrap">
                  <div style="width: 71%;">
                  </div>
                  <button style ="border: none; border-radius: 5px; width: 120px;" class="i_col  grand_total">
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
        // Tạo một đối tượng Date
        const currentDate = new Date();

        // Lấy ngày, tháng và năm
        const day = currentDate.getDate();
        const month = currentDate.getMonth() + 1; // Tháng bắt đầu từ 0
        const year = currentDate.getFullYear();

        // Hiển thị ngày tháng năm trong định dạng mong muốn
        const formattedDate = `${day}/${month}/${year}`;
        document.getElementById('currentDate').innerText = formattedDate;
    </script>
    </body>
</html>
