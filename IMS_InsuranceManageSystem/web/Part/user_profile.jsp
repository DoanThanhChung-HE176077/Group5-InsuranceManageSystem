<%-- 
    Document   : user_profile
    Created on : Oct 2, 2023, 8:26:03 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <!-- bootstrap -->
          <link rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
       
        <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <body>
        
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
<!--                               <label for="user_id">UserId</label>-->
                               <input type="text" id="user_id"
                                      class="form-control"
                                      placeholder="UserID" hidden>
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
<!--                               <label for="user_password">Password</label>-->
                               <input type="password" class="form-control"
                                      id="user_password" placeholder="Password" hidden>
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
                        <div id="btn-changePassword"></div>
                       <div id="btn-Save"></div>
                      
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
                                       
                                           let btn_edit = document.getElementById('btn-edit');
                                           
                                           btn_edit.style.display = 'none';
                                           let btn_Save = document.getElementById('btn-Save');
                                           let btn_changePassword = document.getElementById('btn-changePassword');
                                           let btn_sentRequest = document.getElementById('btn-sentRequest');
                                           btn_Save.innerHTML = '<button type="submit" onclick="saveInfo()" class="btn btn-primary">Save</button>';
                                           btn_changePassword.innerHTML = '<button type="submit" onclick="changePassword()" class="btn btn-primary">Change password</button>';

            }
                                           
                        
                        
            //Đổi password
                        
                        
            function changePassword(){

                                                window.location.href = 'ChangePassword.jsp';
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
