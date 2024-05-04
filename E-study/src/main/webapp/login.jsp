<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<%@include file="common/link.jsp" %>
</head>
<body>
<div class="container-fluid" style="background:Teal;">
<%@include file="common/header.jsp" %>
<%@include file="common/menu.jsp" %>
<div class="row mt-5 mt-5">
<div class="col-sm-4"></div>
<div class="col-sm-4" style="text-align:justify">

<div class="card" style="background:DarkTurquoise;padding-bottom:10px">
<h1 class="card-head text-center mt-4 bg-wraning">Login Here</h1>
  <div class="card-body">
    <form action="validateUser.jsp" method="post">
    
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Choose Profile</label>
    <select name="utype"class="" id="exampleInputEmail1" aria-describedby="emailHelp">
   <option disabled selected>Choose</option>
   <option value="user">User</option>
   <option value="admin">Admin</option>
   </select>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" name="email"class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password"name="password"class="form-control" id="exampleInputPassword1">
  </div>
  
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">new user</label>
  </div>
  <button type="reset" class="btn btn-warning">Reset</button>
  <button type="submit" class="btn btn-info">Submit</button>
</form>
  </div>
</div>


</div>
<div class="col-sm-2"></div>
</div>


<%@include file="common/footer.jsp" %>
</div>
</body>
</html>