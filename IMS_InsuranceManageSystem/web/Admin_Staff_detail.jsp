<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    <jsp:include page="Part/sidebar.jsp"></jsp:include>



    <div class="my-container" id="my-container">
        
        <!--heaedr-->
        <jsp:include page="Part/header.jsp"></jsp:include>
        
        <div class="content">
            <div class="my-cards">
                <!-- number of users -->
                <div class="my-card">
                    <div class="my-box">
                        <h1>2194</h1>
                        <h3>Người dùng</h3>
                    </div>
                    <div class="icon-case">
                        <img src="Image/students.png" alt="">
                    </div>
                </div>
                <!-- num of staffs -->
                <div class="my-card">
                    <div class="my-box">
                        <h1>53</h1>
                        <h3>Nhân viên</h3>
                    </div>
                    <div class="icon-case">
                        <img src="Image/teachers.png" alt="">
                    </div>
                </div>
                <!-- num of insurance product -->
                <div class="my-card">
                    <div class="my-box">
                        <h1>5</h1>
                        <h3>Hợp đồng</h3>
                    </div>
                    <div class="icon-case">
                        <img src="Image/schools.png" alt="">
                    </div>
                </div>
                <!-- num of blogs -->
                <div class="my-card">
                    <div class="my-box">
                        <h1>18</h1>
                        <h3>Bài viết</h3>
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
                        <h2>Chi tiết thông tin người dùng</h2>
                        <!-- add new area -->
                        <a href="admin_Users_list" class="my-btn btn btn-primary">Quay lại</a>
                    </div>
                    <table>
                                <tr>
                                    <th>Họ Tên</th>
                                    <th>Email</th>
                                    <th>Ngày sinh</th>
                                    <th>Địa chỉ</th>
                                    <th>Số điện thoại</th>
                                    <th>CCCD</th>
                                    <th>Ảnh</th>
                                    
                                </tr>
                                
                                
                           
                                <tr>
                                    <td>${detail.user_fullName}</td>
                                    <td>${detail.user_email}</td>
                                    <td>${detail.user_dob}</td>
                                    <td>${detail.user_address}</td>
                                    <td>${detail.user_phoneNum}</td>
                                    <td>${detail.user_iden}</td>
                                    <td>${detail.user_image}</td>
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