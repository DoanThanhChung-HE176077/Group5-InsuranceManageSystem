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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>

        <!-- font awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-
              iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/Zpi
              Bw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- bootstrap5 5icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        
        <link rel="stylesheet" href="CSS/admin_blog_dashboard.css"/>
        
    </head>
    <body>
        
        <!--header-->
         <jsp:include page="Part/header.jsp"></jsp:include>
        
        
        <!-- ---------------------------------------------------------------------------------------------------------------------------- -->
        <!-- side bar = offcanvas -->
        <div class="offcanvas offcanvas-start " tabindex="-1" id="offcanvas" data-bs-keyboard="false"
             data-bs-backdrop="false" style="width:  250px;">
            <div class="offcanvas-header">
                <h6 class="offcanvas-title d-none d-sm-block" id="offcanvas"></h6>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <!-- <div class="offcanvas-body px-0">
                <ul class="list-group" style="padding-top: 5px;">
                    <li class="list-group-item my-btn1"><a href="#" class="my-sidebar-item">Dashboard</a></li>
                    <li class="list-group-item my-btn1"><a href="#" class="my-sidebar-item">Manage User</a></li>
                    <li class="list-group-item my-btn1"><a href="#" class="my-sidebar-item">Manage Blog</a></li>
                    <li class="list-group-item my-btn1"><a href="#" class="my-sidebar-item">Manage Staff</a></li>
                    <li class="list-group-item my-btn1"><a href="#" class="my-sidebar-item">Manage Insurance Product</a>
                    </li>
                </ul>
    
            </div> -->
            <div class="offcanvas-body px-0">
                <ul class="list-group" style="padding-top: 50px;">
                    <li class="list-group-item my-btn1">
                        <a href="#" class="my-sidebar-item">
                            <i class="fas fa-home"></i> Home
                        </a>
                    </li>
                    <li class="list-group-item my-btn1">
                        <a href="#" class="my-sidebar-item">
                            <i class="fas fa-user"></i> Manage User
                        </a>
                    </li>
                    <li class="list-group-item my-btn1">
                        <a href="#" class="my-sidebar-item">
                            <i class="fas fa-blog"></i> Manage Blog
                        </a>
                    </li>
                    <li class="list-group-item my-btn1">
                        <a href="#" class="my-sidebar-item">
                            <i class="fas fa-users"></i> Manage Staff
                        </a>
                    </li>
                    <li class="list-group-item my-btn1">
                        <a href="#" class="my-sidebar-item">
                            <i class="fas fa-shield-alt"></i> Manage Insurance Product
                        </a>
                    </li>
                </ul>
            </div>

        </div>



        <!-- ---------------------------------------------------------------------------------------------------------------------------- -->



        <div class="container-fluid">
            <div class="row">
                <div class="col min-vh-100 p-4">
                    <div class="container mt-5">

                        <div class="my-row row">
                            <!-- Column 1: Blog Post Table -->
                            <div class="my-column1 col-md-6">
                                <h2 style="display: inline-block;">Blog Posts</h2>

                                <!-- Blog Post Table -->
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Blog Title</th>
                                            <th>Author</th>
                                            <th>Date Created</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Example row, you can use a loop to generate rows dynamically -->
                                    <c:forEach items="${bList}" var="blogs">
                                        <tr>
                                            <td>${blogs.getBl_content()}</td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <!-- Edit Button -->
                                                <a href=""><button class="btn btn-primary btn-sm">Edit</button></a>
                                            </td>
                                        </tr>
                                    </c:forEach>    
                                        <!-- Repeat rows for each blog post -->
                                    </tbody>
                                </table>

                                <!-- Create Post Button (opens a modal) -->
                                <button class="btn btn-success mb-3" data-toggle="modal" data-target="#createModal">
                                    <a href="#" style="text-decoration: none; color: #fff;">Create Post</a>
                                </button>
                            </div>

                            <!-- Column 2: Edit History Table -->
                            <div class="my-column1 col-md-6">
                                <h2 style="display: inline-block;">Edit History</h2>
                                <!-- toggler -->
                                <button class="btn-sidebar btn float-end" data-bs-toggle="offcanvas"
                                        data-bs-target="#offcanvas" role="button">
                                    <i class="fa-solid fa-list fs-3 " data-bs-toggle="offcanvas"
                                       data-bs-target="#offcanvas"></i>
                                </button>
                                <!-- Edit History Table -->
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Blog Title</th>
                                            <th>Editor</th>
                                            <th>Description</th>
                                            <th>Edit Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Example edit history rows, you can use a loop to generate rows dynamically -->
                                        <tr>
                                            <td>Sample Blog Post 1</td>
                                            <td>John Doe</td>
                                            <td>Updated title and added new content.</td>
                                            <td>2023-10-01</td>
                                        </tr>
                                        <tr>
                                            <td>Sample Blog Post 2</td>
                                            <td>Jane Smith</td>
                                            <td>Revised content for accuracy.</td>
                                            <td>2023-10-02</td>
                                        </tr>
                                        <tr>
                                            <td>Sample Blog Post 2</td>
                                            <td>Jane Smith</td>
                                            <td>Revised content for accuracy.</td>
                                            <td>2023-10-02</td>
                                        </tr>
                                        <tr>
                                            <td>Sample Blog Post 2</td>
                                            <td>Jane Smith</td>
                                            <td>Revised content for accuracy.</td>
                                            <td>2023-10-02</td>
                                        </tr>
                                        <tr>
                                            <td>Sample Blog Post 2</td>
                                            <td>Jane Smith</td>
                                            <td>Revised content for accuracy.</td>
                                            <td>2023-10-02</td>
                                        </tr>
                                        <tr>
                                            <td>Sample Blog Post 2</td>
                                            <td>Jane Smith</td>
                                            <td>Revised content for accuracy.</td>
                                            <td>2023-10-02</td>
                                        </tr>
                                        <tr>
                                            <td>Sample Blog Post 2</td>
                                            <td>Jane Smith</td>
                                            <td>Revised content for accuracy.</td>
                                            <td>2023-10-02</td>
                                        </tr>
                                        <tr>
                                            <td>Sample Blog Post 2</td>
                                            <td>Jane Smith</td>
                                            <td>Revised content for accuracy.</td>
                                            <td>2023-10-02</td>
                                        </tr>
                                        <tr>
                                            <td>Sample Blog Post 2</td>
                                            <td>Jane Smith</td>
                                            <td>Revised content for accuracy.</td>
                                            <td>2023-10-02</td>
                                        </tr>
                                        <tr>
                                            <td>Sample Blog Post 2</td>
                                            <td>Jane Smith</td>
                                            <td>Revised content for accuracy.</td>
                                            <td>2023-10-02</td>
                                        </tr>
                                        <!-- Repeat rows for each edit history entry -->
                                    </tbody>
                                </table>
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
    </body>
</html>
