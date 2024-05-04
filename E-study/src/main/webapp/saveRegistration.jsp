<%@page import="common.Cryptography"%>
<%@page import="common.DbManager"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="common.FileRename"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<% 
String fpath="assets/user-images/";
String filepath=request.getRealPath(fpath);
FileRename fr=new FileRename();
MultipartRequest mr=new MultipartRequest(request,filepath,20000000,fr);
String name=mr.getParameter("name");
String email=mr.getParameter("email");
String gender=mr.getParameter("gender");
String mobno=mr.getParameter("mobno");
String course=mr.getParameter("course");
String dob=mr.getParameter("dob");
String address=mr.getParameter("address");
String captcha=mr.getParameter("captcha");
String password=mr.getParameter("password");
String terms=mr.getParameter("terms");
String fname=fpath+fr.name;
//out.print(fname);

String sesCap=""+session.getAttribute("c_code");
if (captcha.trim().equals(sesCap.trim())){
	DbManager dbm=new DbManager();
	
	Cryptography c=new Cryptography();
	
	String reg_cmd="insert into registration (name, email, mobno, gender, dob, course, address, terms, picture) values('"+name+"','"+email+"','"+mobno+"','"+gender+"','"+dob+"','"+course+"','"+address+"','"+terms+"','"+fname+"')";
	
	String log_cmd="insert into login (email,password,utype) values('"+email+"','"+c.EncryptMyPassword(password)+"','user')";
	
	boolean reg_status =dbm.dml(reg_cmd);
	boolean log_status =dbm.dml(log_cmd);
	if(log_status && reg_status){
		out.print("	<script>alert('Registration successfull.');window.location.href='login.jsp'</script>");
	}else{
		out.print("	<script>alert('Registration failed, please try again later.');macos.location.href='registration.jsp'</script>");
	}
}else{
	out.print("<script>alert('Invalid Captcha code, please try againg later.');macos.location.href='registration.jsp'</script>");
}


%>