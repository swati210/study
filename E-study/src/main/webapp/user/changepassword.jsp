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
<%@include file="common/umenu.jsp" %>
</div>
</div>

<div class="row">
<%@include file="common/sidebar.jsp" %>
<div class="col-sm-10">
    <div class="row">
<h2 class="text-center text-primary">Change Password</h2>
<hr/>
  <div class="col-sm-3"></div>
  <div class="col-sm-6" style="background-color:cyan;
  padding-top:20px;padding-bottom:20px;">
   <form action="updatePass.jsp" method="post">
      <input type="password" name="cpass"
       placeholder="Enter current password"
        class="form-control" /> <br>
       <input type="password" name="newpass"
       placeholder="Enter new password" 
       class="form-control" /> <br>
       <input type="password" name="confpass"
       placeholder="Confirm new password"
       class="form-control" /> <br>
       <input type="submit" value="Update Password" 
       class="btn btn-lg btn-success" />
   </form>
   </div>
   <div class="col-sm-3"></div>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-12"> 
<%@include file="common/ufooter.jsp" %>
</div>
</div>
</div>

</body>
</html>