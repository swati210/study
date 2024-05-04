<%@page import="common.Cryptography"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="common.DbManager"%>
<% 
String utype=request.getParameter("utype");
String email=request.getParameter("email");
String password=request.getParameter("password");
DbManager dbm =new DbManager();
Cryptography c=new Cryptography();

String cmd="select * from login where utype='"+utype+"' and email='"+email+"' and password='"+c.EncryptMyPassword(password)+"'";
//out.print(cmd);
try{
	ResultSet rs= dbm.dql(cmd);
	int count=0;
	while(rs.next()){
		count++;
	}
	if(count==1){
		if(utype.equals("admin")){
			session.setAttribute("aemail", email);
		out.print("	<script>window.location.href='admin/adminDash.jsp'</script>");
		}else{
			session.setAttribute("uemail", email);
		out.print("	<script>window.location.href='user/userDash.jsp'</script>");
			
		}
	}else{
		out.print("	<script>alert('Invalid User Id or password, please try again later.'); window.location.href='login.jsp'</script>");
	}
}catch (Exception e){
	out.print("	<script>alert('Something went wrong, please try again later.'); window.location.href='login.jsp'</script>");
}
%>