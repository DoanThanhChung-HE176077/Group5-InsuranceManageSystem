<%-- 
    Document   : UserProfile
    Created on : Oct 17, 2023, 12:06:37 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/user_profile.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    </head>
 
    <body style="background-color: hsl(47,98%,58%);">
            <jsp:include page="Part/header.jsp"></jsp:include>
            <form class="form-info">
            <div style="margin-top: 100px" class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img id="profileImage" class="rounded-circle mt-5" width="150px" src=""></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
               
                <div class="row mt-3">
                     <div class="col-md-12">  <input type="text" id="user_id2"
                                      class="form-control"
                                      placeholder="UserID" hidden></div>
                    <div class="col-md-12"><label class="labels">Fullname</label><input type="text" class="form-control" id="user_fullname2"
                                      placeholder="Fullname" readonly></div>
                    <div class="col-md-12"><label class="labels">Email</label><input type="email" class="form-control"
                                      placeholder="Email"
                                      id="user_email2" readonly></div>
                     <input type="password" class="form-control"
                                      id="user_password2" placeholder="Password" hidden>
                    <div class="col-md-12"><label class="labels">Date Of Birth </label> <input type="date" class="form-control"
                                      id="user_dob2" name="dateInput" readonly></div>
                    <div class="col-md-12"><label class="labels">Address</label><input type="text" class="form-control"
                                      id="user_address2"  placeholder="Address" readonly></div>
                    <div class="col-md-12"><label class="labels">Phone Number</label><input type="number" class="form-control" id="user_phoneNum2"
                                      placeholder="Phone Number" readonly></div>
                    <div class="col-md-12"><label class="labels">Identification</label> <input type="number" class="form-control"
                                      id="user_iden2" placeholder="Identification" readonly></div>
                     <div class="col-md-12"><label class="labels">Trạng thái tài khoản</label> 
                         <input type="text" class="form-control" value="Đã xác minh." readonly></div>
                </div>
                
               <div class="modal-footer">
                       <button id="btn-edit1" type="button"
                               onclick="editInfo()" class="btn btn-primary">Chỉnh sửa thông tin</button>
                        <div id="btn-changePassword"></div>
                       <div id="btn-Save"></div>
                      
                   </div>
            </div>
        </div>
        
    </div>
</div>

</form>
<script>
<!--info user-->
let data1;
let JsonData1;
document.querySelector('.form-info').addEventListener('submit', function(event) {
    event.preventDefault(); // Ngăn chặn sự kiện mặc định của form
    // Thêm code xử lý submit ở đây nếu cần
});

function fetchData()

{
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "DislayInfo", true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            JsonData1 = xhr.responseText;
            data1 = JSON.parse(xhr.responseText);
            document.getElementById("user_id2").value = data1.user_id;
            document.getElementById("user_fullname2").value = data1.user_fullname;
            document.getElementById("user_email2").value = data1.user_email;
            document.getElementById("user_password2").value = data1.user_password;
            document.getElementById("user_dob2").value = data1.user_dob;
            document.getElementById("user_address2").value = data1.user_address;
            document.getElementById("user_phoneNum2").value = data1.user_phoneNum;
            document.getElementById("user_iden2").value = data1.user_iden;
            document.getElementById("profileImage").src = data1.user_image;

        }
    };
    xhr.send();
}




fetchData();

function editInfo() {
    var inputs = document.querySelectorAll('.form-info input');
    for (var i = 0; i < inputs.length; i++) {
        if (i != 0) {
            inputs[i].removeAttribute('readonly'); // Xóa thuộc tính readOnly
        }

    };

    let btn_edit = document.getElementById('btn-edit1');
    btn_edit.style.display = 'none';
    let btn_Save = document.getElementById('btn-Save');
    let btn_changePassword = document.getElementById('btn-changePassword');
    let btn_sentRequest = document.getElementById('btn-sentRequest');
    btn_Save.innerHTML = '<button type="submit" onclick="saveInfo()" class="btn btn-primary">Save</button>';
    btn_changePassword.innerHTML = '<button  onclick="changePassword()" class="btn btn-primary">Change password</button>';

}




//Đổi password

function changePassword() {
    window.alert('hello');
    window.location.href = 'ChangePassword.jsp';
    return false; // Ngăn chặn sự kiện mặc định của nút hoặc form
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
