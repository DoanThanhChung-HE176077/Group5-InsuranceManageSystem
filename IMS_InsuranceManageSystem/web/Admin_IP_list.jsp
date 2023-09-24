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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/admin_dashboard.css"/>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
           <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
        
        <style>
            #sidebar {
                position: fixed ;
                width: 263px;
                height: 100%;
                background: #000;
                left: -300px;
                transition: .4s;
                margin-top: 89px
                  
            }

            #sidebar .toggle-btn {
                position: absolute;
                bottom: 100px;
                left: 330px;
            }

            .toggle-btn span {
                width: 45px;
                height: 4px;
                background: #000;
                display: block;
                margin-top: 4px;
            }

            #sidebar.active {
                left: 0;
                
            }
            
            #sideitem{
                display: flex;
                align-items: center;
                justify-content: center;
                
            }
        </style>
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
                            <a href="admin_IP_add" class="btn">Add</a>
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
        
        
        <script>
            function show() {
                document.getElementById('sidebar').classList.toggle('active');
            }
        </script>
    </body>
</html>
