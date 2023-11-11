<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="dao.ChartDAO" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/sidebar.css">
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
        

        <!-- font awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-
              iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/Zpi
              Bw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- bootstrap5 5icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        
        <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
        
        
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


    <jsp:include page="Part/sidebar_vip.jsp"></jsp:include>
    
    
    
    <div class="container-fluid">
                <div class="row">
                    <div class="col min-vh-100 p-4">
                        <div class="container mt-5">

                            <div class="my-row row">

                                <div class="my-column1 col-md-8">
                                    <h4 style="text-align: center; font-weight: bold;">Thống kê</h4>
                                    <div class="row">
                                    <div class="col-md-3 mb-3">
                                      <div class="card bg-primary text-white h-100">
                                          <div class="card-body py-5"><span class="stats">${ChartDAO.getUsersNumber()}</span></div>
                                        <div class="card-footer d-flex">
                                          Số người dùng
                                          <span class="ms-auto">
                                            <i class="bi bi-chevron-right"></i>
                                          </span>
                                        </div>
                                      </div>
                                    </div>
                                        
                                    <div class="col-md-3 mb-3">
                                <div class="card bg-warning text-dark h-100">
                                  <div class="card-body py-5"><span class="stats">${ChartDAO.getPendingContracts()}</span></div>
                                  <div class="card-footer d-flex">
                                    Yêu cầu hợp đồng
                                    <span class="ms-auto">
                                      <i class="bi bi-chevron-right"></i>
                                    </span>
                                  </div>
                                </div>
                              </div>
                                        
                              <div class="col-md-3 mb-3">
                                  
                                <div class="card bg-success text-white h-100">
                                  <div class="card-body py-5"><span class="stats">${ChartDAO.getPendingClaims()}</span></div>
                                  <div class="card-footer d-flex">
                                    Yêu cầu bồi thường
                                    <span class="ms-auto">
                                      <i class="bi bi-chevron-right"></i>
                                    </span>
                                  </div>
                                </div>
                              </div>
                                        
                              <div class="col-md-3 mb-3">
                                <div class="card bg-danger text-white h-100">
                                  <div class="card-body py-5"><span class="stats">${ChartDAO.getPendingBlogs()}</span></div>
                                  <div class="card-footer d-flex">
                                    Bài viết
                                    <span class="ms-auto">
                                      <i class="bi bi-chevron-right"></i>
                                    </span>
                                  </div>
                                </div>
                              </div>
                            </div>
                                    
                                    
                                    
                            <!--Chart-->

                            <div class="row">
                                <div class=" mb-3">
                                    <div class="card h-100">
                                        <div class="card-header">
                                            <span class="me-2"><i class="bi bi-bar-chart-fill"></i></span>
                                            Thống kê hợp đồng
                                        </div>
                                        <div class="card-body">
                                            <canvas class="chart bar-chart1" width="400" height="200"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class=" mb-3">
                                    <div class="card h-100">
                                        <div class="card-header">
                                            <span class="me-2"><i class="bi bi-bar-chart-fill"></i></span>
                                            Thống kê bồi thường
                                        </div>
                                        <div class="card-body">
                                            <canvas class="chart bar-chart2" width="400" height="200"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                                
                                </div>

                            <div class="my-column1 col-md-4">
                                <!--pie chart-->
                                <div class="col-md-12 mt-5 mb-3">
                                    <div class="card h-100">
                                    <div class="card-header">
                                        <span class="me-2"><i class="bi bi-pie-chart"></i></span>
                                        Tỉ lệ bồi thường
                                    </div>
                                    <div class="card-body">
                                        <canvas class="chart" id="myPieChart" width="400" height="200"></canvas>
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
    
    
    <script>
    $(document).ready(function () {
        // Retrieve data
        
        var chartData = ${ChartDAO.getContractsByMonth()};
        var chartData2 = ${ChartDAO.getClaimsByMonth()};
        
        const barCharts = document.querySelectorAll(".bar-chart1");
        const barCharts2 = document.querySelectorAll(".bar-chart2");

        barCharts.forEach(function (chart) {
            var ctx = chart.getContext("2d");
            var myChart = new Chart(ctx, {
                type: "bar",
                data: {
                    labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6",
                        "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
                    datasets: [
                        {
                            label: "Số bảo hiểm đăng kí mới",
                            data: [chartData[0], chartData[1], chartData[2], chartData[3], chartData[4],
                                chartData[5], chartData[6], chartData[7], chartData[8], chartData[9],
                                chartData[10], chartData[11] ],
                            backgroundColor: [
                                "rgba(255, 99, 132, 0.2)",
                                "rgba(54, 162, 235, 0.2)",
                                "rgba(255, 206, 86, 0.2)",
                                "rgba(75, 192, 192, 0.2)",
                                "rgba(153, 102, 255, 0.2)",
                                "rgba(255, 159, 64, 0.2)",
                                
                                "rgba(255, 99, 132, 0.2)",
                                "rgba(54, 162, 235, 0.2)",
                                "rgba(255, 206, 86, 0.2)",
                                "rgba(75, 192, 192, 0.2)",
                                "rgba(153, 102, 255, 0.2)",
                                "rgba(255, 159, 64, 0.2)"
                                
                            ],
                            borderColor: [
                                "rgba(255, 99, 132, 1)",
                                "rgba(54, 162, 235, 1)",
                                "rgba(255, 206, 86, 1)",
                                "rgba(75, 192, 192, 1)",
                                "rgba(153, 102, 255, 1)",
                                "rgba(255, 159, 64, 1)",
                                
                                "rgba(255, 99, 132, 1)",
                                "rgba(54, 162, 235, 1)",
                                "rgba(255, 206, 86, 1)",
                                "rgba(75, 192, 192, 1)",
                                "rgba(153, 102, 255, 1)",
                                "rgba(255, 159, 64, 1)"
                            ],
                            borderWidth: 1
                        }
                    ]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        });
        
        //chart 2
        barCharts2.forEach(function (chart) {
            var ctx = chart.getContext("2d");
            var myChart2 = new Chart(ctx, {
                type: "bar",
                data: {
                    labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6",
                        "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
                    datasets: [
                        {
                            label: "Số yêu cầu bồi thường",
                            data: [chartData2[0], chartData2[1], chartData2[2], chartData2[3], chartData2[4],
                                chartData2[5], chartData2[6], chartData2[7], chartData2[8], chartData2[9],
                                chartData2[10], chartData2[11]],
                            backgroundColor: [
                                "rgba(255, 99, 132, 0.2)",
                                "rgba(54, 162, 235, 0.2)",
                                "rgba(255, 206, 86, 0.2)",
                                "rgba(75, 192, 192, 0.2)",
                                "rgba(153, 102, 255, 0.2)",
                                "rgba(255, 159, 64, 0.2)",
                                
                                "rgba(255, 99, 132, 0.2)",
                                "rgba(54, 162, 235, 0.2)",
                                "rgba(255, 206, 86, 0.2)",
                                "rgba(75, 192, 192, 0.2)",
                                "rgba(153, 102, 255, 0.2)",
                                "rgba(255, 159, 64, 0.2)"
                                
                            ],
                            borderColor: [
                                "rgba(255, 99, 132, 1)",
                                "rgba(54, 162, 235, 1)",
                                "rgba(255, 206, 86, 1)",
                                "rgba(75, 192, 192, 1)",
                                "rgba(153, 102, 255, 1)",
                                "rgba(255, 159, 64, 1)",
                                
                                "rgba(255, 99, 132, 1)",
                                "rgba(54, 162, 235, 1)",
                                "rgba(255, 206, 86, 1)",
                                "rgba(75, 192, 192, 1)",
                                "rgba(153, 102, 255, 1)",
                                "rgba(255, 159, 64, 1)"
                            ],
                            borderWidth: 1
                        }
                    ]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        });

        // Create a new Chart object for the pie chart
        var canvas = document.getElementById("myPieChart");
        var myPieChart = new Chart(canvas, {
            type: "pie",
            data: {
                labels: ["Bảo hiểm TNDS", "Bảo hiểm Vật Chất"],
                datasets: [{
                    label: "My Dataset",
                    data: [60, 40],
                    backgroundColor: [
                        "rgba(255, 99, 132, 0.2)",
//                        "rgba(75, 192, 192, 0.2)",
                        "rgba(54, 162, 235, 0.2)",
                    ],
                    borderColor: [
                        "rgba(255, 99, 132, 1)",
//                        "rgba(75, 192, 192, 1)",
                        "rgba(54, 162, 235, 1)",
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                legend: {
                    display: true
                }
            }
        });

        $(".data-table").each(function (_, table) {
            $(table).DataTable();
        });
    });
</script>
    
    
</body>

</html>