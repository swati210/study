<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../common/link.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-sm-12" style="padding: 0px;"> 
<%@include file="common/vmenu.jsp" %>
</div>
</div>

<div class="row">
<%@include file="common/sidebar.jsp" %>

<div class="col-sm-10">

<div class="row">

<div class="col-sm-3"></div>

<div class="col-sm-6 mt-5" style="background-color:Coral;padding-top:40px;padding-bottom:20px;">
<form action="Saveassignment.jsp"method="post" enctype="multipart/form-data">

<h2 class="text-center text-primary">Upload Assignment</h2>
<hr/>
<input  type "text" class="form-control" placeholder="Title"><br/><br/>
<input type="text" class="form-control" placeholder="Description of assignment" aria-lable="#"><br/><br/>
<input type="text" class="form-control"placeholder="Date of submission" aria-lable=""><br/><br/>

<input type="text" value="Choose File"/>&emsp;&emsp;&emsp;
<input type="submit" value="Browse" class="btn btn-dark btn-lg "/><br/><br>
<input type="submit" value="save" class="btn btn-danger btn-lg"/>



</form>

</div>
<div class="col-sm-3"></div>
</div>

</div>
</div>
<!-- Third -->

<div class="row">
<div class="col-sm-12"> 
<%@include file="common/vfooter.jsp" %>
</div>
</div>
</div>

</body>
</html>