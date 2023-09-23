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
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-scrollable">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Information of User   </h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="form-info">
                                                <div class="form-group">
                                                    <label for="UserId">UserId</label>
                                                    <input type="text" id="UserId" class="form-control" placeholder="UserID" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="Mail">Mail</label>
                                                    <input id="email" type="email" class="form-control" placeholder="Email" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="Password">Password</label>
                                                    <input id="password" type="password" class="form-control" placeholder="Password" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="Fullname">Fullname</label>
                                                    <input id="fullname" type="text" class="form-control" placeholder="Fullname" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="DateOfBirth">Date of birth</label>
                                                    <input id="dob" type="date" class="form-control" id="dateInput" name="dateInput" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="Address">Address</label>
                                                    <input id="address" type="text" class="form-control" placeholder="Address" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="PhoneNumber">Phone Number</label>
                                                    <input id="phonenumber" type="number" class="form-control" placeholder="Phone Number" readonly>
                                                </div>


                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button id="btn-edit" type="button" onclick="editInfo()" class="btn btn-primary">Edit</button>
                                            <div id="btn-sentRequest"></div>
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

                            function fetchData()
                                                {
                                                        var xhr = new XMLHttpRequest();
                                                        xhr.open("GET", "Info_user", true);
                                                        xhr.onreadystatechange = function () {
                                                        if (xhr.readyState === 4 && xhr.status === 200) {
                                                        var data = JSON.parse(xhr.responseText);
                                                                document.getElementById("UserId").value = data.userId;
                                                                document.getElementById("email").value = data.email;
                                                                document.getElementById("password").value = data.password;
                                                                document.getElementById("fullname").value = data.fullname;
                                                                document.getElementById("dob").value = data.dob;
                                                                document.getElementById("address").value = data.address;
          document.getElementById("phonenumber").value = data.phonenumber;
                       
                    }
                };
                xhr.send();
            }
            fetchData();
      function editInfo() {
        var inputs = document.querySelectorAll('.form-info input');
        
        for (var i = 0; i < inputs.length; i++) {
            if(i != 0){
                inputs[i].removeAttribute('readonly'); // Xóa thuộc tính readOnly
            }
            
        };
        
        let btn_edit = document.getElementById('btn-edit');
        btn_edit.style.display = 'none';
        let btn_sentRequest = document.getElementById('btn-sentRequest');
        btn_sentRequest.innerHTML = '<button type="submit" onclick="sentRequest()" class="btn btn-primary">Sent request</button>'; 
    }
   function sentRequest() {
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
        if (validateEmail(emailValue)) {
            window.location.href = 'https://www.google.com';
        } else {
            alert('Email không hợp lệ.');
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
