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

	<div class="container">
		<div class="row">
		
		
			<div class="col-6">

				<h1>Bill</h1>
				<h3>IT20129576</h3>
				<form id="formBill" name="formBill" method="post" action="bill.jsp">
					
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
					<input type="hidden" id="hidBillIDSave" name="hidBillIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

			
				<br>
				<div id="divBillGrid">

					<%
						Bill billObj = new Bill();
								out.print(billObj.readBill());
					%>
				</div>

			</div>
		</div>
	</div>

</body>
</html>