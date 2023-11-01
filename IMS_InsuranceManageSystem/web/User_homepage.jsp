<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/sidebar.css">
    <title>User Panel</title>

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
        
        <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
        
        <link rel="stylesheet" href="CSS/admin_blog_dashboard.css"/>
        
        <style>
            .stats {
                font-size: 54px;
                position: absolute;
                top: 20px;
            }
        </style>

</head>

<body>
    
    <jsp:include page="Part/header.jsp"></jsp:include>


    
    <div class="container-fluid">
                <div class="row">
                    <div class="col min-vh-100 p-4">
                        <div class="container mt-5">

                            <div class="my-row row">

                                <div class="my-column1 col-md-12">
                                    <h4 style="text-align: center; font-weight: bold;">Thống kê</h4>
                                    <div class="row">
                                        
                                        
                                    <div class="col-md-3 mb-3">
                                      <div class="card text-dark h-100">
                                          <a href="User_inslist.jsp">
                                             <div class="card-body py-5"><span class="stats">36</span></div>
                                                <div class="card-footer d-flex">
                                                  Chứng nhận bảo hiểm
                                                  <span class="ms-auto">
                                                    <i class="bi bi-chevron-right"></i>
                                                  </span>
                                                </div> 
                                          </a>
                                          
                                      </div>
                                    </div>
                                        
                                    <div class="col-md-3 mb-3">
                                        <div class="card text-dark h-100">
                                          <div class="card-body py-5"><span class="stats">36</span></div>
                                          <div class="card-footer d-flex">
                                            Mua bảo hiểm
                                            <span class="ms-auto">
                                              <i class="bi bi-chevron-right"></i>
                                            </span>
                                          </div>
                                        </div>
                                      </div>
                                        
                              <div class="col-md-3 mb-3">
                                  
                                <div class="card text-dark h-100">
                                  <div class="card-body py-5"><span class="stats">36</span></div>
                                  <div class="card-footer d-flex">
                                    Yêu cầu bồi thường
                                    <span class="ms-auto">
                                      <i class="bi bi-chevron-right"></i>
                                    </span>
                                  </div>
                                </div>
                              </div>
                                        
                              <div class="col-md-3 mb-3">
                                <div class="card text-dark h-100">
                                  <div class="card-body py-5"><span class="stats">36</span></div>
                                  <div class="card-footer d-flex">
                                    Bài viết
                                    <span class="ms-auto">
                                      <i class="bi bi-chevron-right"></i>
                                    </span>
                                  </div>
                                </div>
                              </div>
                            </div>
                                    
                                    
                                    
                            
                                
                                </div>

                            
                        </div>
                    </div>
                </div>
            </div>
        </div>


    <!--Jquery-->
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- quan trong cua dropdowntable -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
    <!--<script src="JS/script.js"></script>-->
    
    
 
    
</body>

</html>