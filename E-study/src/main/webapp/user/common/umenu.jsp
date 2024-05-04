<%@page import="java.sql.ResultSet" %>
<%@page import="common.DbManager" %>

<%
String email=""+session.getAttribute("uemail");

if(!email.equals("null")){
	
	DbManager dbm =new DbManager();
	String cmd="select email,name,picture from registration where email='"+session.getAttribute("uemail")+"'";
out.print(cmd);
	ResultSet rs=dbm.dql(cmd);
	String name="";
	String picture="";
	while(rs.next()){
		name=rs.getString("name");
		picture=rs.getString("picture");
	}
	
	
	%>
	
	
	<nav class="navbar navbar-expand-lg navbar-light" style="background: #6A5ACD;padding: 0px">
  <div class="container-fluid">
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="../<%=picture %>"  class="img-fluid" style="height: 35px;width: 35px; border-radius: 50%"/> <span><%= name %></span>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="Myprofile.jsp">Profile</a></li>
            <li><a class="dropdown-item" href="Viewassignment.jsp">Settings</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="..//user//common/logout.jsp">Logout</a></li>
          </ul>
        </li>
         <li class="nav-item mt-1">
          <a class="nav-link active" aria-current="page" href="https://www.facebook.com/officialjnu/">Home</a>
        </li>
        <li class="nav-item mt-1">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown mt-1">
          <a class="nav-link dropdown-toggle" href="https://www.facebook.com/UniversityofDelhi/" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Your Title
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="https://www.facebook.com/Harvard/">traning</a></li>
            <li><a class="dropdown-item" href="https://www.facebook.com/officialjnu/">training with kss</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="https://www.facebook.com/kamadgiriSoftware/">kss is wonderfull it company</a></li>
          </ul>
        </li>

        
      </ul>
      <span class="text-white" style="margin-right:40px;">
      Hii
      <%=name %>
      </span>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
	
	<%
}else{
	out.print("<script>alert('Access forbidden, please login to visit this page.'); window.location.href='../login.jsp'</script>");
}


%>


