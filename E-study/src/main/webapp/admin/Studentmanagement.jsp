<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<%@include file="common/vmenu.jsp" %>
</div>
</div>

<div class="row">
<%@include file="common/sidebar.jsp" %>

<div class="col-sm-10">
<h4 class="text-center text-priamry">Student's Detail</h4>
<hr/>
<table  class="table table-stripped">
<tr>
<th>Sno.<</th><th>Name</th><th>Gender</th><th>Mobile No</th><th>Email ID</th><th>Address</th><th>DOB</th><th>Course</th>
<th>Send Email</th>
</tr>
<%
int sno=1;
String cmd="Select * from registration";
DbManager dm=new DbManager();
ResultSet rs=dm.dql(cmd);
while(rs.next())
{
	out.print("<tr><td>"+sno+"</td><td>"+rs.getString("name")+
			"</td><td><img width='60px' height='60px' src='../"+
	rs.getString("picture")+"'/></td><td>"+
					rs.getString("gender")+"</td><td>"+rs.getString("mobno")+
					"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("address")+"</td><td>"
					+rs.getString("dob")+"</td><td><a href='SendEmail.jsp'class=' fa solid fa-envelope h4' style='text-decoration:none;'></a></td></tr>");
	sno++;
	
}
%>

</table>

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