<%-- 
    Document   : Blog_detail2
    Created on : Oct 14, 2023, 6:59:29 PM
    Author     : chun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <h1>${aBlog.getBl_title()}</h1>
                </div>
                <div class="col-md-2">

                </div>
            </div>
            <div class="row">
                <div class="col-md-3">

                </div>
                <div class="col-md-7">
                    <p style="margin-bottom: 6px;" class="creationDate">Ngày đăng: ${aBlog.getBl_creationdate()}</p>
                    <i class='bx bx-purchase-tag-alt'style="margin-bottom: 10px;">${aBlog.getBl_tag_tagname()}</i>
                </div>
                <div class="col-md-2">
                    <p style="text-align: right;">Lượt xem: ${aBlog.getBl_view()}</p>
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
                        ${aBlog.getBl_content()}


                    </div>    
                </div>
            </div>
        </div>
        <script>
            // JavaScript to apply classes and IDs to images
            window.addEventListener('load', function () {
                var imageContainers = document.querySelectorAll('.fixed-image-container img');

                imageContainers.forEach(function (img) {
                    img.className = 'img-fluid';
                    img.id = 'fixed-image';
                });
            });
        </script>
    </body>
</html>
