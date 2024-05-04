<%@page import="common.DbManager" %>

<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="common.FileRename"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<% 
String fpath="//assets//Saveassignmentanswer//";
String filepath=request.getRealPath(fpath);
FileRename fr=new FileRename();
MultipartRequest mr=new MultipartRequest(request,filepath,20000000,fr);
String name=mr.getParameter("name");
String title, description,filename,uploadedby;
title=request.getParameter("title");
description=request.getParameter("description");
filename=request.getParameter("filename");
uploadedby=request.getParameter("uploadedby");
uploadedby=fpath+fr.name;
String cmd="insert into uploadassignment(title,description,filename,uploadedby) values('"+title+"','"+description+"','"+filename+"','"+session.getAttribute("uemail")+"')";


DbManager db= new DbManager();
boolean b=db.dml(cmd);
if(b==true)
{
	out.print("<script>alter('your assignment uploaded successfully.');window.location.href='upload.jsp'</script>");
}
else{
	out.print("<script>alter('your assignment not uploaded successfully.');window.location.href='upload.jsp'</script>");
}

%>

