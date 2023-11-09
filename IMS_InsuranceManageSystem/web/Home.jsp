<%-- 
    Document   : Home.jsp
    Created on : Sep 19, 2023, 10:33:06 PM
    Author     : chun
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/home.css">
        <title>Document</title>

        <!-- bootstrap 4.0-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>

        <!-- font ăesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- slick slider -->
        <link rel="stylesheet" type="text/css" href="path/to/slick-slider/slick/slick.css" />
        <link rel="stylesheet" type="text/css" href="path/to/slick-slider/slick/slick-theme.css" />
        <script type="text/javascript" src="path/to/slick-slider/slick/slick.min.js"></script>

        <!-- Liên kết đến tệp CSS của Slick Carousel (phiên bản 1.8.1) -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css"
              integrity="sha512-wR4oNhLBHf7smjy0K4oqzdW+r5+6QO/vDda76MW5iug4PT7v86FoEkySIJft3XA0Ae6axhIvHrqwm793Nw=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Liên kết đến tệp CSS chủ đề của Slick Carousel (phiên bản 1.8.1) -->
        <link rel="stylesheet" type="text/css"
              href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css" />

        <!-- Liên kết đến tệp CSS của Slick Carousel (phiên bản 1.8.1) -->
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

        <!-- Liên kết đến JavaScript của Slick Carousel (phiên bản 1.8.1) -->
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>


    </head>
    <body>
        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>

            <!-- body -->
            <!-- Phần banner -->
            <div class="banner" id="banner">
                <!-- Nội dung banner -->
            </div>
            
            <!-- slider -->
            <div class="items bg-card">
            <!--show list blog image--> 
                <c:if test="${listBlog != null}">
                    <c:forEach items="${listBlog}" var="o1">
                        <div class="card">
                            <a href="Blog_detail?Bl_id=${o1.getBl_id()}">
                                <!--src must be ex: name.jpg-->
                                <img class="fixed-img card-img-top" src="${o1.getBl_img()}" alt="Card image cap">
                            </a>
                        </div>
                    </c:forEach>
                </c:if>
            
            </div>

            <!--Product list-->
            <section class="container products">
                <h3 class="text-center">Nhóm sản phẩm</h3>
                <div class="row">
                    
                    <a href="HandleFormTNDS" class="col-lg-6 col-sm-6 text-center" style="text-decoration: none; text-shadow: 0px 0px 1px #2c464f; color: #2c464f;">
                        <img src="Image/accident.png" alt="">
                        <span class="d-block mt-3">Bảo Hiểm TNDS</span>
                    </a>
                    <a href="HandleFormVatChat" class="col-lg-6 col-sm-6 text-center" style="text-decoration: none; text-shadow: 0px 0px 1px #2c464f; color: #2c464f;">
                        <img src="Image/motorcycle2.png" alt="">
                        <span class="d-block mt-3">Bảo Hiểm Vật Chất</span>
                    </a>
                    
                    <div class="col-sm-2"></div>
                </div>
            </section>

            <!-- footer -->
        <jsp:include page="Part/footer.jsp"></jsp:include>







        <script>
            //popover-notification
            $(document).ready(function () {
                $('#popover-notification').popover({
                    content: function () {
                        console.log("hello");
                        return $('#notification-content').html();
                    }
                });
            });

            //slick
            $(document).ready(function () {
                $('.items').slick({
                    infinite: true,
                    slidesToShow: 3,
                    slidesToScroll: 3
                });
            });
        </script>



    </body>
</html>
