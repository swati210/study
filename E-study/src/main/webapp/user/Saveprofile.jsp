
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
String fname=fpath+fr.name;
String cmd;
if(fr.name!=null)
 cmd="update registration set name='"+name+"',gender='"+gender+"',mobno='"+mobno+"',course='"+course+"',dob='"+dob+"',address='"+address+"',picture='"+fname+"'where email='"+email+"'";
 
else
	 cmd="update registration set name='"+name+"',gender='"+gender+"',mobno='"+mobno+"',course='"+course+"',dob='"+dob+"',address='"+address+"',where email='"+email+"'";

DbManager dm=new DbManager();
boolean b=dm.dml(cmd);
if(b==true){
	out.print("<script>alter('profile updateed successfully,');window.location.href='Myprofile.jsp';</script>");
	
}
else{
	
	out.print("<script>alter('sorry! unable to update yourprofile');window.location.href='Myprofile.jsp';<./script>");
}

%>

