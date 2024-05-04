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
<%@include file="./common/umenu.jsp" %>
</div>
</div>
<div class="row">

<%@include file="./common/sidebar.jsp" %>

<div class="col-sm-10 mt-5"style="background-color:#008080;padding-top:45px;padding-bottom:25px;"> 

<div class="row">
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="Feedback.jsp"class="fa-solid fa-comment-dots"style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Feedback</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="StudyMaterial.jsp"class="fa-solid fa-book"style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Study Material</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="Searchmaterial.jsp"class="fa-solid fa-magnifying-glass"style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Search Material</span>
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

<a href="Myprofile.jsp"class="fa-solid fa-user"style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">profile</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="SaveAssignment.jsp" class="fas fa-download"style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">SaveAssignment</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="changepassword.jsp"class="fa-solid fa-lock"style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Change Password</span>
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
<a href="upload.jsp"class="fa-solid fa-file-arrow-up" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">upload</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="Viewassignment.jsp"class="fa-solid fa-street-view" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">ViewAssignment</span>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 text-center p-5"style="background-color: white;padding-top:10px;
padding-bottom:10px;">
<a href="downloadstudymaterial.jsp"class="fas fa-search"style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">DownloadStudyMaterial</span>
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
<%@include file="common/ufooter.jsp" %>
</div>
</div>


</div>
</body>
</html>