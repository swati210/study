
<%@page import="common.DbManager"%>
<%
try
{
	String title,msg,cmd;
	title=request.getParameter("title");
	msg=request.getParameter("message");
	cmd="insert into feedback(userid,title,meassge) values('"+session.getAttribute("uemail").toString()+"','"+
	title+"','"+msg+"')";
	DbManager dm=new DbManager();
	boolean b=dm.dml(cmd);
	if(b==true)
	out.print("<script>alter('sorry !unable to save feedback.');window.location.href='Feedbcack.jsp;</script>");	
	
}
catch(Exception e)
{
out.print("<script>alter('soory!due to some technical issue; we are unable to save feedback.');window.location.href='Feedback.jsp;</script>");
}

%>