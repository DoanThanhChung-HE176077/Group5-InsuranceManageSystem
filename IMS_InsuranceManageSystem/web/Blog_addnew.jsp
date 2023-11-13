<%-- 
    Document   : Staff_Blog_add
    Created on : Oct 8, 2023, 8:51:45 PM
    Author     : pc minh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Blog</title>

        <!-- bootstrap5 -->
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

        <!--ckeditor5-->
        <script src="https://cdn.ckeditor.com/ckeditor5/40.0.0/classic/ckeditor.js"></script>

        <style>
            label{
                font: caption;
            }
            .my-form {
                border-radius: 10px;
                background-color: #fff;
                margin-top: 100px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            }
        </style>

    </head>
    <body>
        
        <!--header-->
        <jsp:include page="Part/header.jsp"></jsp:include>


            <!--sidebar-->
        <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-min-vh-100 p-4">
                    <div class="container mt-5" style="padding-top: 100px">
                        <div class="my-form row">
                            <h2>Tạo Blog</h2>
                <!--            <form id="blogForm" action="blog_add?user_id=${user.getUser_id()}" method="post" enctype="multipart/form-data">-->
                            <form id="blogForm" action="blog_add?user_id=${user.getUser_id()}" method="post" enctype="multipart/form-data">
                                <!--title-->
                                <div class="mb-3">
                                    <label for="title" class="form-label">Tiêu đề của Blog</label>
                                    <input type="text" class="form-control" id="title" name="title" required>
                                </div>
                                <!--image-->
                                <div class="mb-3">
                                    <label for="image" class="form-label">Tải lên hình ảnh</label>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="input-group mb-3">
                                                <input type="file" class="form-control" id="file" name="file" accept="image/*" onchange="loadFile(event)" required>
                                            </div>
                                            <img id="output" src="" alt="Image Preview" class="img-thumbnail mt-3">
                                        </div>
                                    </div>
                                </div>
                                <!--user_id from session -> hidden-->
                                <input type="text" value="${user.getUser_id()}" name="user_id" type="hidden" hidden>
                                <!--blog type-->
                                <div class="mb-3">
                                    <label for="blogType" class="form-label">Loại Blog</label>
                                    <select class="form-select" id="blogType" name="blogType">
                                        <c:forEach items="${listType}" var="type">
                                            <option value="${type.getBl_type_name()}">${type.getBl_type_name()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <!--blog tag-->
                                <div class="mb-3">
                                    <label for="tags" class="form-label">Chọn Tag</label>
                                    <select class="form-select" id="blogTag" name="blogTag">
                                        <c:forEach items="${listTag}" var="tag">
                                            <option value="${tag.getBl_tag_tagname()}">${tag.getBl_tag_tagname()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <!--blog content-->
                                <div class="mb-3">
                                    <label for="blogContent" class="form-label">Nội dung bài viết</label>
                                    <!-- CKEditor container -->
                                    <textarea name="editor" id="editor"></textarea>
                                </div>
                                <!--creationdate-->
                                <div class="mb-3">
                                    <label for="creationDate">Ngày tạo</label>
                                    <input type="text" class="" name="creationdate" id="creation-date" readonly>
                                </div>
                                <!--status-->
                                <div class="mb-3">
                                    <label class="form-label">Trạng thái Blog</label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" id="active" name="status" value="Active" required>
                                        <label class="form-check-label" for="active">
                                            Có hiệu lực
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" id="disable" name="status" value="Disable" required>
                                        <label class="form-check-label" for="disable">
                                            Vô hiệu hóa
                                        </label>
                                    </div>
                                </div>
                                <!-- Submit Button -->
                                <input class="btn btn-primary" onclick="createCourse()" type="submit" id="submit"value="Tạo bài viết" >
                                <a type="button" href="blog_list" class="btn btn-secondary mybtn">
                                    Trở lại
                                </a>
                            </form>
                        </div>
                    </div>
                    
                </div>
                
            </div>
            
        </div>
        
        <script>
            ClassicEditor
                    .create(document.querySelector('#editor') )
                    .then(newEditor => {
                        editor = newEditor;
                    })
                    .catch(error => {
                        console.error(error);
                    });
                    
        </script>
        <script>
            //truyen data tu ckeditor box
            var createCourse = () => {
                var editor = $("#editor").val();
                $.ajax({
                    url: "blog_add",
                    type: "post", //send it through get method
                    data: {
                        editor: editor,
                        dataType: "text", // The expected data type is text
                    },
                    success: function (data) {
                        $("#messageFromServlet").text(data);
                    },
                    error: function (xhr, status, error) {
                        //Do Something to handle error
                        console.log("AJAX Error: " + error);
                    }
                });
            };

            // Get the current date
            var currentDate = new Date();

            // Extract day, month, and year components
            var day = currentDate.getDate();
            var month = currentDate.getMonth() + 1; // Note: Month is zero-based, so add 1.
            var year = currentDate.getFullYear();
            // Ensure leading zeros for day and month if necessary
            day = (day < 10) ? '0' + day : day;
            month = (month < 10) ? '0' + month : month;
            // Format the date as "dd-mm-yyyy"
            var formattedDate = day + '-' + month + '-' + year;
            // Set the formatted date as the input value
            document.getElementById('creation-date').value = formattedDate;

            //preview image
            var loadFile = function (event) {
                var output = document.getElementById('output');
                output.src = URL.createObjectURL(event.target.files[0]);
                output.onload = function () {
                    URL.revokeObjectURL(output.src); // free memory
                };
            };
        </script>

    </body>
</html>
