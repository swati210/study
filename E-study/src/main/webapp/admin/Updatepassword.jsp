<%@page import="common.*" %>
<%@page import="java.sql.ResultSet" %>
<%
  String pass,newpass,confpass,epass,aid;
  pass=request.getParameter("cpass");
  newpass=request.getParameter("newpass");
  confpass=request.getParameter("confpass");
  aid=session.getAttribute("aemail").toString();
  String msg="";
  if(newpass.equals(confpass))
  {
	  Cryptography cg=new Cryptography();
	  epass=cg.EncryptMyPassword(pass);
	  String cmd="Select *from login where email='"+aid
	   +"' and password='"+epass+"' and utype='admin'";
	  DbManager dm=new DbManager();
	  ResultSet rs= dm.dql(cmd);
	  if(rs.next()==true)
	  {
		  epass=cg.EncryptMyPassword(newpass);
		  cmd="update login set password='"+epass+
			"' where email='"+aid+"'";
		  boolean status=dm.dml(cmd);
		  if(status==true)
			  msg="Password updated successfully.";
		  else 
			  msg="Sorry! unable to update your password.";
	  }
	  else 
		  msg="Invalid current password. Please try again.";
  }
  else 
	  msg="Password and confirm password must be same.";
out.print("<script>alert('"+msg+
"');window.location.href='ChangePassword.jsp';</script>");
%>