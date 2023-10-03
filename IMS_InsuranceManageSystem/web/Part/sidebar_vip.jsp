<%-- 
    Document   : sidebar_vip
    Created on : Oct 4, 2023, 5:12:56 AM
    Author     : thant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>blog dashboard</title>
        
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
        
        <style>
            .modal-backdrop.show {
                opacity: 0.1 !important;
            }
            
            .btn-sidebar {
            /* Custom styles for the button */
            border: 1px solid #2c464f;
            /* Border color (blue) */
            background-color: transparent;
            /* Transparent background */
            color: #2c464f;
            /* Text color (blue) */
            width: 50px;
            /* Set a fixed width */
            height: 50px;
            /* Set a fixed height */
            transition: background-color 0.3s, color 0.3s, border-color 0.3s;
            /* Smooth transitions */
            
        }

        .btn-sidebar:hover {
            background-color: #fdd12d;
            /* Background color on hover (blue) */
            color: #fff;
            /* Text color on hover (white) */
            border-color: #fdd12d;
            /* Border color on hover (blue) */
        }
        </style>
    </head>
    <body>
        <div style="
            display: float;
            position: absolute;
            top: 100px;
            z-index: 10;">
            <button class="btn-sidebar btn" data-bs-toggle="offcanvas"
                data-bs-target="#offcanvas">
            <i class="fa-solid fa-list fs-3 "></i>
        </button>
        </div>
        
        
        
        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvas" data-bs-keyboard="false"
             data-bs-scroll="true" style="width:  250px;">
            <div class="offcanvas-header">
                <h6 class="offcanvas-title d-none d-sm-block" id="offcanvas"></h6>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            
            <div class="offcanvas-body px-0">
                <ul class="list-group" style="padding-top: 50px;">
                    <li class="list-group-item my-btn1">
                        <a href="#" class="my-sidebar-item">
                            <i class="fas fa-home"></i> Home
                        </a>
                    </li>
                    <li class="list-group-item my-btn1">
                        <a href="#" class="my-sidebar-item">
                            <i class="fas fa-user"></i> Manage User
                        </a>
                    </li>
                    <li class="list-group-item my-btn1">
                        <a href="#" class="my-sidebar-item">
                            <i class="fas fa-blog"></i> Manage Blog
                        </a>
                    </li>
                    <li class="list-group-item my-btn1">
                        <a href="#" class="my-sidebar-item">
                            <i class="fas fa-users"></i> Manage Staff
                        </a>
                    </li>
                    <li class="list-group-item my-btn1">
                        <a href="#" class="my-sidebar-item">
                            <i class="fas fa-shield-alt"></i> Manage Insurance Product
                        </a>
                    </li>
                </ul>
            </div>

        </div>
    </body>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
