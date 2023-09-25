<%-- 
    Document   : Admin_user_dashboard
    Created on : Sep 25, 2023, 7:35:57 AM
    Author     : chun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="CSS/admin_user_dashboard.css">
        
        <!--bootstrap 5-->
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
        
        <!-- boxicon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

    </head>
    <body>

        <!-- side menu  -->
        <div class="side-menu">
            <div class="brand-name">
                <!-- <h1>Brand</h1> -->
            </div>
            <ul class="side-container">
                <li class="side-item"><img src="dashboard (2).png" alt="">&nbsp; <span>Dashboard</span> </li>
                <li class="side-item"><img src="reading-book (1).png" alt="">&nbsp;<span>Manage Users</span> </li>
                <li class="side-item"><img src="teacher2.png" alt="">&nbsp;<span>Manage Staffs</span> </li>
                <li class="side-item"><img src="school.png" alt="">&nbsp;<span>Manage Blogs</span> </li>
            </ul>
        </div>



        <div class="my-container" id="my-container">
            
            <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>
            <!--header-->
            <!--content-->
            <div class="content">
                <div class="my-cards">
                    <!-- number of users -->
                    <div class="my-card">
                        <div class="my-box">
                            <h1>2194</h1>
                            <h3>Users</h3>
                        </div>
                        <div class="icon-case">
                            <img src="students.png" alt="">
                        </div>
                    </div>
                    <!-- num of staffs -->
                    <div class="my-card">
                        <div class="my-box">
                            <h1>53</h1>
                            <h3>Staffs</h3>
                        </div>
                        <div class="icon-case">
                            <img src="teachers.png" alt="">
                        </div>
                    </div>
                    <!-- num of insurance product -->
                    <div class="my-card">
                        <div class="my-box">
                            <h1>5</h1>
                            <h3>Contracts</h3>
                        </div>
                        <div class="icon-case">
                            <img src="schools.png" alt="">
                        </div>
                    </div>
                    <!-- num of blogs -->
                    <div class="my-card">
                        <div class="my-box">
                            <h1>18</h1>
                            <h3>Blogs</h3>
                        </div>
                        <div class="icon-case">
                            <img src="income.png" alt="">
                        </div>
                    </div>
                </div>

                <!-- list user -->
                <div class="content-2">

                    <div class="my-list1">
                        <div class="my-list-title">
                            <h2>List Users</h2>
                            <!-- add new area -->
                            <a href="#" class="my-btn btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                               data-bs-whatever="@getbootstrap">Add</a>
                        </div>
                        <table>
                            <tr>
                                <th>Name</th>
                                <th>Role</th>
                                <th>Email</th>
                                <th>Option</th>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>Admin</td>
                                <td>nguyenphituananh@gmail.com</td>
                                <td>
                                    <a href="#" class="my-btn btn btn-primary" data-bs-toggle="modal"
                                       data-bs-target="#my-modal-detail">Detail</a>
                                    <a href="#" class="my-btn btn btn-primary" data-bs-toggle="modal"
                                       data-bs-target="#my-modal-edit">Edit</a>
                                    <a href="#" class="my-btn btn btn-primary">Delete</a>
                                </td>
                            </tr>
                            <tr>
                                <td>John Doe</td>
                                <td>Admin</td>
                                <td>namvvhe1</td>
                                <td>
                                    <a href="#" class="my-btn btn btn-secondary">Detail</a>
                                    <a href="#" class="my-btn btn btn-secondary">Edit</a>
                                    <a href="#" class="my-btn btn btn-secondary">Delete</a>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <!-- form add new user -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <!-- modal header -->
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <!-- modal body -->
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="recipient-name" class="col-form-label">Recipient:</label>
                                            <input type="text" class="form-control" id="recipient-name">
                                        </div>
                                        <div class="mb-3">
                                            <label for="message-text" class="col-form-label">Message:</label>
                                            <textarea class="form-control" id="message-text"></textarea>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Send message</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- form show detail user -->
                    <div class="modal fade" id="my-modal-detail" tabindex="-1" aria-labelledby="exampleModalLabe2"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <!-- modal header -->
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <!-- modal body -->
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="recipient-name" class="col-form-label">Recipient:</label>
                                            <input type="text" class="form-control" id="recipient-name">
                                        </div>
                                        <div class="mb-3">
                                            <label for="message-text" class="col-form-label">Message:</label>
                                            <textarea class="form-control" id="message-text"></textarea>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Send message</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- form edit detail user -->
                    <div class="modal fade" id="my-modal-edit" tabindex="-1" aria-labelledby="exampleModalLabe2"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <!-- modal header -->
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <!-- modal body -->
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="recipient-name" class="col-form-label">Recipient:</label>
                                            <input type="text" class="form-control" id="recipient-name">
                                        </div>
                                        <div class="mb-3">
                                            <label for="message-text" class="col-form-label">Message:</label>
                                            <textarea class="form-control" id="message-text"></textarea>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Send message</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- -------------------------------------------------------------------------------------------------------------------------- -->
                    <div class="new-students">
                        <div class="my-list-title">
                            <h2>New Students</h2>
                            <a href="#" class="my-btn btn btn-secondary">View All</a>
                        </div>
                        <table>
                            <tr>
                                <th>Profile</th>
                                <th>Name</th>
                                <th>option</th>
                            </tr>
                            <tr>
                                <td><img src="user.png" alt=""></td>
                                <td>John Steve Doe</td>
                                <td><img src="info.png" alt=""></td>
                            </tr>
                            <tr>
                                <td><img src="user.png" alt=""></td>
                                <td>John Steve Doe</td>
                                <td><img src="info.png" alt=""></td>
                            </tr>
                            <tr>
                                <td><img src="user.png" alt=""></td>
                                <td>John Steve Doe</td>
                                <td><img src="info.png" alt=""></td>
                            </tr>
                            <tr>
                                <td><img src="user.png" alt=""></td>
                                <td>John Steve Doe</td>
                                <td><img src="info.png" alt=""></td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
