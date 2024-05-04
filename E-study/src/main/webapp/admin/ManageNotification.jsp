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
<h2 class="text-center text-primary">Manage Notification</h2>
<hr/>
  <div class="col-sm-3"></div>
  <div class="col-sm-6" style="background-color:cyan;
  padding-top:20px;padding-bottom:20px;">
   <form action="saveNotification.jsp" method="post">
       <textarea name="NotificationMsg"
        placeholder="Type notification message here"
        class="form-control" rows="4" required></textarea>
         <br>
       <input type="submit" value="Add Notification" 
       class="btn btn-lg btn-success" />
   </form>
   </div>
   <div class="col-sm-3"></div>
</div>
<div class="row">
 <div class="col-sm-1"></div>
 <div class="col-sm-10">
   Show all notifications...
 </div>
 <div class="col-sm-1"></div>
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