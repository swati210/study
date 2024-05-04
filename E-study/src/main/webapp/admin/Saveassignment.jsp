<%@page import="common.DbManager" %>

<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="common.FileRename"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<% 
String fpath="//assets//adminassignment//";
String filepath=request.getRealPath(fpath);
FileRename fr=new FileRename();
MultipartRequest mr=new MultipartRequest(request,filepath,20000000,fr);
String title, topic,desc,dos,fname;
title=mr.getParameter("title");
desc=mr.getParameter("description");
dos=mr.getParameter("dos");
fname=fpath+fr.name;
String cmd="insert into giveassignment()";
%>



