<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/admin_insuranceProduct_dashboard.css">
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

    <!-- side menu  -->
    <div class="side-menu">
        <div class="brand-name">
            <!-- <h1>Brand</h1> -->
        </div>
        <ul class="side-container">
            <li class="side-item"><img src="Image/dashboard (2).png" alt="">&nbsp; <span>Dashboard</span> </li>
            <li class="side-item"><img src="Image/reading-book (1).png" alt="">&nbsp;<span>Manage Users</span> </li>
            <li class="side-item"><img src="Image/teacher2.png" alt="">&nbsp;<span>Manage Staffs</span> </li>
            <li class="side-item"><img src="Image/school.png" alt="">&nbsp;<span>Manage Blogs</span> </li>
            <li class="side-item"><img src="Image/school.png" alt="">&nbsp;<span>Manage Insurance Product</span> </li>
        </ul>
    </div>



    <div class="my-container" id="my-container">
        
        <!--heaedr-->
        <jsp:include page="Part/header.jsp"></jsp:include>
        
        <div class="content">
            <div class="my-cards">
                <!-- number of users -->
                <div class="my-card">
                    <div class="my-box">
                        <h1>2194</h1>
                        <h3>Users</h3>
                    </div>
                    <div class="icon-case">
                        <img src="Image/students.png" alt="">
                    </div>
                </div>
                <!-- num of staffs -->
                <div class="my-card">
                    <div class="my-box">
                        <h1>53</h1>
                        <h3>Staffs</h3>
                    </div>
                    <div class="icon-case">
                        <img src="Image/teachers.png" alt="">
                    </div>
                </div>
                <!-- num of insurance product -->
                <div class="my-card">
                    <div class="my-box">
                        <h1>5</h1>
                        <h3>Contracts</h3>
                    </div>
                    <div class="icon-case">
                        <img src="Image/schools.png" alt="">
                    </div>
                </div>
                <!-- num of blogs -->
                <div class="my-card">
                    <div class="my-box">
                        <h1>18</h1>
                        <h3>Blogs</h3>
                    </div>
                    <div class="icon-case">
                        <img src="Image/income.png" alt="">
                    </div>
                </div>
            </div>

            <!-- list user -->
            <div class="content-2">

                <div class="my-list1">
                    <div class="my-list-title">
                        <h2>Detail Insurance Product</h2>
                        <!-- add new area -->
                        <a href="admin_IP_list" class="my-btn btn btn-primary">Back</a>
                    </div>
                    <table>
                                <tr>
                                    <th>ID</th>
                                    <th>Type</th>
                                    <th>Name</th>
                                </tr>
                                
                                
                           
                                <tr>
                                    <td>${detail.ip_id}</td>
                                    <td>${detail.ip_type}</td>
                                    <td>${detail.ip_name}</td>
                                </tr>
                            
                        </table>
                </div>


                <!-- -------------------------------------------------------------------------------------------------------------------------- -->
                 <div class="new-students">
                    <div class="my-list-title">
                        <h2>New Users</h2>
                        <a href="#" class="my-btn btn btn-secondary">View All</a>
                    </div>
                    <table>
                        <tr>
                            <th>Image</th>
                            <th>Name</th>
                            
                        </tr>
                        <tr>
                            
                        </tr>
                        <tr>
                            
                        </tr>
                        <tr>
                            
                        </tr>
                        <tr>
                            
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>
        
        
        
        
</body>

</html>