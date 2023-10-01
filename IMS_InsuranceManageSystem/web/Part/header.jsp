<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/header.css"/>
        <!-- box incon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        
        <!-- font ăesome -->
<!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
        
        <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-
iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/Zpi
Bw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
    </head>
    <body>
        <!-- navbar -->
        <header id="my-header">
            
            <div class="my-logo">
                <i class="fa-solid fa-shield-halved fa-2xl" style="color: #fdd12d;"></i>
                    <span>G5insurance</span>
                
            </div>
            <!-- menu icon -->

            <div class="bx bx-menu" id="my-menu-icon"></div>


            <ul class="my-navbar">
                <li class="dropdown">
                    <a class="" href="/IMS_InsuranceManageSystem/">Trang chủ</a>
<!--                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                         Dropdown menu items 
                    </div>-->
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-bs-toggle="dropdown">Sản Phẩm</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!-- Dropdown menu items -->
                        <a class="dropdown-item" href="#">Bảo hiểm vật chất</a>
                        <a class="dropdown-item" href="#">Bảo hiểm TNDS</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-bs-toggle="dropdown">Giới thiệu</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!-- Dropdown menu items -->
                        <a class="dropdown-item" href="#">Giới thiệu</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-bs-toggle="dropdown">Thông tin</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!-- Dropdown menu items -->
                        <a class="dropdown-item" href="#">Thông tin bảo hiểm</a>
                        <a class="dropdown-item" href="#">Tra cứu bảo hiểm</a>

                    </div>
                </li>
            </ul>

            
            <!-- pro5 -->
            <div class="my-profile">
<!--                <ul class="navbar-nav menutrai">
                    <li class="d-flex align-items-center float-right" id="btnlogin">
                        <a href="logout" style="padding: 8px;"><i class="fa fa-user" style="color: #066132"></i>
                            Đăng xuất
                        </a>
                        
                    </li>
                </ul>-->
                <c:if test="${sessionScope.user != null}">
                    
                    
                <li class="dropdown">
                        
                    <a class="dropdown-toggle" data-bs-toggle="dropdown" style="text-decoration: none;">
                        <img src="Image/chung_avatar.jpg" alt="">
                        <span id="my-username" style="color: black;">
                            ${sessionScope.user.user_fullName}
                        </span>
                    </a>
                        
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #fdd12d;">
                        <!-- Dropdown menu items -->
                        <a class="dropdown-item"  href="#" data-toggle="modal" data-target="#exampleModal">Profile</a>
                        
                        <!--phân quyền staff-->
                        <c:if test="${sessionScope.user.user_role.equals('staff')}">
                            <a class="dropdown-item" href="#">Dashboard</a>
                        </c:if>
                        
                        <!--phân quyền admin-->
                        <c:if test="${sessionScope.user.user_role.equals('admin')}">
                            <a class="dropdown-item" href="admin_dashboard">Dashboard</a>
                        </c:if>
                            
                        
                        <a class="dropdown-item" href="logout">Đăng xuất</a>

                    </div>
                </li>
                </c:if>
                    
                
                
                    <c:if test="${sessionScope.user == null}">
                        <ul class="navbar-nav menutrai">
                            <li class="d-flex align-items-center float-right" id="btnlogin">
                                <a href="Login.jsp" style="padding: 8px; text-decoration: none; text-shadow: 0px 0px 1px #2c464f; color: #2c464f;">
                                    <i class="fa fa-user" style="color: #2c464f"></i>
                                    Đăng nhập
                                </a>

                            </li>
                        </ul>
                        <ul class="navbar-nav menutrai">
                            <li class="d-flex align-items-center float-right" id="btnlogin">
                                <a href="Register.jsp" style="padding: 8px; text-decoration: none; text-shadow: 0px 0px 1px #2c464f; color: #2c464f;">
                                    <i class="fa fa-user" style="color: #2c464f"></i>
                                    Đăng ký
                                </a>

                            </li>
                        </ul>
                    </c:if>
                
                
                </div>

        </header>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


       <!-- my profile -->
       <div class="modal fade" id="exampleModal" tabindex="-1"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-dialog-scrollable">
               <div class="modal-content">
                   <div class="modal-header">
                       <h5 class="modal-title" id="exampleModalLabel">Modal
                           title</h5>
                       <button type="button" class="close"
                               data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                       </button>
                   </div>
                   <div class="modal-body">
                       <form class="form-info">
                           <div class="form-group">
                               <label for="user_id">UserId</label>
                               <input type="text" id="user_id"
                                      class="form-control"
                                      placeholder="UserID" readonly>
                           </div>
                           <div class="form-group">
                               <label for="user_fullname">Fullname</label>
                               <input type="text" class="form-control" id="user_fullname"
                                      placeholder="Fullname" readonly>
                           </div>
                           <div class="form-group">
                               <label for="user_mail">Email</label>
                               <input type="email" class="form-control"
                                      placeholder="Email"
                                      id="user_email" readonly>
                           </div>

                           <div class="form-group">
                               <label for="user_password">Password</label>
                               <input type="password" class="form-control"
                                      id="user_password" placeholder="Password" readonly>
                           </div>
                           <div class="form-group">
                               <label for="user_dob">Date of birth</label>
                               <input type="date" class="form-control"
                                      id="user_dob" name="dateInput" readonly>
                           </div>
                           <div class="form-group">
                               <label for="user_address">Address</label>
                               <input type="text" class="form-control"
                                      id="user_address"  placeholder="Address" readonly>
                           </div>
                           <div class="form-group">
                               <label for="user_phoneNum">Phone Number</label>
                               <input type="number" class="form-control" id="user_phoneNum"
                                      placeholder="Phone Number" readonly>
                           </div>
                           <div class="form-group">
                               <label for="user_iden">Identification</label>
                               <input type="number" class="form-control"
                                      id="user_iden" placeholder="Identification" readonly>
                           </div>

                       </form>
                   </div>
                   <div class="modal-footer">
                       <button id="btn-edit" type="button"
                               onclick="editInfo()" class="btn btn-primary">Edit</button>
                       <div id="btn-sentRequest"></div>
                   </div>
               </div>
           </div>
       </div>
       
       <!--change password-->
       <div class="modal fade" id="myModal">
           <div class="modal-dialog">
               <div class="modal-content">
                   <!-- Thêm nội dung modal ở đây -->
                   <div class="modal-header">
                       <h4 class="modal-title">Change password</h4>
                       <button type="button" class="close" data-dismiss="modal">&times;</button>
                   </div>
                   <!-- old password -->
                   <div class="modal-body">
                       <div class="form-group">
                           <label for="Password">Enter Old Password</label>
                           <input type="password" class="form-control"
                                  placeholder="Password" id="oldPassword" required="">
                       </div>
                       <!-- new password -->
                       <div class="form-group">
                           <label for="Password">New Password</label>
                           <input type="password" class="form-control"
                                  placeholder="Password" id="newPassword" required="">
                       </div>
                       <!-- renew password -->
                       <div class="form-group">
                           <label for="Password">Confirm Password</label>
                           <input type="password" class="form-control"
                                  placeholder="Password" id="cfPassword" required="">
                       </div>
                   </div>
                   <div class="modal-footer">
                       <button type="button" class="btn btn-secondary"
                               data-dismiss="modal" onclick="changePassword()">Change
                           password</button>
                   </div>
               </div>
           </div>
       </div>
 <script>
<!--info user-->
        let data;
        let JsonData;
        function fetchData()
        {
                                               var xhr = new XMLHttpRequest();
                                       xhr.open("GET", "DislayInfo", true);
                                       xhr.onreadystatechange = function () {
                                           if (xhr.readyState === 4 && xhr.status === 200) {
                                                   JsonData = xhr.responseText;
                                                   data = JSON.parse(xhr.responseText);
                                                   document.getElementById("user_id").value = data.user_id;
                                                   document.getElementById("user_fullname").value = data.user_fullname;
                                                   document.getElementById("user_email").value = data.user_email;
                                                   document.getElementById("user_password").value = data.user_password;
                                                   document.getElementById("user_dob").value = data.user_dob;
                                                   document.getElementById("user_address").value = data.user_address;
                                                   document.getElementById("user_phoneNum").value = data.user_phoneNum;
                                                   document.getElementById("user_iden").value = data.user_iden;

                                               }
                                           };
                                           xhr.send();
            }
                                           
                
                
            fetchData();
            function editInfo() 
                    
            
                                           {
                                                   var inputs = document.querySelectorAll('.form-info input');

                                           for (var i = 0; i < inputs.length; i++) {
                                               if (i != 0) {
                                                   inputs[i].removeAttribute('readonly'); // Xóa thuộc tính readOnly
                                           }

                                       }
                                       ;
                                       $(document).ready(function () {
                                           // Lắng nghe sự kiện click trên ô input
                                           $("#user_password").click(function () {
                                                   // Hiển thị modal

                                                   $("#exampleModal").modal('toggle');
                                                   $("#myModal").modal();

                                               });
                                           });
                                           let btn_edit = document.getElementById('btn-edit');
                                           btn_edit.style.display = 'none';
                                           let btn_sentRequest = document.getElementById('btn-sentRequest');
                                           btn_sentRequest.innerHTML = '<button type="submit" onclick="saveInfo()" class="btn btn-primary">Save</button>';

            }
                                           
                        
                        
            //Đổi password
                        
                        
            function changePassword(){

                                                   const oldPassword = $('#oldPassword').val();
                                           const newPassword = $('#newPassword').val();
                                           const cfPassword = $('#cfPassword').val();
                                           //   so sánh old password with object.password
                                           if (data.user_password != oldPassword) {
                                               alert('Enter wrong old password');
                                       }
                                       // so sánh new password with cf password

                                       else if (newPassword != cfPassword) {
                                           alert('Enter wrong confirmed password');
                                       } else {
                                               alert('Change password successfully!!');
                                           }
            }
                                           
                    
                
                
                
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
                                                       user_id: data.user_id, // Sử dụng data từ fetchData
                                                       user_fullName: document.getElementById("user_fullname").value,
                                                       user_email: document.getElementById("user_email").value,
                                                       user_password: document.getElementById("user_password").value,
                                                       user_dob: document.getElementById("user_dob").value,
                                                       user_address: document.getElementById("user_address").value,
                                                       user_phoneNum: document.getElementById("user_phoneNum").value,
                                                       user_iden: document.getElementById("user_iden").value
                                                   };

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
