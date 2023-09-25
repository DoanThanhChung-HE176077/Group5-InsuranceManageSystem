<%-- 
    Document   : header
    Created on : Sep 19, 2023, 10:33:57 PM
    Author     : chun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/header.css"/>
        <!-- box incon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        
    </head>
    <body>
        <!-- navbar -->
        <header id="my-header">

            <a href="#" class="my-logo">
                <i class='bx bxs-check-shield'>
                    G5insurance_
                </i>
            </a>
            <!-- menu icon -->

            <div class="bx bx-menu" id="my-menu-icon"></div>
            <!-- nav list -->
            <ul class="my-navbar">
                <li><a href="" class="home-active">Home</a></li>
                <li><a href="" class="">category</a></li>
                <li><a href="" class="">product</a></li>
                <li><a href="" class="">about</a></li>
                <li><a href="" class="">option</a></li>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <!-- Dropdown menu items -->
                    <div>
                        <a  class="dropdown-item" href="#" data-toggle="modal" data-target="#exampleModal">
                            <i class='bx bxs-user'></i>
                            <span>Profile</span>
                        </a>
                    </div>

                    <div>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-list" aria-hidden="true"></i>
                            <span>My Insurance</span>
                        </a>
                    </div>
                    <div>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <span>item1</span>
                        </a>
                    </div>
                    <div>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <span>item2</span>
                        </a>
                    </div>
                    <!-- ---- -->
                    <div class="dropdown-divider"></div>
                    <div>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-sign-out" aria-hidden="true"></i>
                            <span>Log out</span>
                        </a>
                    </div>
                </div>
            </ul>
            <!-- pro5 -->
            <div class="my-profile">
                <!--show pro5 when log-->
                <img src="Image/chung_avatar.jpg" alt="">
                <span id="my-username">Doan Thanh Chung</span>
                <a href="#">
                    <i class="bx bx-caret-down"></i>

                </a>


                <!--neu chua dang nhap thi:-->
                <!--                 <ul class="my-navbar">
                                    <li><a href="" class="">Log in</a></li>
                                    <li><a href="" class="">Sign up</a></li>
                                </ul>-->
            </div>

        </header>
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
            // Get the "option" link element
            var optionLink = document.querySelector('.my-navbar li:nth-child(5) a');
            // Get the dropdown menu element
            var dropdownMenu = document.querySelector('.dropdown-menu');
            // Add a click event listener to the "option" link
            optionLink.addEventListener('click', function (e) {
                // Prevent the default link behavior (e.g., navigating to a new page)
                e.preventDefault();
                // Toggle the display of the dropdown menu
                if (dropdownMenu.style.display === 'block') {
                    dropdownMenu.style.display = 'none';
                } else {
                        dropdownMenu.style.display = 'block';
                    }
                });
        </script>

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
                            JsonData= xhr.responseText;
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
        <!--end info user-->

    </body>
</html>
