<%-- 
    Document   : Blog_detail
    Created on : Oct 7, 2023, 5:38:37 PM
    Author     : chun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- bootstrap 4-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>


        <!-- bootstrap5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>

        <!-- boxincon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

        <style>
            body{
                margin-top: 150px !important;
                 background-color: #fdd12d !important;

            }
          .container {
            background-color: #fff;
            border-radius: 35px;
            box-shadow: 5px 10px 50px #555;
        }
            .myp {
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
                max-width: calc(15 * 1em);
                /* Số từ cần in ra lần độ rộng của từ */
            }

            .myp::before {
                content: attr(data-text);
                /* Lấy nội dung gốc từ thuộc tính data-text */
                display: inline;
            }

            /* piture css  */
            .fixed-image-container {
                max-width: 100%;
                overflow: hidden;
                margin-top: 20px;
                position: relative;
                border: 1px solid #ccc;
            }

            /* CSS for the fixed image */
            #fixed-image {
                width: 100%;
                height: auto;
                position: relative;
                border: 1px solid #000;

            }
        </style>
    </head>
    <body>
        
         <jsp:include page="Part/header.jsp"></jsp:include>

        <!-- Timeline -->
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-3">

                </div>
                <div class="col-md-7" style="margin-top: 50px;">
                    <h1>LĨNH VỰC BẢO HIỂM Y TẾ NÂNG CAO HIỆU QUẢ QUẢN LÝ, SỬ DỤNG QUỸ KHÁM, CHỮA BỆNH BHYT.</h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
            <div class="row">
                <div class="col-md-3">

                </div>
                <div class="col-md-7">
                    <p style="margin-bottom: 6px;">Ngày đăng: 10/06/2023</p>
                    <i class='bx bx-purchase-tag-alt'style="margin-bottom: 10px;">Sức khỏe</i>
                </div>
                <div class="col-md-2">
                    <p style="text-align: right;">Lượt xem: 100</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="list-group" id="timeline" style="position: fixed; top: 200px;">
                        <a href="#section1" class="list-group-item list-group-item-action myp">1. Tìm hiểu Bảo hiểm sức khỏe là gì?</a>
                        <a href="#section2" class="list-group-item list-group-item-action myp">2. Các loại bảo hiểm sức khỏe hiện nay</a>
                        <a href="#section3" class="list-group-item list-group-item-action myp">3. Quyền lợi khi tham gia bảo hiểm chăm sóc sức khỏe</a>
                    </div>
                </div>
                <div class="col-md-9">
                    <!-- Blog Post Content -->
                    <div id="section1" class="mb-5">
                        <h2>1. Tìm hiểu Bảo hiểm sức khỏe là gì?</h2>
                        <p>Bảo hiểm sức khỏe là tên gọi chung của các loại bảo hiểm như: Bảo hiểm tai nạn con người, bảo
                            hiểm y tế thương mại và bảo hiểm chăm sóc sức khỏe. Nó là một loại hình đầu tư nhằm trở thành
                            chỗ dựa vững chắc về tài chính cho con người khi không may bị thương tật, tai nạn, ốm đau,…
                        </p>
                        <p>
                            Khách hàng tham gia bảo hiểm 100% là tự nguyện. Tùy vào nhu cầu, tài chính mà các công ty cung
                            cấp bảo hiểm sẽ đưa ra gói bảo hiểm phù hợp, bao gồm các quyền lợi kèm theo.
                        </p>

                        <p>
                            Nói như vậy có nghĩa, một đơn vị cung cấp gói bảo hiểm này sẽ đứng ra trả tiền, chi phí cho
                            người được hưởng lợi bảo hiểm khi người đó gặp điều không may xảy ra dựa theo những điều khoản
                            thỏa thuận ban đầu của hai bên.
                        </p>
                        <!-- Add the fixed image container -->
                        <div class="fixed-image-container">
                            <img src="https://plus.unsplash.com/premium_photo-1661335273735-28702a0e32a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
                                 alt="Image Description" id="fixed-image" class="img-fluid">
                        </div>
                        <p>
                            Đặc điểm của bảo hiểm này là thời hạn hợp đồng chỉ tối đa 1 năm và cần tái ký để hợp đồng có thể
                            tiếp tục hoạt động. Vậy nên bạn cũng chỉ cần chi trả 1 lần duy nhất.
                        </p>

                    </div>

                    <div id="section2" class="mb-5">
                        <h2>2. Các loại bảo hiểm sức khỏe hiện nay</h2>
                        <p>Theo luật kinh doanh bảo hiểm, BHSK được phân ra thành 3 loại như sau:</p>
                        <h4>
                            2.1 Bảo hiểm tai nạn con người
                        </h4>
                        <p>Là bảo hiểm bảo vệ đến sức khỏe, tính mạng của con người. Loại bảo hiểm này dành cho những ai
                            luôn quan tâm đến sức khoẻ và tính mạng của mình cũng như lo lắng đến người thân xung quanh khi
                            mình có điều gì bất trắc xảy ra. Bởi trong cuộc sống có rất nhiều điều không may có thể xảy đến
                            với thân thể mình.
                        </p>
                        <div class="fixed-image-container">
                            <img src="https://images.unsplash.com/photo-1692807774228-021d33de36c3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1936&q=80"
                                 alt="Image Description" id="fixed-image" class="img-fluid">
                        </div>
                        <p>
                            Một khi những điều không may xảy ra, mình hoàn toàn yên tâm khi có bảo hiểm tai nạn con người.
                            Tuỳ theo thỏa thuận ban đầu, nó sẽ hỗ trợ một phần hay toàn bộ chi phí điều trị, nằm viện, đi
                            lại, chi phí chăm sóc,… cho người được bảo hiểm. Khi có loại bảo hiểm này, bạn hoặc người thân
                            bạn sẽ bớt lo lắng, an tâm hơn khi được đảm bảo nguồn tài chính trong quá trình điều trị hoặc
                            phục hồi.
                        </p>
                        <h4>
                            2.2 Bảo hiểm tai nạn con người
                        </h4>
                        <p>Là bảo hiểm bảo vệ đến sức khỏe, tính mạng của con người. Loại bảo hiểm này dành cho những ai
                            luôn quan tâm đến sức khoẻ và tính mạng của mình cũng như lo lắng đến người thân xung quanh khi
                            mình có điều gì bất trắc xảy ra. Bởi trong cuộc sống có rất nhiều điều không may có thể xảy đến
                            với thân thể mình.
                        </p>
                        <p>
                            Một khi những điều không may xảy ra, mình hoàn toàn yên tâm khi có bảo hiểm tai nạn con người.
                            Tuỳ theo thỏa thuận ban đầu, nó sẽ hỗ trợ một phần hay toàn bộ chi phí điều trị, nằm viện, đi
                            lại, chi phí chăm sóc,… cho người được bảo hiểm. Khi có loại bảo hiểm này, bạn hoặc người thân
                            bạn sẽ bớt lo lắng, an tâm hơn khi được đảm bảo nguồn tài chính trong quá trình điều trị hoặc
                            phục hồi.
                        </p>
                        <p>
                            Một khi những điều không may xảy ra, mình hoàn toàn yên tâm khi có bảo hiểm tai nạn con người.
                            Tuỳ theo thỏa thuận ban đầu, nó sẽ hỗ trợ một phần hay toàn bộ chi phí điều trị, nằm viện, đi
                            lại, chi phí chăm sóc,… cho người được bảo hiểm. Khi có loại bảo hiểm này, bạn hoặc người thân
                            bạn sẽ bớt lo lắng, an tâm hơn khi được đảm bảo nguồn tài chính trong quá trình điều trị hoặc
                            phục hồi.
                        </p>

                    </div>

                    <div id="section3" class="mb-5">
                        <h2>3. Quyền lợi khi tham gia bảo hiểm chăm sóc sức khỏe</h2>
                        <p>Theo luật kinh doanh bảo hiểm, BHSK được phân ra thành 3 loại như sau:</p>
                        <h4>
                            3.1 Bảo hiểm tai nạn con người
                        </h4>
                        <p>Là bảo hiểm bảo vệ đến sức khỏe, tính mạng của con người. Loại bảo hiểm này dành cho những ai
                            luôn quan tâm đến sức khoẻ và tính mạng của mình cũng như lo lắng đến người thân xung quanh khi
                            mình có điều gì bất trắc xảy ra. Bởi trong cuộc sống có rất nhiều điều không may có thể xảy đến
                            với thân thể mình.
                        </p>
                        <p>
                            Một khi những điều không may xảy ra, mình hoàn toàn yên tâm khi có bảo hiểm tai nạn con người.
                            Tuỳ theo thỏa thuận ban đầu, nó sẽ hỗ trợ một phần hay toàn bộ chi phí điều trị, nằm viện, đi
                            lại, chi phí chăm sóc,… cho người được bảo hiểm. Khi có loại bảo hiểm này, bạn hoặc người thân
                            bạn sẽ bớt lo lắng, an tâm hơn khi được đảm bảo nguồn tài chính trong quá trình điều trị hoặc
                            phục hồi.
                        </p>
                        <h4>
                            3.2 Bảo hiểm tai nạn con người
                        </h4>
                        <p>Là bảo hiểm bảo vệ đến sức khỏe, tính mạng của con người. Loại bảo hiểm này dành cho những ai
                            luôn quan tâm đến sức khoẻ và tính mạng của mình cũng như lo lắng đến người thân xung quanh khi
                            mình có điều gì bất trắc xảy ra. Bởi trong cuộc sống có rất nhiều điều không may có thể xảy đến
                            với thân thể mình.
                        </p>
                        <p>
                            Một khi những điều không may xảy ra, mình hoàn toàn yên tâm khi có bảo hiểm tai nạn con người.
                            Tuỳ theo thỏa thuận ban đầu, nó sẽ hỗ trợ một phần hay toàn bộ chi phí điều trị, nằm viện, đi
                            lại, chi phí chăm sóc,… cho người được bảo hiểm. Khi có loại bảo hiểm này, bạn hoặc người thân
                            bạn sẽ bớt lo lắng, an tâm hơn khi được đảm bảo nguồn tài chính trong quá trình điều trị hoặc
                            phục hồi.
                        </p>
                        <p>
                            Một khi những điều không may xảy ra, mình hoàn toàn yên tâm khi có bảo hiểm tai nạn con người.
                            Tuỳ theo thỏa thuận ban đầu, nó sẽ hỗ trợ một phần hay toàn bộ chi phí điều trị, nằm viện, đi
                            lại, chi phí chăm sóc,… cho người được bảo hiểm. Khi có loại bảo hiểm này, bạn hoặc người thân
                            bạn sẽ bớt lo lắng, an tâm hơn khi được đảm bảo nguồn tài chính trong quá trình điều trị hoặc
                            phục hồi.
                        </p>
                        <p>
                            Một khi những điều không may xảy ra, mình hoàn toàn yên tâm khi có bảo hiểm tai nạn con người.
                            Tuỳ theo thỏa thuận ban đầu, nó sẽ hỗ trợ một phần hay toàn bộ chi phí điều trị, nằm viện, đi
                            lại, chi phí chăm sóc,… cho người được bảo hiểm. Khi có loại bảo hiểm này, bạn hoặc người thân
                            bạn sẽ bớt lo lắng, an tâm hơn khi được đảm bảo nguồn tài chính trong quá trình điều trị hoặc
                            phục hồi.
                        </p>
                        <h4>
                            3.3 Bảo hiểm tai nạn con người
                        </h4>
                        <p>Là bảo hiểm bảo vệ đến sức khỏe, tính mạng của con người. Loại bảo hiểm này dành cho những ai
                            luôn quan tâm đến sức khoẻ và tính mạng của mình cũng như lo lắng đến người thân xung quanh khi
                            mình có điều gì bất trắc xảy ra. Bởi trong cuộc sống có rất nhiều điều không may có thể xảy đến
                            với thân thể mình.
                        </p>
                        <p>
                            Một khi những điều không may xảy ra, mình hoàn toàn yên tâm khi có bảo hiểm tai nạn con người.
                            Tuỳ theo thỏa thuận ban đầu, nó sẽ hỗ trợ một phần hay toàn bộ chi phí điều trị, nằm viện, đi
                            lại, chi phí chăm sóc,… cho người được bảo hiểm. Khi có loại bảo hiểm này, bạn hoặc người thân
                            bạn sẽ bớt lo lắng, an tâm hơn khi được đảm bảo nguồn tài chính trong quá trình điều trị hoặc
                            phục hồi.
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
