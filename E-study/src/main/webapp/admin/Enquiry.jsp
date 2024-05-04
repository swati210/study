<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="common.DbManager" %>
<%@page import="java.sql.ResultSet" %>
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
<h2 class="text-center">Enquiry</h2>
<hr/>
<table class="table table-stripped">
<tr>
   <th>Sno</th>
   <th>Name</th>
   <th>Email Id</th>
   <th>Mobile No</th>
   <th>Enquiry Message</th>
   <th>Date & Time</th>
</tr>
<%
  String cmd="Select *from enquiry order by id desc";
  DbManager dm=new DbManager();
  ResultSet rs= dm.dql(cmd);
  int count=1;
  while(rs.next())
  {
	  out.print("<tr><td>"+count+"</td><td>"+rs.getString("name")+
			  "</td><td>"+rs.getString("email")+"</td><td>"+
			  rs.getString("mobno")+"</td><td>"+
			  rs.getString("message")+"</td><td>"+rs.getString("dt")
			  +"</td></tr>");
  }
%>
</table>
</div>
</div>
</div>

<div class="row">
<div class="col-sm-12"> 
<%@include file="common/vfooter.jsp" %>
</div>
</div>


</div>
</body>
</html>