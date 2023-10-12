<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/admin_dashboard.css">
    <title>Admin Panel</title>

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
        
        
        
        

</head>

<body>
    
    <jsp:include page="Part/header.jsp"></jsp:include>


    <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>
    
    
    <div class="container-fluid">
                <div class="row">
                    <div class="col min-vh-100 p-4">
                        <div class="container mt-5">

                            <div class="my-row row">

                                <div class="my-column1 col-md-8">
                                    <h4>Dashboard</h4>
                                    <div class="row">
                                    <div class="col-md-3 mb-3">
                                      <div class="card bg-primary text-white h-100">
                                        <div class="card-body py-5">Primary Card</div>
                                        <div class="card-footer d-flex">
                                          View Details
                                          <span class="ms-auto">
                                            <i class="bi bi-chevron-right"></i>
                                          </span>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="col-md-3 mb-3">
                                <div class="card bg-warning text-dark h-100">
                                  <div class="card-body py-5">Warning Card</div>
                                  <div class="card-footer d-flex">
                                    View Details
                                    <span class="ms-auto">
                                      <i class="bi bi-chevron-right"></i>
                                    </span>
                                  </div>
                                </div>
                              </div>
                              <div class="col-md-3 mb-3">
                                <div class="card bg-success text-white h-100">
                                  <div class="card-body py-5">Success Card</div>
                                  <div class="card-footer d-flex">
                                    View Details
                                    <span class="ms-auto">
                                      <i class="bi bi-chevron-right"></i>
                                    </span>
                                  </div>
                                </div>
                              </div>
                              <div class="col-md-3 mb-4">
                                <div class="card bg-danger text-white h-100">
                                  <div class="card-body py-5">Danger Card</div>
                                  <div class="card-footer d-flex">
                                    View Details
                                    <span class="ms-auto">
                                      <i class="bi bi-chevron-right"></i>
                                    </span>
                                  </div>
                                </div>
                              </div>
                            </div>
                                    
                                    
                                    
                            <!--Chart-->

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="card h-100">
                                        <div class="card-header">
                                            <span class="me-2"><i class="bi bi-bar-chart-fill"></i></span>
                                            Area Chart Example
                                        </div>
                                        <div class="card-body">
                                            <canvas class="chart" width="400" height="200"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="card h-100">
                                        <div class="card-header">
                                            <span class="me-2"><i class="bi bi-bar-chart-fill"></i></span>
                                            Area Chart Example
                                        </div>
                                        <div class="card-body">
                                            <canvas class="chart" width="400" height="200"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                
                                </div>

                            <div class="my-column1 col-md-3">
                                
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>


    <!--Jquery-->
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    

    <script>
    document.addEventListener('DOMContentLoaded', function () {
        var data = {
            labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
            datasets: [{
                label: 'Dataset 1',
                data: [12, 19, 3, 5, 2, 3, 10],
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1,
                fill: true  
            }]
        };

        var ctx1 = document.getElementsByClassName('chart')[0].getContext('2d');
        var myChart1 = new Chart(ctx1, {
            type: 'line',  
            data: data,
            options: {
            }
        });

        var ctx2 = document.getElementsByClassName('chart')[1].getContext('2d');
        var myChart2 = new Chart(ctx2, {
            type: 'line',  
            data: data,
            options: {
            }
        });
    });
</script>
</body>

</html>