
  <%@page import="common.DbManager" %>
    <%@page import="java.sql.ResultSet" %>  
    
    
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
<div class="col-sm-10 bg-light mt-3 mb-5">

<%
  
  String cmd="Select *from registration where email='"+session.getAttribute("uemail")+"'";
  DbManager dm=new DbManager();
  ResultSet rs=dm.dql(cmd);
 String name="",mobno="",uid="", gender="",course="",dob="",address="",dt="",picture="";
  if(rs.next())
  {
	  name=rs.getString("name");
	  mobno=rs.getString("mobno");
	  uid=rs.getString("email");
	  gender=rs.getString("gender");
	  course=rs.getString("course");
	  dob=rs.getString("dob");
	  address=rs.getString("address");
	  dt=rs.getString("dt");
	  picture=rs.getString("picture");
	  
  } 
  %>

   <h1 class="text-center text-primary card-header">My Profile</h1>  
    <form action="Myprofile.jsp" method="post" enctype="multipart/form-data"> 
    <div class="row">
      <div class="col-sm-8">
      
           <div class="mb-3 row">
    <label for="Email" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
      <input type="email" readonly class="form-control-plaintext" id="staticEmail" value="<%=uid%>">
    </div>
  </div>
  <div class="mb-3 row">
    <label for="Name" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" value="<%=name%>" name="Name">
    </div>
  </div>
  
      <div class="mb-3 row">
    <label for="Gender" class="col-sm-2 col-form-label">Gender</label>
    <div class="col-sm-10">
    <span class="form-control">
      <input type="radio" name="Gender">Female &emsp; &emsp;
            <input type="radio" class="" id="inputradio" name="Gender">male
            </span>
      
    </div>
  </div>
      
      <div class="mb-3 row">
    <label for="emailaddress" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="Name">
    </div>
  </div>
  
  <div class="mb-3 row">
    <label for="mobno" class="col-sm-2 col-form-label">Mob No.</label>
    <div class="col-sm-10">
      <input type="number" class="form-control" value="<%=mobno %>" name="mobno">
    </div>
  </div>
      
      <div class="mb-3 row">
    <label for="dob" class="col-sm-2 col-form-label">DOB</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" value="<%=dob %>" name="dob">
    </div>
  </div>
  
  
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Course</label>
    <select class="form-select" value="<%=course %> name="course">
  <option selected>Choose</option>
  <option value="bca">BCA</option>
  <option value="mca">MCA</option>
  <option value="btech">Btech</option>
  <option value="mtech">Mtech</option>
  
  
</select>
    </div>
      
      <div class="mb-3">
    <label for="address" class="col-sm-2 col-form-label">Address</label>
    <div class="col-sm-10">
    <textarea name="Address" class="form-control" value="<%=address%>" rows="4"></textarea>
  </div>
      </div>
      
      <input type="submit" value="UpdateProfile" class="btn btn-primary mb-3"/>
      </div>
      <div class="col-sm-1"></div>
      <div class="col-sm-3">
            <img src="../<%=picture%>" style="height:90px; width:90px;" class="mt-4"/>
            <input type="file" name="userpic"/>
            </div>
    </div>
    </form>
</div>

<div class="row">
<div class="col-sm-12"> 
<%@include file="common/ufooter.jsp" %>
</div>
</div>
</div>
</div>
</body>
</html>

<script>
$(document).ready(function(){
$("#course").val("<%=course%>")	
});
</script>
