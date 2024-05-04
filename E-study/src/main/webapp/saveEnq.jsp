<%@page import="common.DbManager" %>
<%
String name= request.getParameter("name");
String email=request.getParameter("email");
String mobno=request.getParameter("mobno");
String message=request.getParameter("message");
DbManager dbm=new DbManager();
String cmd="insert into enquiry(name,email,mobno,message) values('"+name+"','"+email+"','"+mobno+"','"+message+"')";
boolean status=dbm.dml(cmd);
if(status){
	out.print("<script>alert('Thanks for your enquiry,we will reach you soon.');window.location.href='index.jsp'</script>");
}
else{out.print("<script> alert('sorry!!unable to save your enquery,please try again later.');window.location.href='index.jsp'</script>");
}
%>
