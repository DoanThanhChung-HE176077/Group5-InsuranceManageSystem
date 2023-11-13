<%-- 
    Document   : Admin_blog_dashboard
    Created on : Oct 2, 2023, 7:46:10 PM
    Author     : chun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>blog dashboard</title>

        <!-- bootstrap5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!--        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
        

        <!-- font awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-
              iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/Zpi
              Bw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- bootstrap5 5icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        <script src="jquery-3.7.1.min.js"></script>
        <link rel="stylesheet" href="CSS/admin_blog_dashboard.css"/>

    </head>
    <body>

        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>


            <!--sidebar-->
        <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>





            <!-- ---------------------------------------------------------------------------------------------------------------------------- -->



            <div class="container-fluid">
                <div class="row">
                    <div class="col min-vh-100 p-4">
                        <div class="container mt-5">
                            <div class="my-row row">
                                <!-- Column 1: Blog Post Table -->
                                <div class="my-column1 col-md-12">
                                    <h2 style="display: inline-block;">Quản lý bài viết</h2>
<!--                                    go to blog page-->
                                    <button class="btn btn-success mb-3 " style="margin-left: 800px" >
                                        <a href="blog_home_show" style="text-decoration: none; color: #fff;">Đi đến trang bài viết</a>
                                    </button>
                                    <!-- Blog Post Table -->
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Tiêu đề</th>
                                                <th>Tác giả</th>
                                                <th>Ngày viết</th>
                                                <th>Trạng thái</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- Example row, you can use a loop to generate rows dynamically -->
                                        <c:forEach items="${bList}" var="blogs">
                                            <tr>
                                                <td>
                                                    <p style=" width:200px;
                                                       height:20px;
                                                       line-height:20px;
                                                       overflow:hidden;"
                                                       >
                                                        ${blogs.getBl_title()}
                                                    </p></td>
                                                <td>${blogs.usernameString}</td>
                                                <td class="creationDateHere" id="creationDate">${blogs.getBl_creationdate()}</td>
                                                <td>${blogs.getBl_status()}</td>
                                                <td>
                                                    <!-- Edit Button -->
                                                    <a href="blog_edit?bl_id=${blogs.getBl_id()}"><button type="submit" class="btn btn-primary btn-sm">Edit</button></a>
                                                </td>
                                            </tr>
                                        </c:forEach>    
                                        <!-- Repeat rows for each blog post -->
                                    </tbody>
                                </table>

                                <!-- Create Post Button -->
                                <c:if test="${sessionScope.user.getUser_role().equals('Nhân viên')}">
                                    <button class="btn btn-success mb-3" data-toggle="modal" data-target="#createModal">
                                        <a href="blog_add" style="text-decoration: none; color: #fff;">Tạo bài viết</a>
                                    </button>
                                </c:if>
                                
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
            

        <!-- quan trong cua dropdowntable -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        
        <script>
            function setCurrentDate() {
                var currentDate = new Date();
                var formattedDate = currentDate.toISOString().split('T')[0];
                document.getElementById("creationDate").value = formattedDate;
            }
            setCurrentDate();

            function changeDateFormat() {
                var dateElements = document.getElementsByClassName("creationDateHere");

                for (var i = 0; i < dateElements.length; i++) {
                    var oldDateText = dateElements[i].textContent;
                    var dateParts = oldDateText.split('-');
                    var day = dateParts[0];
                    var month = dateParts[1];
                    var year = dateParts[2];
                    var newDateFormat = year + '-' + month + '-' + day;
                    dateElements[i].textContent = newDateFormat;
                }
            }
            changeDateFormat();
        </script>
        
    </body>
</html>
