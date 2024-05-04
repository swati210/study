<%@page import="common.DbManager" %>

<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="common.FileRename"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<% 
String fpath="//assets//studymaterial//";
String filepath=request.getRealPath(fpath);
FileRename fr=new FileRename();
MultipartRequest mr=new MultipartRequest(request,filepath,20000000,fr);
String subject,topic,desc,fname;
subject=mr.getParameter("subject");
topic=mr.getParameter("topic");
desc=mr.getParameter("descrition");
fname=fpath+fr.name;
String cmd="insert into UploadStudyMaterial(subject,title,description,fname)value('"+subject+"','"+topic+"','"+desc+"','"+fname+"')";
DbManager dm= new DbManager();
boolean b=dm.dml(cmd);
if(b==true)
	out.print("<script>alter('study material uploaded successfully.');window.location.href='UploadStudyMaterial.jsp';</script>");
else
	out.print("<script>alter('sorry!unable to  upload study material.'):window.location.href='UploadStudyMaterial.jsp'</script>");
%>

