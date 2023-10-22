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

        <!-- bootstrap 4 -->
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

            .myp {
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
                max-width: calc(25 * 1em);
                /* Số từ cần in ra lần độ rộng của từ */
            }

            .myp::before {
                content: attr(data-text);
                /* Lấy nội dung gốc từ thuộc tính data-text */
                display: inline;
            }
            
            .mycard1{
                border-radius: 35px;
                box-shadow: 5px 10px 50px #555;
                background-color: #fff; 
            }
        </style>
    </head>
    <body>
        <!-- Thanh nav fix cứng -->
        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>

        <div class="container mt-4 mycard1" style="margin-top: 100px !important">
            <div class="row mb-4" style="margin-top: -80px">
                    <div class="col-md-6 offset-md-3">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Tìm kiếm bài viết">
                            <div class="input-group-append">
                                <button class="btn btn-primary mybtn" type="button">Tìm kiếm</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row ">
                    <!-- Column 1: 2x2 grid of articles -->
                    <div class="col-md-8">
<!-----------------------------------------------cac bai viet noi bat---------------------------------------------------------------------> 
                        <h2>Các bài viết nổi bật</h2>

                        <div class="row">
                            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                                <!---------------------------------------------number of list item--------------------------------------------------->
                                <div class="carousel-indicators">
                                <c:forEach items="${listTop15Blogs}" var="blog" varStatus="loopStatus">
                                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="${loopStatus.index}"
                                            class="${loopStatus.first ? 'active' : ''}" aria-current="${loopStatus.first}" aria-label="Slide ${loopStatus.index + 1}"></button>
                                </c:forEach> 
                            </div>
                            <!-- list slider -->
                            <div class="carousel-inner">
                                <!---------------------------------------------list slide item--------------------------------------------------->
                                <c:forEach items="${listTop15Blogs}" var="blog" varStatus="loopStatus"> 
                                    <div class="carousel-item ${loopStatus.first ? 'active' : ''}">
                                        <a href="Blog_detail?Bl_id=${blog.getBl_id()}">
                                            <img src="${blog.getBl_img()}" class="d-block w-100" alt="${blog.getBl_title()}"
                                                 style="height: 400px; width: 800px; object-fit: cover;">
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>${blog.getBl_title()}</h5>
                                                <p class="myp"></p>
                                            </div>
                                        </a>
                                    </div>
                                </c:forEach> 
                                <!---------------------------------------------2 button prev next--------------------------------------------------->
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
                </div>
                <!-- Column 2: List of featured articles -->
<!---------------xem nhieu nhat---------------------------------------------------------------------> 
                <div class="col-md-4 ">
                    <h2 >Xem nhiều nhất</h2>
                    <!-- Featured Article 1 -->
                    <c:if test="${listTop5Blogs != null}">
                        <c:forEach items="${listTop5Blogs}" var="o2">
                            <div class="card mb-3 border border-5" style="max-width: 540px !important; height: 92px!important; cursor: pointer!important;
                                 " data-toggle="mypopover1" title=" Bài viết: ${o2.getBl_title()}">
                                <div class="row no-gutters">
                                    <div class="col-md-4">
                                        <img src="${o2.getBl_img()}" class="card-img" alt="Ảnh bài viết 3" style="height: 92px; width: 125px; object-fit: cover;">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <div class="tag-date">
                                                <span class="tag-name"> ${o2.getBl_tag_tagname()}</span>
                                                <span class="creation-date"> ${o2.getBl_creationdate()}</span>
                                            </div>
                                            <!-- Wrap the title in an anchor element -->
                                            <h6 class="card-title myp" ><a href="Blog_detail?Bl_id=${o2.getBl_id()}" style="
                                                                      text-decoration: none;
                                                                      text-transform: uppercase;
                                                                      font-size: 12px;
                                                                      font-weight: 100;
                                                                      color: #2c464f;
                                                                      text-shadow: 0px 0px 1px #2c464f;
                                                                      ">
                                                    ${o2.getBl_title()}</a></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
<!---------------------------------------------------------------------Bai viet moi ngay--------------------------------------------------------------------->
            <div class="row mb-4 ">
                <h2>Bài viết mới mỗi ngày</h2>
                <c:if test="${listBlog != null}">
                    <c:forEach items="${listBlog}" var="o1">
                        <div class="col-md-6 "   data-toggle="mypopover1" title=" Bài viết: ${o1.getBl_title()}" 
                             style="cursor: pointer;
/*                             border: 2px solid black;*/
/*                             outline: #4CAF50 solid 10px;*/
/*                             margin: auto;
                             padding: 20px;*/

                             ">
                            <div class="card mb-4 shadow-sm">
                                <img src="${o1.getBl_img()}" class="card-img-top" alt="Ảnh bài viết 3">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        <a href="Blog_detail?Bl_id=${o1.getBl_id()}" style="
                                           text-decoration: none;
                                           text-transform: uppercase;
                                           font-size: 14px;
                                           font-weight: 500;
                                           color: #2c464f;
                                           text-shadow: 0px 0px 1px #2c464f;
                                           ">
                                            ${o1.getBl_title()}
                                        </a>
                                    </h5>
                                    <p class="card-text myp" data-text="short content here"></p>
                                    <a href="Blog_detail?Bl_id=${o1.getBl_id()}" class="btn btn-primary mybtn">Đọc thêm</a>
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
        
        <script>
            $(document).ready(function () {
                $('[data-toggle="mypopover1"]').hover();
            });
        </script>
    </body>
</html>
