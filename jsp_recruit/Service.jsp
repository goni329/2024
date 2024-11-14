<%@page import="org.apache.catalina.filters.RequestDumperFilter"%>
<%@page import="company2Db.company2Do"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="cDao" class="company2Db.company2Dao" scope="application" />
<%
		ArrayList<company2Do> v = cDao.getAllCompany();
%>

<div class="container">
  <div class="text-center mb-5">
	  <h1> Our Job Service </h1>
	  <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>  
  </div>
  
  <!-- 카드영역 -->
  <div class="row">
  
  	<%
  		for(int i =0; i < v.size(); i ++ ){
  			company2Do company = v.get(i);
  	%>		
		<div class="col">
		   <div class="card" style="width: 20rem; margin:auto;">
		   	 <!-- 회사 이미지  --> 
			 <img src="./images/<%= company.getImage() %>" 
			 	  class="card-img-top" alt="..."
			 	  style="height:5rem; width:15rem; margin-left:10px">
			 <!-- 회사정보 -->
			 <div class="card-body">
			   <h5 class="card-title">회사이름 : <%= company.getCompanyName() %></h5>
			   <h5 class="card-title">채용기간 : <%= company.getPeriod() %></h5>
			   <h5 class="card-title">채용인원 : <%= company.getNumber() %></h5>
			   <h5 class="card-title">채용분야 : <%= company.getDept() %></h5>
			   
			   <a href="#" class="btn btn-primary">show Details</a>
			 </div>
		   </div>
	    </div>
  		
  	<%		
  		}  	
  	%>
  </div>
</div>

</body>
</html>