<%-- 
    Document   : Admin_dashboard
    Created on : Sep 20, 2023, 11:31:26 AM
    Author     : chun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/">
    <title>Admin Panel</title>

    <!-- bootstrap -->

    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script> -->

    <!-- BOOTSTRAP5 -->
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
        
        
        
        
        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>
        <div class="side-menu" id="sidebar">
            <div class="toggle-btn" onclick="show()">
                <span></span>
                <span></span>
                <span></span>
            </div>
            
            <div class="brand-name">
                <h1><i class='bx bxs-book-content' ></i>&nbsp; <span>Dashboard</span> </h1>
            </div>
            <ul class="sideitem">
                <li></li>
                <li href="#"><i class='bx bxs-user'></i>&nbsp;<span>Users</span> </li>
                <li><i class='bx bxs-contact' ></i>&nbsp;<span>Insurance Product</span> </li>
                <li><i class='bx bx-user-pin'></i>&nbsp;<span>Staff</span> </li>
            </ul>
        </div>
        <div class="container">


            <div class="content">
                <div class="cards">
                    <div class="card">
                        <div class="box">
                            <h1>2194</h1>
                            <h3>Users</h3>
                        </div>
                        <div class="icon-case">
                            <img src="students.png" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>53</h1>
                            <h3>Contacts</h3>
                        </div>
                        <div class="icon-case">
                            <img src="teachers.png" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>5</h1>
                            <h3>Staff</h3>
                        </div>
                        <div class="icon-case">
                            <img src="schools.png" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>350000</h1>
                            <h3>Income</h3>
                        </div>
                        <div class="icon-case">
                            <img src="income.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="content-2">
                    <div class="recent-payments">
                        <div class="title">
                            <h2>Insurance Product List</h2>
                            <a href="#" class="my-btn btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                            data-bs-whatever="@getbootstrap">Add</a>
                        </div>
                        <table>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                            </tr>
                            <c:forEach items="${listIP}" var="o">
                            <tr>
                                <td>${o.getIp_id()}</td>
                                <td>${o.getIp_name()}</td>
                                <td>
                                    <a href="load?pid=${o.ip_id}" class="btn">Update</a>
                                    <a href="delete?pid=${o.ip_id}" class="btn">Delete</a>
                                    <a href="detail?pid=${o.ip_id}" class="btn">Detail</a>
                                </td>
                            </tr>
                             </c:forEach>
                        </table>
                    </div>
                    
                </div>
            </div>
        </div>
               
         <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="admin_IP_add" method="get">
                            <!-- modal header -->
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Add Insurance Product</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <!-- modal body -->
                            <div class="modal-body">
                                
                                    <div class="mb-3">
                                        <label for="recipient-name" class="col-form-label">Type:</label>
                                        <input type="text" class="form-control" id="recipient-name" name="ip_type">
                                    </div>
                                    <div class="mb-3">
                                        <label for="message-text" class="col-form-label">Name:</label>
                                        <textarea class="form-control" id="message-text" name="ip_name"></textarea>
                                    </div>
                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary" >Add</button>
                            </div>
                            </form>
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
        
        <script>
            function show() {
                document.getElementById('sidebar').classList.toggle('active');
            }
        </script>
    </body>
</html>
