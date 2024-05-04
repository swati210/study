<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../common/link.jsp" %>
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
<h2 class="text-center text-primary">Change Password</h2>
<hr/>
  <div class="col-sm-3"></div>
  <div class="col-sm-6" style="background-color:CadetBlue;
  padding-top:20px;padding-bottom:20px;">
   <form action="Updatepassword.jsp" method="post">
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
       class="btn btn-lg btn-info" />
   </form>
   </div>
   <div class="col-sm-3"></div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-12"> 
<%@include file="common/vfooter.jsp" %>
</div>
</div>
</body>
</html>