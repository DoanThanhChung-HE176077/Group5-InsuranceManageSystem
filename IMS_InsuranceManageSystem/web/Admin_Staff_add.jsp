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

        <!-- bootstrap5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!--        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>-->
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/user_profile.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>

        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>


            <!--sidebar-->
        <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>
        <div class="container-fluid">
            <div class="row">
                <div class="col min-vh-100 p-4">
                    <div class="container mt-5">

                        <div class="my-row row">

                            <!-- Column 1: Blog Post Table -->

                            <form class="form-info ">
                                <div style="margin-top: 100px" class="container rounded bg-white mt-5 mb-5">
                                    <div class="row ">
                                        <div class="col-md-3 border-right ">
                                            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img id="profileImage" class="rounded-circle mt-5" width="150px" src=""></div>
                                        </div>
                                        <div class="col-md-5 border-right">
                                            <div class="p-3 py-5">
                                                <div class="d-flex justify-content-between align-items-center mb-3">
                                                    <h4 class="text-right">Thêm nhân viên</h4>
                                                </div>

                                                <div class="row mt-3">
                                                    <div class="col-md-12">  <input type="text" id="user_id2"
                                                                                    class="form-control"
                                                                                    placeholder="UserID" hidden></div>
                                                    <div class="col-md-12"><label class="labels">Họ và tên</label><input type="text" class="form-control" id="user_fullname2"
                                                                                                                        placeholder="Họ và tên" ></div>
                                                    <div class="col-md-12"><label class="labels">Email</label><input type="email" class="form-control"
                                                                                                                     placeholder="Email"
                                                                                                                     id="user_email2" ></div>
                                                    <div class="col-md-12"><label class="labels">Ngày sinh </label> <input type="date" class="form-control"
                                                                                                                               id="user_dob2" name="dateInput" ></div>
                                                    <div class="col-md-12"><label class="labels">Địa chỉ</label><input type="text" class="form-control"
                                                                                                                       id="user_address2"  placeholder="Địa chỉ" ></div>
                                                    <div class="col-md-12"><label class="labels">Số điện thoại</label><input type="number" class="form-control" id="user_phoneNum2"
                                                                                                                            placeholder="Số điện thoại" ></div>
                                                    <div class="col-md-12"><label class="labels">Căn cước công dân</label> <input type="number" class="form-control"
                                                                                                                               id="user_iden2" placeholder="Căn cước công dân" ></div>
                                                    <div class="col-md-12"><label class="labels">Mật khẩu</label> 
                                                        <input type="password" class="form-control" placeholder=" Mật khẩu" ></div>
                                                        <div class="col-md-12"><label class="labels">Nhập lại mật khẩu</label> 
                                                        <input type="password" class="form-control" placeholder="Nhập lại mật khẩu" ></div>
                                                </div>

                                                <div class="modal-footer">
                                                    <button id="btn-edit1" type="button"
                                                             class="btn btn-primary">Hủy</button>
                                                    <button id="btn-edit1" type="button"
                                                             class="btn btn-primary">Thêm</button>
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </form>
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
