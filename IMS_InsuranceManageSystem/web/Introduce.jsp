<%-- 
    Document   : Introduce
    Created on : Nov 10, 2023, 11:46:25 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="CSS/introduce.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
         <jsp:include page="Part/header.jsp"></jsp:include>
         <div style="margin-top: 100px" class="container">
        <div class="row header-main">
                <div class="col-md-6 header " id="introduce">

                    <span class="title">
                        <i class="fa-solid fa-circle-info" style="color: orange; margin-right: 10px;"></i>
                        GIỚI THIỆU
                    </span>

                </div>

                <div class="col-md-6 header " id="contact">
                    <span class="title">
                        <i class="fa-solid fa-user-group" style="color: orange; margin-right: 10px;"></i>
                        LIÊN HỆ
                    </span>

                </div>

            </div>

            <div class="row " id="a">
                <div class="tab-pane fade active show info" id="about" role="tabpanel" aria-labelledby="about-tab">
                    <div class="wraper-content-page-detail">
                        <ul class="node-info-order row-item">
                            <li style="list-style: none">
                                <div id="MainContent_DetailContent" class="c2 clearfix">
                                    <h2><span><strong>Giới thiệu kênh bảo hiểm trực tuyến</strong></span></h2>
                                    <p><span>IMS.vn là trang web bán lẻ trực tuyến các sản phẩm bảo hiểm của Tổng công ty Cổ phần Bảo hiểm (MIC), hướng tới các nhu cầu cá nhân, sẵn sàng phục vụ 24/7 để tiết kiệm thời gian, công sức cho Quý khách hàng IMS.vn kỳ vọng mang lại những lợi ích sau cho quý khách hàng:</span></p>
                                    <p class="title-content"><strong>1. Đơn giản và tiện lợi</strong></p>
                                    <p><span>Với IMS.vn những khách hàng bận rộn sẽ không còn phải mất thời gian khi có nhu cầu mua bảo hiểm. Qúy khách có hợp đồng bảo hiểm ô tô đã hết hạn, hay quý khách chuẩn bị đi du lịch, đi công tác nước ngoài cần mua bảo hiểm du lịch. Chỉ với một vài thao tác đơn giản, từ giao diện tới danh mục sản phẩm, từ truy cập tới thanh toán. Mỗi khi bạn cần, IMS.vn đã sẵn sàng để giúp bạn dễ dàng có được sản phẩm bạn muốn.</span></p>
                                    <p>
                                        <span  class="title-content"><strong>2. Tin cậy và an toàn</strong>&nbsp;</span><br>
                                        <span>Với IMS.vn tính riêng tư và quyền tự do lựa chọn của quý khách được bảo đảm ở mức cao nhất. Quý khách chỉ đơn giản vào trang web, tìm hiểu các thông tin chung sản phẩm bảo hiểm, các điều khoản điều kiện, quyền lợi bảo hiểm, mức phí, cân nhắc và đặt mua với những quyền lợi cũng như mức phí phù hợp với mình.&nbsp;<strong class="title-content">Sản phẩm tin cậy và hiệu quả, thanh toán đơn giản và an toàn.</strong></span>
                                    </p>
                                    <p>
                                        <span  class="title-content"><strong>3. Tiết kiệm chi phí</strong>&nbsp;</span><br>
                                        <span>IMS.vn là kênh bán hàng trực tiếp từ IMS tới khách hàng. Do phương thức bán hàng trực tiếp nên kênh bán này bỏ qua tất cả các chi phí trung gian, từ đó tạo cho chúng tôi khả năng đưa ra mức phí cạnh tranh hơn so với các kênh bán hàng truyền thống khác, chúng tôi chuyển những lợi ích từ việc tiết kiệm được chi phí này đến cho quý khách hàng.</span>
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div style="display: none;" class="row " id="b">
                <div class="wraper-content-page-detail info">
                    <h2><strong>Tổng công ty Cổ phần Bảo hiểm  - IMS</strong></h2>
                    <p>
                        Hội sở: Tầng 5-6, tòa nhà MB, số 21 Cát Linh, Phường Cát Linh, Quận Đống Đa, Hà Nội<br>
                        <b class="title-content">Điện thoại:</b>  024 6285 3388<br>
                        <b class="title-content">Fax:</b> 024.6285 3366
                <br>
                        <b class="title-content">Email:</b> info@mic.vn
                <b class="title-content">Web:</b> www.IMS.vn
                    </p>
                </div>
            </div>
    </div>
    
   
    <script>
        document.getElementById('introduce').addEventListener('click', function() {
       document.getElementById('a').style.display = 'block';
       
       document.getElementById('b').style.display = 'none';
     
   });

   document.getElementById('contact').addEventListener('click', function() {
       document.getElementById('b').style.display = 'block';
       document.getElementById('a').style.display = 'none';
       
   });

  
   </script>
    </body>
</html>
