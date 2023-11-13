<%-- Document : Describe_VatChat Created on : Nov 10, 2023, 11:02:42 PM Author : Dell --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
            <link rel="stylesheet" href="CSS/describle_VatChat.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
            <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
                integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
                crossorigin="anonymous" referrerpolicy="no-referrer" />
        </head>

        <body>
            <jsp:include page="Part/header.jsp"></jsp:include>
            <div class="header-main container">
                <div class="row">
                    <div class="col-md-4 header " id="sanpham">

                        <span class="title">Mô tả sản phẩm</span>

                    </div>

                    <div class="col-md-4 header " id="quyenloi">
                        <span class="title">Đối Tượng Phạm Vi</span>

                    </div>

                    <div class="col-md-4 header " id="phibaohiem">
                        <span class="title">Hướng dẫn bồi thường</span>

                    </div>
                </div>

                <div class="header-item">
                    <span style="text-align: ce;">BẢO HIỂM VẬT CHẤT XE MÁY</span>
                    <button onclick="window.location.href='HandleFormVatChat'">MUA NGAY</button>

                </div>
            </div>
            <div id="a" class=" container product-describe">
                <p>
                    Bảo hiểm vật chất cho xe máy là một loại bảo hiểm mà chủ sở hữu
                    xe máy có thể mua
                    để bảo vệ tài sản của họ. Loại bảo hiểm này thường bao gồm chi
                    phí sửa chữa hoặc thay
                    thế các thành phần của xe máy bị hỏng do tai nạn hoặc các sự
                    kiện không mong muốn khác.
                </p>

                <span class="content-item">Các thành phần và rủi ro có thể được bảo
                    hiểm trong một chính sách bảo hiểm vật chất cho xe máy có thể
                    bao gồm:</span><br />
                <ul style="padding-left: 17px; ">
                    <li>
                        <span style="font-weight: bold; color: orange;">Chạm và Tai
                            nạn:</span> Bảo hiểm có thể chi trả chi phí sửa chữa
                        hoặc thay thế nếu xe máy của bạn bị hỏng trong một tai nạn
                        hoặc va chạm với vật khác.
                    </li>
                    <li>
                        <span style="font-weight: bold; color: orange;">Hỏng hóc và
                            Hỏng động cơ: </span>Bảo hiểm có thể bao gồm chi phí sửa
                        chữa hoặc thay thế nếu các bộ phận quan trọng như động cơ,
                        hệ thống điện, hệ thống làm mát, vv. bị hỏng.
                    </li>
                    <li>
                        <span style="font-weight: bold; color: orange;">Mất cắp hoặc
                            Bị Đánh Cắp: </span>Bảo hiểm vật chất cũng có thể bảo vệ
                        chủ sở hữu xe máy nếu xe bị mất cắp hoặc bị đánh cắp.

                    </li>
                    <li>
                        <span style="font-weight: bold; color: orange;">Thiên tai và
                            Tự nhiên khác:</span> Bảo hiểm có thể cung cấp bảo vệ
                        chống lại thiên tai như lụt, động đất, lốc xoáy, hay các sự
                        kiện tự nhiên khác có thể gây hại cho xe máy.

                    </li>
                    <li>
                        <span style="font-weight: bold; color: orange;">Cháy nổ:</span>
                        Nếu xe máy của bạn cháy hoặc nổ, bảo hiểm vật chất có thể
                        giúp chi trả chi phí sửa chữa hoặc thay thế.

                    </li>
                </ul>
            </div>
            <div id="b" style="display: none; margin-bottom: 50px;" class=" container block-post">
                <div class="content-pro content-pro-line">
                    Các bên thỏa thuận và đồng ý rằng Bên mua bảo hiểm được quyền
                    lựa chọn tham gia toàn bộ hoặc từng rủi ro bảo hiểm A, B, C với
                    các quyền lợi riêng biệt dưới đây:<br>
                    <span>BẢO HIỂM MẤT TRỘM, MẤT CƯỚP TOÀN BỘ XE</span> <br>
                    I. Phạm vi bảo hiểm&nbsp;<br>
                    IMS bồi thường cho Người được bảo hiểm những thiệt hại vật chất
                    xe xảy ra do mất trộm, mất cướp trong các trường hợp sau:<br>
                    1. Mất trộm tại các điểm trông giữ xe của trường học, bệnh viện,
                    cơ quan nhà nước và tòa nhà, bãi giữ xe công cộng có giấy phép
                    do cơ quan nhà nước có thẩm quyền cấp phép đồng thời có phát
                    phiếu giữ xe.<br>
                    2. Nhà, nơi cư trú bị trộm cướp đột nhập, cạy phá có dấu vết để
                    lại và/hoặc bị tấn công hoặc đe dọa tấn công bằng vũ lực.<br>
                    3. Bị cướp (có xác nhận của Cơ quan Công an).<br>
                    Trong mọi trường hợp, tổng số tiền bồi thường của IMS không vượt
                    quá số tiền bảo hiểm đã ghi trên Hợp đồng bảo hiểm/ Giấy chứng
                    nhận bảo hiểm.<br>
                    B. BẢO HIỂM CHÁY, NỔ<br>
                    I. Phạm vi bảo hiểm&nbsp;<br>
                    IMS bồi thường cho Người được bảo hiểm những thiệt hại vật chất
                    xe xảy ra do hỏa hoạn, cháy, nổ.<br>
                    Trong mọi trường hợp, tổng số tiền bồi thường của IMS không vượt
                    quá số tiền bảo hiểm và/hoặc giá trị bảo hiểm đã ghi trên Hợp
                    đồng bảo hiểm/ Giấy chứng nhận bảo hiểm.<br>
                    C. BẢO HIỂM DO CÁC NGUYÊN NHÂN KHÁC<br>
                    I. Phạm vi bảo hiểm&nbsp;<br>
                    IMS bồi thường cho Người được bảo hiểm những thiệt hại vật chất
                    xe xảy ra do tai nạn bất ngờ, ngoài sự kiểm soát của Người được
                    bảo hiểm, Người điều khiển xe trong những trường hợp sau đây:<br>
                    1. Đâm, va, lật, đổ, chìm, rơi toàn bộ xe;<br>
                    2. Những tai nạn bất khả kháng do thiên nhiên gây ra: (như bão,
                    lũ lụt, sạt lở, sét đánh, động đất, mưa đá, sóng thần...);<br>
                    3. Vật thể từ bên ngoài tác động lên xe.<br>
                    Ngoài ra, IMS còn thanh toán những chi phí cần thiết và hợp lý
                    phát sinh trong tai nạn thuộc pham vi bảo hiểm nhằm:<br>
                    - Ngăn ngừa, hạn chế tổn thất phát sinh thêm, bảo vệ và đưa xe
                    thiệt hại tới nơi sửa chữa gần nhất nhưng tối đa không vượt quá
                    10% số tiền bảo hiểm;<br>
                    - Chi phí giám định tổn thất nếu thuộc phạm vi bảo hiểm.<br>
                    Trong mọi trường hợp, tổng số tiền bồi thường của IMS không vượt
                    quá số tiền bảo hiểm đã ghi trên Hợp đồng bảo hiểm/ Giấy chứng
                    nhận bảo hiểm.
                </div>

            </div>
            <div style="display: none; margin-bottom: 50px;" id="c">

                <div data-id="XE2BL" class="container">
                    <div class="content-pro content-pro-line">
                        Khi xảy ra tổn thất cần giữ nguyên hiện trường, áp dụng các
                        biện pháp cứu chữa thương tổn về người và hạn chế các tổn
                        thất, thiệt hại về tài sản. Báo ngay cho cảnh sát giao thông
                        hoặc cơ quan công an, chính quyền địa phương để phối hợp
                        giải quyết tai nạn, gọi ngay hotline trên giấy chứng nhận
                        bảo hiểm hoặc tổng đài CSKH 1900558891, thông báo tổn thất
                        và nhận hướng dẫn cụ thể.<br>
                        1. Tài liệu do Người được bảo hiểm cung cấp:<br>
                        a) Thông báo tổn thất và yêu cầu bồi thường (theo mẫu của
                        IMS);<br>
                        b) Tài liệu liên quan đến xe, người điều khiển xe (bản sao
                        có xác nhận của cơ quan có thẩm quyền hoặc bản photocopy có
                        xác nhận của nhân viên IMS sau khi đã đối chiếu với bản
                        chính) như sau:&nbsp;<br>
                        - Giấy chứng nhận bảo hiểm và/hoặc Hợp đồng bảo hiểm và các
                        thỏa thuận khác bằng văn bản (nếu có);<br>
                        - Giấy đăng ký xe, Giấy phép lái xe hợp lệ của người điều
                        khiển xe bị tổn thất;&nbsp;<br>
                        - Các giấy tờ liên quan đến mua bán, chuyển nhượng, cho,
                        tặng, uỷ quyền sử dụng xe (nếu có);<br>
                        c) Tài liệu chứng minh thiệt hại về tài sản, bao gồm:<br>
                        - Hóa đơn, chứng từ hợp lệ về việc sửa chữa, thay mới tài
                        sản bị thiệt hại.<br>
                        - Các giấy tờ chứng minh chi phí cần thiết và hợp lý mà
                        Người được bảo hiểm đã chi ra để giảm thiểu tổn thất hay để
                        thực hiện theo chỉ dẫn của IMS.<br>
                        d) Các chứng từ xác định thiệt hại về người, bao gồm: Chứng
                        từ y tế xác định tình trạng thương tích của nạn nhân như: Hồ
                        sơ bệnh án; Giấy chứng thương; Giấy chứng nhận phẫu thuật;
                        Giấy ra viện; Giấy chứng tử (trường hợp chết); Biên lai thu
                        tiền …<br>
                        e) Biên bản thỏa thuận/hòa giải (trong trường hợp hòa giải);<br>
                        f) Bản án hoặc Quyết định có hiệu lực của Tòa án (nếu có);<br>
                        g) Các tài liệu cần thiết để chuyển quyền cho IMS đòi bồi
                        thường từ bên gây thiệt hại cho xe được bảo hiểm mà Người
                        được bảo hiểm đã được IMS giải quyết bồi thường thiệt hại
                        này (trong trường hợp đòi Bên thứ ba).<br>
                        2. Tài liệu do IMS phối hợp với Người được bảo hiểm để thu
                        thập:<br>
                        a) Bản sao có xác nhận của cơ quan công an trong trường hợp
                        tai nạn có sự tham gia giải quyết của cơ quan công an, bao
                        gồm:<br>
                        - Biên bản khám nghiệm hiện trường vụ tai nạn;<br>
                        - Sơ đồ hiện trường tai nạn, bản ảnh;<br>
                        - Biên bản khám nghiệm phương tiện liên quan đến tai nạn;<br>
                        - Thông báo sơ bộ kết quả điều tra ban đầu vụ tai nạn (nếu
                        có);<br>
                        - Biên bản giải quyết tai nạn; Bản kết luận điều tra tai
                        nạn;<br>
                        b) Các tài liệu liên quan đến trách nhiệm của người thứ ba
                        (nếu có);<br>
                        c) Biên bản giám định thiệt hại được các bên thống nhất;<br>
                        3. Các tài liệu khác có liên quan (nếu có).<br>
                        4. Trường hợp xe bị mất trộm, mất cướp toàn bộ, Người được
                        bảo hiểm phải cung cấp cho IMS tài liệu sau:<br>
                        - Đơn trình báo mất trộm, mất cướp có xác nhận của cơ quan
                        Công an có thẩm quyền;<br>
                        - Quyết định khởi tố và điều tra hình sự (nếu có) liên quan
                        đến mất trộm, mất cướp xe mô tô - xe máy được bảo hiểm;<br>
                        - Quyết định đình chỉ điều tra, đình chỉ khởi tố vụ án hình
                        sự liên quan đến mất trộm, mất cướp xe mô tô – xe máy được
                        bảo hiểm (nếu có);<br>
                        - Khai báo bị mất giấy tờ, tài liệu liên quan đến xe bị mất
                        trộm, mất cướp khi để trên xe có xác nhận của cơ quan công
                        an (nếu có).
                    </div>
                </div>

            </div>

            <script>
                document.getElementById('sanpham').addEventListener('click', function () {
                    document.getElementById('a').style.display = 'block';
                    // document.getElementById('d').style.position = 'fixed';
                    // document.getElementById('d').style.bottom = '0';
                    document.getElementById('b').style.display = 'none';
                    document.getElementById('c').style.display = 'none';
                });

                document.getElementById('quyenloi').addEventListener('click', function () {
                    document.getElementById('b').style.display = 'block';
                    document.getElementById('a').style.display = 'none';
                    document.getElementById('c').style.display = 'none';
                });

                document.getElementById('phibaohiem').addEventListener('click', function () {
                    document.getElementById('c').style.display = 'block';
                    document.getElementById('a').style.display = 'none';
                    document.getElementById('b').style.display = 'none';
                });
            </script>
        </body>

        </html>