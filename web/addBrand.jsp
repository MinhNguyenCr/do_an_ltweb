<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Add Brand</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- BOOTSTRAP STYLES-->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
        <link href="assets/css/custom.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <!-- TABLE STYLES-->
        <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
        <style>
            .delete-link {
                color: white;
            }
        </style>
        <script type="text/javascript">
            function doDelete(uid) {
                if (confirm("Are you sure to delete Human with id =" + uid)) {
                    window.location = "deleteac?uid=" + uid;
                }
            }

            function validateForm() {
                var name = document.getElementById("brandName").value;
                if (name === "") {
                    alert("Bạn cần nhập tên brand");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="homeadmin">Trang Quản Lý</a>
                </div>
                <div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;"> 
                    Last access: 30 May 2014 &nbsp; 
                    <a href="logout" class="btn btn-danger square-btn-adjust">Logout</a> 
                </div>
            </nav>
            <!-- /. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li class="text-center">
                            <img src="img/logo1.png" class="user-image img-responsive" />
                        </li>
                        <li>
                            <a href="homeadmin">
                                <img src="img/home.png" alt="Home" style="width: 35px; height: 35px; margin-left:5px; margin-right:10px;">
                                    Trang chủ
                            </a>
                        </li>
                        <li>
                            <a href="manageproduct">
                                <img src="img/iconpm.png" alt="Home" style="width: 38px; height: 38px; margin-left:5px; margin-right:7px;">
                                    Quản Lý Sản Phẩm
                            </a>
                        </li>
                        <li>
                            <a href="brandmanagerment">
                                <img src="img/iconbrand.png" alt="Home" style="width: 40px; height: 40px; margin-left:5px; margin-right:5px;">
                                    Quản Lý Nhãn Hàng
                            </a>
                        </li>
                        <li>
                            <a href="categorymanagerment">
                                <img src="img/iconcategory.png" alt="Home" style="width: 40px; height: 40px; margin-left:5px; margin-right:5px;">
                                    Quản Lý Loại Sản Phẩm
                            </a>
                        </li>
                        <li>
                            <a href="accountManagerment.jsp">
                                <img src="img/iconuser.png" alt="Home" style="width: 35px; height: 35px; margin-left:5px; margin-right:10px;">
                                    Quản Lý Tài Khoản
                            </a>
                        </li>

                        <li>
                            <a href="statistic">
                                <img src="img/statistic.png" alt="Home" style="width: 35px; height: 35px; margin-left:5px; margin-right:10px;">
                                    Thống Kê
                            </a>
                        </li>
                        <li>
                            <a href="roleManagerment.jsp">
                                <img src="img/role.png" alt="Home" style="width: 30px; height: 30px; margin-left:5px; margin-right:15px;">
                                    Phân Quyền
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- /. NAV SIDE  -->
            <div id="page-wrapper">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>Quản Lý Nhãn Hàng</h2>
                            <h5>Welcome ${sessionScope.acc.fullName}, Love to see you back.</h5>
                            <h5 style="color: red">${requestScope.mess}</h5>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Thêm Nhãn Hàng
                                </div>
                                <div class="panel-body">
                                    <form id="brandForm" role="form" action="addbrand" method="post">
                                        <div class="form-group">
                                            <label>Tên Nhãn Hàng</label>
                                            <input type="text" id="brandName" class="form-control" name="name" value="" required />
                                        </div>
                                        <button type="submit" class="btn btn-primary">Thêm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- /. PAGE WRAPPER  -->
        </div>
        <!-- /. WRAPPER  -->
        <!-- SCRIPTS AT THE BOTTOM TO REDUCE THE LOAD TIME -->
        <!-- JQUERY SCRIPTS -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="assets/js/jquery.metisMenu.js"></script>
        <!-- DATA TABLE SCRIPTS -->
        <script src="assets/js/dataTables/jquery.dataTables.js"></script>
        <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
                $(document).ready(function () {
                    $('#dataTables-example').dataTable();
                });
        </script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>
    </body>
</html>