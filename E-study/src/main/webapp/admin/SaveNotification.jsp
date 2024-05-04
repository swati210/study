<%@page import="common.DbManager" %>
<%
  String msg,cmd;
  msg=request.getParameter("NotificationMsg");
  cmd="insert into notification(message) values('"+msg+"')";
  DbManager dm=new DbManager();
  boolean b=dm.dml(cmd);
  if(b==true)
	  out.print("<script>alert('Notification saved successfully.');window.location.href='ManageNotification.jsp';</script>");
  else 
	  out.print("<script>alert('Sorry! unable to save notification.');window.location.href='ManageNotification.jsp';</script>");
%>