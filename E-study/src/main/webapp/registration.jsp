<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="common/link.jsp" %>
</head>
<body>
<div class="container-fluid" style="background:teal;">
<%@include file="common/header.jsp" %>
<%@include file="common/menu.jsp" %>
<div class="row mt-5 mb-5">
<div class="col-sm-2"></div>
<div class="col-sm-8" style="text-align:justify">
<div class="card">
<h1 class="card-head text-center mt-2">Register Here</h1>
  <div class="card-body" style="background:#6a5acd;" >
   <form action="saveRegistration.jsp"
    method="post" enctype="multipart/form-data">
  <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" name="name" class="form-control" id="name" />
  </div>
  <div class="mb-3">
    <label for="gender" class="form-label">Gender</label><br/>
    <input type="radio" name="gender" class="form-check-input" id="gender" value="male"> Male &emsp;
    <input type="radio" name="gender" class="form-check-input" id="gender" value="female"> Female
  </div>
  <div class="mb-3">
    <label for="email" class="form-label">Email address</label>
    <input type="email" name="email" class="form-control" id="email" >
  </div>
  <div class="mb-3">
    <label for="mobno" class="form-label">Mobile Number</label>
    <input type="text" name="mobno" class="form-control" id="mobno" >
  </div>
    <div class="mb-3">
    <label for="dob" class="form-label">Date of Birth</label>
    <input type="date" name="dob" class="form-control" id="dob" >
  </div>
  <div class="mb-3">
   <label for="exampleInputEmail1" class="form-label">Course</label>
  <select class="form-select" name="course">
  <option selected disabled>Choose</option>
  <option value="bca">BCA</option>
  <option value="mca">MCA</option>
  <option value="bba">BBA</option>
  <option value="mba">MBA</option>
  <option value="mtech">M-Tech</option>
</select>
  </div>
  <div class="mb-3">
    <label for="picture" class="form-label">Profile picture</label>
    <input type="file"required name="picture" class="form-control" id="picture">
  </div>
  
  <div class="mb-3">
    <label for="pwd" class="form-label">Password</label>
    <input type="password" required name="password" class="form-control" id="pwd">
  </div>
  <div class="mb-3">
    <label for="address" class="form-label">Address</label>
    <textarea name="address" class="form-control" id="address" rows="6" ></textarea>
  </div>
  
   <div class="mb-3">
    <label for="captcha" class="form-label">Verify captcha</label><br/>
    <img src="./assets/user-images/rel.jpg" id="refresh" style="max-width:50px;display:inline"/>&nbsp;
    <img src="GetCaptcha" class="form-control" id="cimage" style="max-width:20%;display:inline"/>
    &emsp;&ensp;Enter captcha code &ensp;
    <input type="text" name="captcha" class="form-control mt-2" 
    style="max-width:40%;display:inline" id="captcha" >
  </div> 
  <script>
  $(document).ready(function(){
      $("#refresh").click(function(){
        $.get("GetCaptcha",null,function(){
            $("#cimage").attr("src","GetCaptcha");
             });  
      });   
     });     
  </script>
  
  <div class="">
    <a href="index.jsp" style="text-decoration:none;float:left;">Back to Home</a>
    <a href="login.jsp" style="text-decoration:none;float:right;">LogIn</a>
  </div>
 <br/><br/>
  <div class="">
  	<input type="checkbox" name="terms" class="form-check-input" required/>
   <span>
    I agree with <a href="index.jsp" style="text-decoration:none;" >Terms and condition</a>
    </span>
 </div>
 
  <div class="" align="center">
  <button type="reset" class="btn btn-warning mt-4" style="min-width:120px;">Reset</button> &emsp;&emsp;
  <button type="submit" class="btn btn-info mt-4" style="min-width:120px;">Submit</button>
	</div>
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