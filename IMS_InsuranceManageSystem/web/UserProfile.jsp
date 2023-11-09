<%-- Document : UserProfile Created on : Oct 17, 2023, 12:06:37 AM Author : Dell --%>

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

                                    <img alt="" id="idenImage" class="img-thumbnail myimg" width="350px" src="" data-toggle="modal" data-target="#myModal" hidden>

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

                                                <img id="idenImageModal" class="img-fluid " >

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

                                        
                                    <c:if test="${sessionScope.user.getUser_iden_img() != null && sessionScope.user.getStatus() == 'Chưa xác minh'}">
                                        <br>
                                        <span style="color: red;font-style: italic;font-weight: bold;font-size: 12px;margin-left: 13px;margin-top: 10px;">Yêu cầu đang chờ phê duyệt.</span>
                                    </c:if>
                                    </div>

                                    <div class="modal-footer">
                                        <!-- Example split danger button -->
                                        <div class="btn-group" id="drop1" hidden>
                                            <button type="button" class="btn btn-danger">Lựa chọn</button>
                                            <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
                                                <span class="sr-only">Toggle Dropdown</span>
                                            </button>
                                            <div class="dropdown-menu" >
                                                <c:if test="${sessionScope.user.getUser_iden_img() == null}">
                                                    <a class="dropdown-item" href="User_verify.jsp">Xác minh tài khoản</a>
                                                </c:if>
                                                <a class="dropdown-item" href="User_Change_Mail.jsp">Thay đổi Email</a>
                                                <a class="dropdown-item" href="ChangePassword.jsp">Thay đổi Mật khẩu</a>
                                            </div>
                                        </div>
                                    <c:if test="${sessionScope.user.getUser_role().equals('Khách hàng') == true }">
                                        <button id="btn-edit1" type="button" onclick="editInfo()" class="btn btn-primary">Chỉnh sửa thông tin</button>
                                    </c:if>

                                        <div id="btn-Save"></div>
                                        <div id="btn-back"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2 border-right">


                            </div>

                        </div>
                    </div>
                </form>
                <script>
                    // <!--info user-->
                    let data1;
                    let JsonData1;
                    document.querySelector('.form-info').addEventListener('submit', function (event) {
                        event.preventDefault(); // Ngăn chặn sự kiện mặc định của form
                        // Thêm code xử lý submit ở đây nếu cần
                    });


                    function fetchData() {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "DislayInfo", true);
                        xhr.onreadystatechange = function () {
                            if (xhr.readyState === 4 && xhr.status === 200) {
                                JsonData1 = xhr.responseText;
                                data1 = JSON.parse(xhr.responseText);
                                document.getElementById("user_id2").value = data1.user_id;
                                document.getElementById("user_fullname2").value = data1.user_fullname;
                                document.getElementById("user_email2").value = data1.user_email;
                                document.getElementById("user_password2").value = data1.user_password;
                                
                                var dobParts = data1.user_dob.split('-'); // Assuming the date is in the format 'yyyy-MM-dd'
                                if (dobParts.length === 3) {
                                    var formattedDob = dobParts[0] + '-' + dobParts[1] + '-' + dobParts[2];
                                    document.getElementById("user_dob2").value = formattedDob;
                                } else {
                                    // Handle the case where the date is not valid
                                    console.log("Invalid date format: " + data1.user_dob);
                                }

                          
                                document.getElementById("user_address2").value = data1.user_address;
                                document.getElementById("user_phoneNum2").value = data1.user_phoneNum;
                                document.getElementById("user_iden2").value = data1.user_iden;
                                document.getElementById("profileImage").src = data1.user_image;
                                document.getElementById("idenImage").src = data1.user_iden_img;
                                document.getElementById("idenImageModal").src = data1.user_iden_img;
                                document.getElementById("user_status").value = data1.user_status;
                                
                            }
                        };
                        xhr.send();
                    }




                    fetchData();

                    function editInfo() {
                        var inputs = document.querySelectorAll('.form-info input');
                        for (var i = 0; i < inputs.length; i++) {

                            if (inputs[i].id !== 'user_status' && inputs[i].id !== 'user_email2' && inputs[i].id !== 'user_iden2') {
                                inputs[i].removeAttribute('readonly'); // Xóa thuộc tính readOnly
                                
                            }
                        }
                        // Remove the 'hidden' attribute from the element with ID 'drop1'
                        var drop1 = document.getElementById('drop1');
                        if (drop1) {
                          drop1.removeAttribute('hidden');
                        }


                        let btn_edit = document.getElementById('btn-edit1');
                        btn_edit.style.display = 'none';
                        let btn_Save = document.getElementById('btn-Save');
                        let btn_sentRequest = document.getElementById('btn-sentRequest');
                        let btn_Back = document.getElementById('btn-back');
                        btn_Save.innerHTML = '<button type="submit" onclick="saveInfo()" class="btn btn-success">Lưu</button>';
                        btn_Back.innerHTML = '<button onclick="goBackToUserProfile()" class="btn btn-secondary">Trở lại</button>';

                    }
                    
                    
                    //back button
                    function goBackToUserProfile() {
                        window.location.href = "UserProfile.jsp";
                        return false; 
                    }

//                    //Đổi password
//                    function changePassword() {
//                        window.location.href = 'ChangePassword.jsp';
//                        // Ngăn chặn sự kiện mặc định của nút hoặc form
//                    }





                    function saveInfo() {
                        let inputs = document.querySelectorAll('.form-info input');
                        let inputEmail = document.querySelector('.form-info input[type="email"]');
                        let isEmpty = false;

                        for (let i = 0; i < inputs.length; i++) {
                            // Nếu input rỗng, thêm thuộc tính 'required'
                            if (inputs[i].value.trim() === '') {
                                isEmpty = true;
                                inputs[i].setAttribute('required', true);
                            } else {
                                inputs[i].removeAttribute('required');
                            }
                        }

                        // Kiểm tra xem có ô input email trống không
                        if (isEmpty) {
                            alert('Vui lòng điền đầy đủ thông tin trước khi gửi.');
                        } else {
                            let emailValue = inputEmail.value.trim();
                            if (!validateEmail(emailValue)) {
                                alert('Save unsuccessfully');
                            } else {
                                // Chuyển đổi dữ liệu thành JSON
                                var jsonData = {
                                    user_id: data1.user_id, // Sử dụng data từ fetchData
                                    user_fullName: document.getElementById("user_fullname2").value,
                                    user_email: document.getElementById("user_email2").value,
                                    user_password: document.getElementById("user_password2").value,
                                    user_dob: document.getElementById("user_dob2").value,
                                    user_address: document.getElementById("user_address2").value,
                                    user_phoneNum: document.getElementById("user_phoneNum2").value,
                                    user_iden: document.getElementById("user_iden2").value
                                };
                                console.log(jsonData);
                                alert('Save successfully')
                                // Chuyển đổi đối tượng JSON thành chuỗi JSON
                                var jsonString = JSON.stringify(jsonData);

                                // Cấu hình yêu cầu AJAX
                                var xhr = new XMLHttpRequest();
                                xhr.open("POST", "UpdateInfo", true);
                                xhr.setRequestHeader("Content-Type", "application/json");
                                xhr.send(jsonString);
                            }
                        }
                    }


                    function validateEmail(email) {
                        let regex = /^[a-zA-Z0-9.-_]+@gmail\.com$/;
                        return regex.test(email);
                    }
                    

                </script>
            </body>

            </html>