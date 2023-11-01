<%-- 
    Document   : User_Change_Mail
    Created on : Nov 1, 2023, 10:43:49 PM
    Author     : chun
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="CSS/user_profile.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

        <style>
            .myimg {
                margin-right: 10px;
                max-width: 250px;
                object-fit: cover;
                object-position: center;
                box-shadow: 0 0 10px #2c464f;
            }
            #main-container{
                box-shadow: 0 33px 61px -29px rgb(0 0 0/80%);
                object-fit: cover;
                border-radius: 25px;
            }

        </style>
    </head>
    <body style="background-color: hsl(47,98%,58%);">
        <jsp:include page="Part/header.jsp"></jsp:include>
            <form class="form-info" style="margin-top: 150px">
                <div class="container  bg-white mt-5 mb-5" id="main-container">
                    <div class="row">
                        <div class="col-md-5 border-right">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                <img id="profileImage" class="rounded-circle mt-5 myimg" width="150px" src="">
                            </div>
                            <!-- Image thumbnail -->
                            <!--tk xac nhan-->
                            <c:if test="${sessionScope.user.getUser_iden_img() == null}">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5" >
                                <img id="idenImage" class="img-thumbnail myimg" width="350px" src="" data-toggle="modal" data-target="#myModal" hidden="">
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="myModalLabel">Full Image</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <img id="idenImageModal" class="img-fluid " src="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                        <c:if test="${sessionScope.user.getUser_iden_img() != null}">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5" >
                                <img id="idenImage" class="img-thumbnail myimg" width="350px" src="" data-toggle="modal" data-target="#myModal" >
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="myModalLabel">Full Image</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <img id="idenImageModal" class="img-fluid " src="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                    </div>
                    <div class="col-md-5 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Quản lý Profile</h4>
                            </div>

                            <div class="row ">
                                <div class="col-md-12"> <input type="text" id="user_id2" class="form-control"
                                                               placeholder="UserID" hidden></div>
                                <div class="col-md-12"><label class="labels">Họ và tên:</label><input
                                        type="text" class="form-control" id="user_fullname2"
                                        placeholder="Fullname" readonly></div>
                                <div class="col-md-12"><label class="labels">Email:</label><input type="email"
                                                                                                  class="form-control" placeholder="Email" id="user_email2" readonly>
                                </div>
                                <input type="password" class="form-control" id="user_password2"
                                       placeholder="Password" hidden>
                                <div class="col-md-12"><label class="labels">Ngày sinh:</label> <input
                                        type="date" class="form-control" id="user_dob2" name="dateInput"
                                        readonly></div>
                                <div class="col-md-12"><label class="labels">Địa chỉ: </label><input type="text"
                                                                                                     class="form-control" id="user_address2" placeholder="Address" readonly>
                                </div>
                                <div class="col-md-12"><label class="labels">Số điện thoại:</label><input
                                        type="number" class="form-control" id="user_phoneNum2"
                                        placeholder="Phone Number" readonly></div>
                                <div class="col-md-12"><label class="labels">Số CMTND/CCCD</label> <input
                                        type="number" class="form-control" id="user_iden2"
                                        placeholder="Identification" readonly></div>
                                <div class="col-md-12"><label class="labels">Trạng thái tài khoản</label>
                                    <input type="text" class="form-control" id="user_status" value="" readonly>
                                </div>
                            </div>

                            <div class="modal-footer">
                                <button id="btn-edit1" type="button" onclick="editInfo()"
                                        class="btn btn-primary">Chỉnh sửa thông tin</button>

                                <div id="btn-Save"></div>
                                <div id="btn-back"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border-right">
                        <div style="margin-top:267px">
                            <div id="btn-changePassword"></div>
                            <div id="btn-changeGmail"></div>
                            <br>
                            <c:if test="${sessionScope.user.getUser_iden_img() == null}">
                                <div id="btn_xacMinhTK"></div>
                            </c:if>
                        </div>
                    </div>

                </div>
            </div>

        </form>

    </body>

</html>