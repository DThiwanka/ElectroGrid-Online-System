<%@page import="model.Bill"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
<link rel="stylesheet" href="View/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/bill.js"></script>
</head>
<body>
        <div class="container-fluid">
            <div class="jumbotron bg-light">
                <h1>ElectroGrid Systems</h1>
                <h3>Power Management</h3>
                <div class="navigation" style="float:right">
                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#">Power Management</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Billing</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Customer Management</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Help</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-header">
                            <h4>Monthly Supply Data</h4>
                        </div>
                        <div class="card-body">
                            <form id="formBill" name="formBill" method="post" action="bill.jsp" class="col">
					
					billName: 
					<input id="billName" name="billName" type="text" class="form-control form-control-sm"> <br> 
				    billAmount:
					<input id="billAmount" name="billAmount" type="text" class="form-control form-control-sm" type="number"> <br> 
					billDate: 
					<input id="billDate" name="billDate" type="text" class="form-control form-control-sm" type="date"> <br>
					NoOfTunits: 
					<input id="NoOfTunits" name="NoOfTunits" type="text" class="form-control form-control-sm"> <br> 
				    BillAr:
					<input id="BillAr" name="BillAr" type="text" class="form-control form-control-sm"> <br> 
					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
					<input type="text" id="hidBillIDSave" name="hidBillIDSave" >
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
                        </div>
                        <div class="card-footer text-muted">
                            <h6>Card footer is here</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="">
                        <h4>Supply History</h4><hr><br>
                    </div>
                    <div class="card">
                        <div class="table-responsive-md">
                            <div id="divBillGrid row">

					<%
						Bill billObj = new Bill();
								out.print(billObj.readBill());
					%>
				</div>
                        </div>
                        <div class="">
                            <nav aria-label="...">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item">
                                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">3</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">2</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">1</a>
                                    </li>
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="page-footer font-small pt-4 bg-light" style="margin-top: 2%">

                <!-- Footer Links -->
                <div class="container-fluid text-center text-md-left">

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-md-6 mt-md-0 mt-3">

                            <!-- Content -->
                            <h5 class="text-uppercase">Footer Content</h5>
                            <p>Here you can use rows and columns to organize your footer content.</p>

                        </div>
                        <!-- Grid column -->

                        <hr class="clearfix w-100 d-md-none pb-3">

                        <!-- Grid column -->
                        <div class="col-md-3 mb-md-0 mb-3">

                            <!-- Links -->
                            <h5 class="text-uppercase">Links</h5>

                            <ul class="list-unstyled">
                                <li>
                                    <a href="#!">Link 1</a>
                                </li>
                                <li>
                                    <a href="#!">Link 2</a>
                                </li>
                                <li>
                                    <a href="#!">Link 3</a>
                                </li>
                                <li>
                                    <a href="#!">Link 4</a>
                                </li>
                            </ul>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 mb-md-0 mb-3">

                            <!-- Links -->
                            <h5 class="text-uppercase">Links</h5>

                            <ul class="list-unstyled">
                                <li>
                                    <a href="#!">Link 1</a>
                                </li>
                                <li>
                                    <a href="#!">Link 2</a>
                                </li>
                                <li>
                                    <a href="#!">Link 3</a>
                                </li>
                                <li>
                                    <a href="#!">Link 4</a>
                                </li>
                            </ul>

                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                </div>
                <!-- Footer Links -->
                <!-- Copyright -->
                <div class="footer-copyright text-center py-3">� 2020 Copyright:
                    <a href="/"> MDBootstrap.com</a>
                </div>
                <!-- Copyright -->
            </footer>
        </div>
        <script>
            //Date picker
            $(function () {
                $('#reservationdate').datetimepicker({
                    format: 'L'
                });
            });
        </script>
    </body>
</html>