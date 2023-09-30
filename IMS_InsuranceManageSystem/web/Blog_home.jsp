<%-- 
    Document   : Blog_home
    Created on : Sep 22, 2023, 11:13:36 PM
    Author     : chun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
            .card-img-top {
                height: 200px;
                /* Set your preferred height here */
                object-fit: cover;
                /* This ensures the image scales while maintaining aspect ratio */
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Thanh nav fix cứng -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
            <div class="container">
                <a class="navbar-brand" href="#">Trang Blog</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Bài viết</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Liên hệ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container mt-4">

            <div class="row mb-4">
                <div class="col-md-6 offset-md-3">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Tìm kiếm bài viết">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">Tìm kiếm</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Column 1: 2x2 grid of articles -->
                <div class="col-md-8">
                    <div class="row">
                        <!-- Article 1 -->
                        <div class="col-md-6">
                            <div class="card mb-4">
                                <img src="1.jpg" class="card-img-top" alt="Ảnh bài viết 3">
                                <div class="card-body">
                                    <h5 class="card-title">Tiêu đề bài viết 3</h5>
                                    <p class="card-text">Nội dung bài viết 3...</p>
                                    <a href="#" class="btn btn-primary">Đọc thêm</a>
                                </div>
                                <div class="card-footer text-right">
                                    <div>
                                        <i class='bx bx-user'></i>
                                        <a href="#" class="mx-1">staff1</a>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Article 2 -->
                        <div class="col-md-6">
                            <div class="card mb-4">
                                <img src="1.jpg" class="card-img-top" alt="Ảnh bài viết 3">
                                <div class="card-body">
                                    <h5 class="card-title">Tiêu đề bài viết 3</h5>
                                    <p class="card-text">Nội dung bài viết 3...</p>
                                    <a href="#" class="btn btn-primary">Đọc thêm</a>
                                </div>
                                <div class="card-footer text-right">
                                    <div>
                                        <i class='bx bx-user'></i>
                                        <a href="#" class="mx-1">staff2</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Article 3 -->
                        <div class="col-md-6">
                            <div class="card mb-4">
                                <img src="1.jpg" class="card-img-top" alt="Ảnh bài viết 3">
                                <div class="card-body">
                                    <h5 class="card-title">Tiêu đề bài viết 3</h5>
                                    <p class="card-text">Nội dung bài viết 3...</p>
                                    <a href="#" class="btn btn-primary">Đọc thêm</a>
                                </div>
                                <div class="card-footer text-right">
                                    <div>
                                        <i class='bx bx-user'></i>
                                        <a href="#" class="mx-1">staff3</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Article 4 -->
                        <div class="col-md-6">
                            <div class="card mb-4">
                                <img src="1.jpg" class="card-img-top" alt="Ảnh bài viết 3">
                                <div class="card-body">
                                    <h5 class="card-title">Tiêu đề bài viết 3</h5>
                                    <p class="card-text">Nội dung bài viết 3...</p>
                                    <a href="#" class="btn btn-primary">Đọc thêm</a>
                                </div>
                                <div class="card-footer text-right">
                                    <div>
                                        <i class='bx bx-user'></i>
                                        <a href="#" class="mx-1">staff4</a>
                                    </div>
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

                <!-- Column 2: List of featured articles -->
                <div class="col-md-4 ">
                    <h2>Các bài viết nổi bật</h2>

                    <!-- Featured Article 1 -->
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="1.jpg" class="card-img" alt="Ảnh bài viết 3">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h6 class="card-title">Tiêu đề bài viết 3</h6>
                                    <p class="card-text">Nội dung bài viết 3...</p>
                                    <a href="#" class="btn btn-sm btn-primary">Đọc thêm</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="1.jpg" class="card-img" alt="Ảnh bài viết 3">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h6 class="card-title">Tiêu đề bài viết 3</h6>
                                    <p class="card-text">Nội dung bài viết 3...</p>
                                    <a href="#" class="btn btn-sm btn-primary">Đọc thêm</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="1.jpg" class="card-img" alt="Ảnh bài viết 3">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h6 class="card-title">Tiêu đề bài viết 3</h6>
                                    <p class="card-text">Nội dung bài viết 3...</p>
                                    <a href="#" class="btn btn-sm btn-primary">Đọc thêm</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="1.jpg" class="card-img" alt="Ảnh bài viết 3">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h6 class="card-title">Tiêu đề bài viết 3</h6>
                                    <p class="card-text">Nội dung bài viết 3...</p>
                                    <a href="#" class="btn btn-sm btn-primary">Đọc thêm</a>
                                </div>
                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>

    </body>
</html>
