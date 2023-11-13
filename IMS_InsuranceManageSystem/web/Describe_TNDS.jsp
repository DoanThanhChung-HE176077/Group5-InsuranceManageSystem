<%-- Document : Describe_TNDS Created on : Nov 10, 2023, 4:41:21 PM Author : Dell --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
            <link rel="stylesheet" href="CSS/describeTNDS.css">
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
            <div class="content">
                <div class="header-main container">
                    <div class="row">
                        <div class="col-md-4 header " id="sanpham">

                            <span class="title">Mô tả sản phẩm</span>

                        </div>

                        <div class="col-md-4 header " id="quyenloi">
                            <span class="title">Quyền lợi bảo hiểm</span>

                        </div>

                        <div class="col-md-4 header " id="phibaohiem">
                            <span class="title">Phí bảo hiểm</span>

                        </div>
                    </div>

                    <div class="header-item">
                        <span style="text-align: ce;">BẢO HIỂM TNDS XE MÁY</span>
                        <button onclick="window.location.href = 'HandleFormTNDS'">MUA NGAY</button>

                    </div>
                </div>
                <div id="a" class=" container product-describe">
                    <p>
                        - Bảo hiểm trách nhiệm dân sự của chủ xe cơ giới đối với bên thứ ba là loại hình
                        bảo hiểm mà tất cả các cá nhân tổ chức (bao gồm người nước ngoài) sở hữu xe cơ
                        giới tại Việt Nam đều phải tham gia theo quy định của nhà nước, nhằm đảm bảo
                        quyền lợi cho bên thứ ba trong trường hợp nếu chẳng may chủ xe, lái xe gây thiệt hại cho họ.
                        Đồng thời tham gia bảo hiểm là bạn đã chấp hành đúng chủ trương chính sách pháp luật của Nhà
                        nước và luật giao thông đường bộ.
                    </p>

                    <span class="content-item">ĐỐI TƯỢNG ÁP DỤNG:</span><br />
                    <ul style="padding-left: 17px; ">
                        <li>

                            - Chủ xe cơ giới tham gia giao thông trên lãnh thổ nước Cộng hòa xã hội chủ nghĩa Việt Nam.
                        </li>
                        <li>
                            - Doanh nghiệp bảo hiểm được phép triển khai bảo hiểm bắt buộc trách nhiệm dân sự của chủ xe
                            cơ giới theo quy định của pháp luật
                        </li>
                        <li>
                            - Các tổ chức, cá nhân khác có liên quan đến bảo hiểm bắt buộc trách nhiệm dân sự của chủ xe
                            cơ giới.
                        </li>
                    </ul>
                </div>
                <div id="b" style="display: none;" class=" container block-post">
                    <h3 class="under-title"><span>Mức trách nhiệm bảo hiểm</span></h3>
                    <p>
                        - Mức trách nhiệm bảo hiểm là số tiền tối đa doanh nghiệp bảo hiểm có thể phải trả đối với thiệt
                        hại về thân thể, tính mạng và tài sản của bên thứ ba và hành khách do xe cơ giới gây ra trong
                        mỗi vụ tai nạn xảy ra thuộc phạm vi trách nhiệm bảo hiểm. Cụ thể như sau
                    </p>
                    <ul>
                        <li>- Mức trách nhiệm bảo hiểm đối với thiệt hại về người do xe cơ giới gây ra là 150 triệu
                            đồng/1 người/1 vụ tai nạn.</li>
                        <li>
                            - Mức trách nhiệm bảo hiểm đối với thiệt hại về tài sản do xe mô tô hai bánh, xe mô tô ba
                            bánh, xe gắn máy và các loại xe cơ giới tương tự (kể cả xe cơ giới dùng cho người tàn tật)
                            gây ra là 50 triệu đồng/1 vụ tai nạn.
                        </li>
                        <li>- Mức trách nhiệm bảo hiểm đối với thiệt hại về tài sản do xe ô tô, máy kéo, xe máy thi
                            công, xe máy nông nghiệp, lâm nghiệp và các loại xe đặc chủng khác sử dụng vào mục đích an
                            ninh, quốc phòng (kể cả rơ-moóc và sơ mi rơ-moóc được kéo bởi xe ô tô hoặc máy kéo) gây ra
                            là 100 triệu đồng/1 vụ tai nạn.</li>
                    </ul>
                    <h3 class="under-title"><span>Phạm vi bồi thường thiệt hại</span></h3>
                    <ul>
                        <li>
                            - Thiệt hại ngoài hợp đồng về thân thể, tính mạng và tài sản đối với bên thứ ba do xe cơ
                            giới gây ra.
                        </li>
                        <li>
                            - Thiệt hại về thân thể và tính mạng của hành khách theo hợp đồng vận chuyển hành khách do
                            xe cơ giới gây ra.
                        </li>
                    </ul>
                    <div>
                        <h3 class="under-title"><span>Loại trừ bảo hiểm</span></h3>
                        <p>Doanh nghiệp bảo hiểm không bồi thường thiệt hại đối với các trường hợp sau:</p>
                        <ul style="padding-left: 30px; ">
                            <li>
                                - Hành động cố ý gây thiệt hại của chủ xe, lái xe hoặc của người bị thiệt hại.
                            </li>
                            <li>
                                - Lái xe gây tai nạn cố ý bỏ chạy không thực hiện trách nhiệm dân sự của chủ xe, lái xe
                                cơ giới.
                            </li>
                            <li>
                                - Lái xe không có Giấy phép lái xe hoặc Giấy phép lái xe không phù hợp đối với loại xe
                                cơ giới bắt buộc phải có Giấy phép lái xe. Trường hợp lái xe bị tước quyền sử dụng Giấy
                                phép lái xe có thời hạn hoặc không thời hạn thì được coi là không có Giấy phép lái xe.
                            </li>
                            <li>
                                - Thiệt hại gây ra hậu quả gián tiếp như: giảm giá trị thương mại, thiệt hại gắn liền
                                với việc sử dụng và khai thác tài sản bị thiệt hại.
                            </li>
                            <li>
                                - Thiệt hại đối với tài sản bị mất cắp hoặc bị cướp trong tai nạn
                            </li>
                            <li>
                                - Chiến tranh, khủng bố, động đất.
                            </li>
                            <li>
                                - Thiệt hại đối với tài sản đặc biệt bao gồm: vàng, bạc, đá quý, các loại giấy tờ có giá
                                trị như tiền, đồ cổ, tranh ảnh quý hiếm, thi hài, hài cốt.
                            </li>
                        </ul>

                    </div>
                </div>
                <div style="display: none;" id="c">

                    <div data-id="XE2BL" class="container">
                        <div class="block-post">
                            <h3 class="under-title"><span>Phí bảo hiểm</span></h3>
                            <p>
                                - Mức phí bảo hiểm theo quy định áp dụng cho 01 năm tại phụ lục số 01 ban hành kèm theo
                                thông tư số 04/2021/TT-BTC có hiệu lực từ 01/3/2021 của Bộ Tài chính: Biểu phí BHBBTNDS
                            </p>
                            <p>
                                - Đối với các xe cơ giới được phép mua bảo hiểm có thời hạn dưới 01 năm (chi tiết các
                                trường hợp được mua bảo hiểm dưới 01 năm theo thông tư số 22/2016/TT-BTC), cách tính cụ
                                thể như sau:
                            </p>
                            <p class="tex-center">- Phí bảo hiểm năm theo loại xe cơ giới</p>
                            <div class="text-center justify-content-center d-flex align-items-center">
                                <span style="margin: 0 5px;">Phí bảo hiểm phải nộp</span><span
                                    style="margin: 0 5px;">=</span>
                                <span style="margin: 0 5px;">
                                    <div style="border-bottom: 1px solid #000;">Phí bảo hiểm năm theo loại cơ giới</div>
                                    <div>365(ngày)</div>
                                </span><span style="margin: 0 5px;">x</span>
                                <span style="margin: 0 5px;">Thời hạn được bảo hiểm (ngày)</span>
                            </div>
                            <br>
                            <p>
                                - Trường hợp thời hạn được bảo hiểm từ 30 ngày trở xuống thì phí bảo hiểm phải nộp được
                                tính bằng phí bảo hiểm năm theo loại xe cơ giới/(chia) cho 12 tháng.
                            </p>
                            <h3 class="under-title"><span>BIỂU PHÍ TRONG MỘT SỐ TRƯỜNG HỢP KHÁC</span></h3>
                            <div class="ql_tieude">
                                <b style="color:orange; ">
                                    1. Xe tập lái
                                </b>
                            </div>
                            <p>
                                - Tính bằng 120% của phí xe cùng chủng loại.
                            </p>
                            <div class="ql_tieude">
                                <b style="color:orange; ">
                                    2. Xe Taxi
                                </b>
                            </div>
                            <p>
                                - Tính bằng 170% của phí xe kinh doanh cùng số chỗ ngồi.
                            </p>
                            <div class="ql_tieude">
                                <b style="color:orange; ">
                                    3. Xe ô tô chuyên dùng
                                </b>
                            </div>
                            <ul style="padding-left: 17px; ">
                                <li>
                                    - Phí bảo hiểm của xe cứu thương được tính bằng 120% phí bảo hiểm của xe pickup
                                </li>
                                <li>
                                    - Phí bảo hiểm của xe chở tiền được tính bằng 120% phí bảo hiểm của xe dưới 6 chỗ
                                    ngồi.
                                </li>
                                <li>
                                    - Phí bảo hiểm của các loại xe chuyên dùng khác được tính bằng 120% phí bảo hiểm của
                                    xe chở hàng cùng trọng tải.
                                </li>
                            </ul>
                            <div class="ql_tieude">
                                <b style="color:orange; ">
                                    4. Đầu kéo rơ-moóc
                                </b>
                            </div>
                            <p>
                                - Tính bằng 150% của phí xe trọng tải trên 15 tấn. Phí bảo hiểm của xe đầu kéo rơ-moóc
                                là phí của cả đầu kéo và rơ-moóc
                            </p>
                            <div class="ql_tieude">
                                <b style="color:orange; ">
                                    5. Xe máy chuyên dùng
                                </b>
                            </div>
                            <p>
                                - Tính bằng 120% phí bảo hiểm của xe chở hàng dưới 3 tấn
                            </p>
                            <div class="ql_tieude">
                                <b style="color:orange; ">

                                </b>
                            </div>
                            <p>
                                - Tính bằng phí bảo hiểm của xe không kinh doanh vận tải cùng số chỗ ngồi.
                            </p>
                        </div>
                    </div>


                </div>







            </div>
        </body>

        <script>
            document.getElementById('sanpham').addEventListener('click', function () {
                document.getElementById('a').style.display = 'block';

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

        </html>