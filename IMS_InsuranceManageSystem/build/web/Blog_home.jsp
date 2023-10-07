<%-- 
    Document   : Blog_home
    Created on : Sep 22, 2023, 11:13:36 PM
    Author     : chun
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Document</title>

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
            body {
                background-color: #fdd12d !important;
            }
            .container{
                padding-top: 100px
            }

            .card-img-top {
                height: 200px;
                /* Set your preferred height here */
                object-fit: cover;
                /* This ensures the image scales while maintaining aspect ratio */
            }

            .btn {
                border: #fdd12d !important;
            }

            .mybtn:hover {
                background-color: #fdd12d !important;
                border: #fdd12d !important;
            }

            /* here */
            .tag-date {
                display: flex;
                justify-content: space-between;
                margin-bottom: 10px;
            }

            .tag-name {
                font-size: 14px;
                color: #888;
            }

            .creation-date {
                font-size: 14px;
                color: #888;
            }

            .card-title {
                font-size: 18px;
                margin: 0;
            }
        </style>
    </head>
    <body>
        <!-- Thanh nav fix cứng -->
        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>

        <div class="container mt-4">
            <div class="row mb-4">
                <div class="col-md-6 offset-md-3">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Tìm kiếm bài viết">
                        <div class="input-group-append">
                            <button class="btn btn-primary mybtn" type="button">Tìm kiếm</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Column 1: 2x2 grid of articles -->
                <div class="col-md-8">
                    <h2>Các bài viết nổi bật</h2>

                    <div class="row">
                        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                                        class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                        aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                        aria-label="Slide 3"></button>
                            </div>
                            <!-- list slider -->
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <a href="blog-detail-1.html">
                                        <!-- Replace with the actual URL of the blog detail page -->
                                        <img src="Image/1.jpg" class="d-block w-100" alt="Image 1"
                                             style="height: 400px; width: 800px;">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>First slide label</h5>
                                            <p>Some representative placeholder content for the first slide.</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="carousel-item">
                                    <a href="blog-detail-2.html">
                                        <!-- Replace with the actual URL of the blog detail page -->
                                        <img src="Image/2.jpg" class="d-block w-100" alt="Image 2"
                                             style="height: 400px; width: 800px;">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>Second slide label</h5>
                                            <p>Some representative placeholder content for the second slide.</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="carousel-item">
                                    <a href="blog-detail-3.html">
                                        <!-- Replace with the actual URL of the blog detail page -->
                                        <img src="Image/3.jpg" class="d-block w-100" alt="Image 3"
                                             style="height: 400px; width: 800px;">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>Third slide label</h5>
                                            <p>Some representative placeholder content for the third slide.</p>
                                        </div>
                                    </a>
                                </div>
                            </div>


                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>

                    </div>


                    <!-- Pagination -->
                    <div class="row" style="height: 100px;">
                        <div class="col-md-12">

                        </div>
                    </div>


                </div>

                <!-- Column 2: List of featured articles -->
                <div class="col-md-4 ">
                    <h2>Xem nhiều nhất</h2>
                    <!-- Featured Article 1 -->
                    <div class="card mb-3" style="max-width: 540px; height: 92px;">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="Image/3.jpg" class="card-img" alt="Ảnh bài viết 3" style="height: 92px; width: 125px;">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <div class="tag-date">
                                        <span class="tag-name">Xe Cơ Giới</span>
                                        <span class="creation-date">10/06/2003</span>
                                    </div>
                                    <!-- Wrap the title in an anchor element -->
                                    <h6 class="card-title"><a href="#" style="text-decoration: none;">Tiêu
                                            đề bài viết 3</a></h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3" style="max-width: 540px; height: 92px;">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="Image/3.jpg" class="card-img" alt="Ảnh bài viết 3" style="height: 92px; width: 125px;">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <div class="tag-date">
                                        <span class="tag-name">Xe Cơ Giới</span>
                                        <span class="creation-date">10/06/2003</span>
                                    </div>
                                    <!-- Wrap the title in an anchor element -->
                                    <h6 class="card-title"><a href="#" style="text-decoration: none;">Tiêu
                                            đề bài viết 3</a></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>





            <div class="row mb-4">
                <h2>Bài viết mới mỗi ngày</h2>
                <c:if test="${listBlog != null}">
                    <c:forEach items="${listBlog}" var="o1">
                        <div class="col-md-6">
                            <div class="card mb-4 shadow-sm">
                                <img src="Image/1.jpg" class="card-img-top" alt="Ảnh bài viết 3">
                                <div class="card-body">
                                    <h5 class="card-title">${o1.getBl_title()}</h5>
                                    <p class="card-text" 
                                       style=" width:200px;
                                                height:20px;
                                                line-height:20px;
                                                 overflow:hidden;"
                                                 >${o1.getBl_content()}.</p>
                                    <a href="#" class="btn btn-primary mybtn">Đọc thêm</a>
                                </div>
                                <div class="card-footer text-right">
                                    <div>
                                        <i class='bx bx-purchase-tag-alt'></i>
                                        <a href="#" class="mx-1">staff2</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>
                
<!--                <div class="col-md-6">
                    <div class="card mb-4 shadow-sm">
                        <img src="Image/1.jpg" class="card-img-top" alt="Ảnh bài viết 3">
                        <div class="card-body">
                            <h5 class="card-title">Tiêu đề bài viết 3</h5>
                            <p class="card-text">Nội dung bài viết 3...</p>
                            <a href="#" class="btn btn-primary mybtn">Đọc thêm</a>
                        </div>
                        <div class="card-footer text-right">
                            <div>
                                <i class='bx bx-purchase-tag-alt'></i>
                                <a href="#" class="mx-1">staff2</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card mb-4 shadow-sm">
                        <img src="Image/1.jpg" class="card-img-top" alt="Ảnh bài viết 3">
                        <div class="card-body">
                            <h5 class="card-title">Tiêu đề bài viết 3</h5>
                            <p class="card-text">Nội dung bài viết 3...</p>
                            <a href="#" class="btn btn-primary mybtn">Đọc thêm</a>
                        </div>
                        <div class="card-footer text-right">
                            <div>
                                <i class='bx bx-purchase-tag-alt'></i>
                                <a href="#" class="mx-1">staff2</a>
                            </div>
                        </div>
                    </div>
                </div>-->

                <div class="col-md-6">
                    <div class="card mb-4 shadow-sm">
                        <img src="Image/1.jpg" class="card-img-top" alt="Ảnh bài viết 3">
                        <div class="card-body">
                            <h5 class="card-title">Tiêu đề bài viết 3</h5>
                            <p class="card-text">Nội dung bài viết 3...</p>
                            <a href="#" class="btn btn-primary mybtn">Đọc thêm</a>
                        </div>
                        <div class="card-footer text-right">
                            <div>
                                <i class='bx bx-purchase-tag-alt'></i>
                                <a href="#" class="mx-1">staff2</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card mb-4 shadow-sm">
                        <img src="Image/1.jpg" class="card-img-top" alt="Ảnh bài viết 3">
                        <div class="card-body">
                            <h5 class="card-title">Tiêu đề bài viết 3</h5>
                            <p class="card-text">Nội dung bài viết 3...</p>
                            <a href="#" class="btn btn-primary mybtn">Đọc thêm</a>
                        </div>
                        <div class="card-footer text-right">
                            <div>
                                <i class='bx bx-purchase-tag-alt'></i>
                                <a href="#" class="mx-1">staff2</a>
                            </div>
                        </div>
                    </div>
                </div>



                <!-- Pagination -->
                <div class="row">
                    <div class="col-md-12">
                        <nav aria-label="Page navigation">
                            <ul class="pagination justify-content-center">
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
