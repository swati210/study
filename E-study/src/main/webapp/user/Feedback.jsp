<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/common/link.jsp" %>

</head>
<body>
<div class="container-fluid">	
<div class="row">
<div class="col-sm-12" style="padding: 0px;"> 
<%@include file="./common/umenu.jsp" %>
</div>
</div>
<div class="row">
<%@include file="./common/sidebar.jsp" %>
<div class="col-sm-10">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6  mt-4 mb-4" style="border:5px solid black;">
<h1 class="card-header text-primary text-center mt-3">Feedback</h1>
<p class="text-success text text-center">please send your valuable feedback</p>
<form action="SaveFeedback.jsp" method="post">

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label"> FeedbackTitle</label>
  <input type="text"  name="Title" required class="form-control" id="exampleFormControlInput1" placehoder="Tilte/Topic of the Feedback" name="Topic">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Feedback</label>
  <textarea class="form-control"name="Message" rows="3">Type your feedback here....</textarea>
</div>
<button type="submit" class="btn btn-warning mt-2 mb-2"/>save Feedback</button>

</form>
</div>
<div class="col-sm-3"></div>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-12"> 
<%@include file="common/ufooter.jsp" %>
</div>
</div>


</div>

</body>
</html>