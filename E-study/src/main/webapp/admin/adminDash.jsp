<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/common/link.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="container-fluid">	
<div class="row">
<div class="col-sm-12" style="padding: 0px;"> 
<%@include file="./common/vmenu.jsp" %>
</div>
</div>
<div class="row">

<%@include file="./common/sidebar.jsp" %>

<div class="col-sm-10"style="background-color:#008080;padding-top:25px;padding-bottom:25px;"> 

<div class="row">
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="Studentmanagement.jsp" class="fa-solid fa-person"style="font-size:150px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">StudentManagement</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="UploadAssignment.jsp"class="fa-solid fa-upload"style="font-size:150px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">UploadAssignment</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="UploadStudyMaterial.jsp"class="fa-solid fa-file-arrow-up"style="font-size:150px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">UploadStudyMaterial</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
</div>

<!-- second row start -->

<div class="row mt-5">
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">

<a href="ManageNotification.jsp"class="fa-solid fa-list-check"style="font-size:150px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">ManagementNotification</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="DownloadTask.jsp" class="fas fa-download"style="font-size:150px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">DownloadTask</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="Sendemail.jsp" class="fa-solid fa-paper-plane"style="font-size:150px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">SendEmail</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
</div>
<!-- third row -->
<div class="row mt-5">
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="ResponseMgmt.jsp"class="fa-solid fa-file-arrow-up" style="font-size:150px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">ResponseManagment</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="FeedbackManagement.jsp" class="fa-regular fa-comment" style="font-size:150px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">FeedbackManagement</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="AssignmentManagement.jsp" class="fa-solid fa-book-open"style="font-size:150px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">AssignmentManagement</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>

</div>
</div>

</div>
</div>
<!-- third row -->


<div class="row">
<div class="col-sm-12"> 
<%@include file="common/vfooter.jsp" %>
</div>
</div>


</div>
</body>
</html>