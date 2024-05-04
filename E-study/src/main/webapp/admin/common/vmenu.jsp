<%
String email=""+session.getAttribute("aemail");

if(!email.equals("null")){
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <div class="container-fluid">
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="../assets/images/slider/study logo.png"  class="img-fluid" style="height: 35px;width: 35px; border-radius: 50%"/> <span>Admin</span>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="ChangePassword.jsp">Change Password</a></li>
            <li><a class="dropdown-item" href="common/logout.jsp">Logout</a></li>
          </ul>
        </li>
         <li class="nav-item mt-1">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item mt-1">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown mt-1">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Your Title
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>

        
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
	
	
	
	<% 
}else{
	out.print("<script>alert('Access forbidden,please login to visit this page.');window.location.href='../login.jsp'</script>");
}
%>

