<%-- 
    Document   : User_verify
    Created on : Nov 7, 2023, 10:44:12 PM
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

        <!--//font awéome-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
              integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!--sweet alert-->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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
        <form class="form-info" id="turung" style="margin-top: 150px" method="POST" action="UserVerify" enctype="multipart/form-data">
            <div class="container  bg-white mt-5 mb-5" id="main-container">
                <div class="row">
                    <div class="col-md-5 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                            <div style="float: right" tabindex="0" class="" data-toggle="tooltip" data-placement="top" title="Đaya là tooltip cho mức khấu trừ:">
                                <span style="color: red; font-style: italic; font-weight: bold;font-size: 12px ">Tip: Hãy click vào ảnh</span>
                            </div>
                            <img id="output" src="" alt="Image Preview" class="img-thumbnail mt-3" data-toggle="modal" data-target="#exampleModal">
                            <!-- The modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <!-- Display the image in the modal -->
                                            <img id="modalImage" src="" alt="Image Preview" class="img-fluid">
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Xác minh tài khoản</h4>
                            </div>
                            <div class="row ">
                                <div class="col-md-12">
                                    <label class="labels">Số CMT/CCCD của bạn:<span class="errmsg" style="color: red;"> *</span></label>
                                    <input value="" type="text"class="form-control" placeholder="Số CCCD/CMT" id="soCCCD" name="soCCCD" >
                                </div>
                                <input name="flag" value="1" type="hidden">
                                <div class="col-md-12">
                                    <label class="labels">Tải lên CMT/CCCD:<span class="errmsg" style="color: red;"> *</span></label>
                                    <input  type="file" class="form-control-file"  id="file" name="file" accept="image/*" onchange="loadFile(event)" >
                                </div>
                            </div>
                            <br>
                            <div class="modal-footer">
                                <button id="btn-edit1" type="submit" class="btn btn-primary">Gửi yêu cầu</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script>
            var loadFile = function (event) {
                var output = document.getElementById('output');
                var modalImage = document.getElementById('modalImage');

                output.src = URL.createObjectURL(event.target.files[0]);
                modalImage.src = output.src;
            };

            document.querySelector('#turung').addEventListener('submit', function (e) {
                e.preventDefault();

                var soCCCD = document.getElementById('soCCCD').value;
                var fileInput = document.getElementById('file');

                if (soCCCD.trim() !== '' && fileInput.files.length > 0) {
                    swal({
                        title: 'Thành công!',
                        text: 'Đã gửi yêu cầu thành công',
                        icon: 'success',
                        button: "Đóng"
                    }).then(() => {
                        document.getElementById("turung").submit();
                    });
                } else {
                    swal({
                        title: 'Thất bại!',
                        text: 'Vui lòng điền đầy đủ thông tin và tải ảnh đầy đủ!!',
                        icon: 'error'
                    });
                }
            });
        </script>
    </body>

</html>
