<%-- 
    Document   : ListProductInsurance
    Created on : Oct 4, 2023, 10:09:00 AM
    Author     : Dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Product Insurance</title>
            <link rel="stylesheet" href="CSS/ListProductInsurance.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


    </head>
    <body>
         <jsp:include page="Part/header.jsp"></jsp:include>
        <div class="banner">
          <img src="Image/banner_home2.jpg" alt="">
        </div>

        <div class="breadcrumb-list">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/IMS_InsuranceManageSystem/">Trang chủ</a></li>
              <li class="breadcrumb-item " aria-current="page"><a href="#">Xe máy</a></li>
            </ol>
          </nav>
    </div>
    <div class="container">
        <div class="row">
            
<!--            <div class="col-md-6 ">
                <div class="card sp1" style="width: 22rem;">
                    <div class="card-body">
                    <img src="Image/bao-hiem-xe-may-web.jpg" class="card-img-top" alt="...">
                      <h5 class="card-title">BẢO HIỂM TNDS XE MÁY</h5>
                      <p class="card-text">Bảo hiểm trách nhiệm dân sự xe máy đối với bên thứ ba là loại bảo hiểm Bắt Buộc...</p>
                      <a class="see-detail" href="#">Xem chi tiết</a><br/>
                     <button onclick="window.location.href='HandleFormTNDS'" class="btn btn-primary btn-buy">Mua ngay</button>

                    </div>
                  </div>
            </div>
            
            <div class="col-md-6">
                <div class="card" style="width: 22rem;">
                    <div class="card-body">
                        <img src="Image/bao-hiem-xe-may-web.jpg" class="card-img-top" alt="...">
                      <h5 class="card-title">BẢO HIỂM TNDS XE MÁY</h5>
                      <p class="card-text">Bảo hiểm trách nhiệm dân sự xe máy đối với bên thứ ba là loại bảo hiểm Bắt Buộc...</p>
                      <a class="see-detail"  href="#">Xem chi tiết</a><br/>
                     <button onclick="window.location.href='HandleFormTNDS'" class="btn btn-primary btn-buy">Mua ngay</button>
                    </div>
                  </div>
            </div>-->
            <c:forEach items="${listIP}" var="o">
                <div class="col-md-6">
                    <c:if test="${o.getIp_id() == 1}">
                        <div class="card sp1" style="width: 22rem;">
                    </c:if>
                    <c:if test="${o.getIp_id() == 2}">
                         <div class="card" style="width: 22rem;">
                    </c:if>
                        <div class="card-body">
                            <img src="Image/bao-hiem-xe-may-web.jpg" class="card-img-top" alt="...">
                            <h5 class="card-title">${o.getIp_name()}</h5>
                            <p class="card-text">${o.getIp_description()}</p>
                            <c:if test="${o.getIp_id() == 1}">
                               <a class="see-detail"  href="Describe_TNDS.jsp">Xem chi tiết</a><br/>
                            </c:if>
                            <c:if test="${o.getIp_id() == 2 }">
                               <a class="see-detail"  href="Describe_VatChat.jsp">Xem chi tiết</a><br/>
                            </c:if>
                            <!--tnds-->
                            <c:if test="${o.getIp_id() == 1}">
                                <button onclick="window.location.href='HandleFormTNDS'" class="btn btn-primary btn-buy">Mua ngay</button>
                            </c:if>
                            <!--vat chat-->
                            <c:if test="${o.getIp_id() == 2}">
<!--                                <button onclick="window.location.href='HandleFormTNDS'" class="btn btn-primary btn-buy">Mua ngay</button>-->
                                     <a href="HandleFormVatChat" class="btn btn-primary btn-buy"> Mua ngay</a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
   

    </body>
</html>
