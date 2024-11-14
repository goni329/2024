<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

	<div class="container" style="width:1080px">
		<%@ include file="Nav.jsp" %>

		<div class="container" 
				style="max-width:600px; border:1px solid #ccc; 
							padding:20px; border-radius:10px; margin-top:30px;
							box-shadow:0 10px 20px rgba(0,0,0,0.3);">
							
		<!-- 테이블 제목 -->	
		<p class="fw-bold fs-1"> 채용정보 등록 </p>
							
		<!-- content -->					
			<form action="registerProc.jsp" method="post">
				<!-- 회사이름 -->
			  <div class="mb-3">
			    <label for="exampleInputUsername" class="form-label">회사이름</label>
			    <input type="text" class="form-control" id="exampleInputName" name="companyName">
			  </div>
			
	 		  <!-- 채용기간 -->
	 		  <div class="mb-3">
			    <label for="exampleInputEmail" class="form-label">채용기간</label>
			    <input type="text" class="form-control" id="exampleInputName" name="period">
			  </div>
			  
	 		  <!-- 채용인원 -->
	 		  <div class="mb-3">
			    <label for="exampleInputPhone" class="form-label">채용인원</label>
			    <input type="text" class="form-control" id="exampleInputName" name="number">
			  </div>
			  
 	 		  <!-- 채용분야 -->
	 		  <div class="mb-3">
			    <label for="exampleInputPhone" class="form-label">채용분야</label>
			    <input type="text" class="form-control" id="exampleInputName" name="dept">
			  </div>
			  
	 		  <!-- 회사 이미지 -->
	 		  <div class="mb-3">
			    <label for="exampleInputPhone" class="form-label">회사 이미지</label>
			    <input type="text" class="form-control" id="exampleInputImage" name="image">
			  </div>
			  
			  <!-- 확인/취소 버튼 -->
			  <button type="submit" class="btn btn-outline-primary">등록</button>
			  <button type="reset" class="btn btn-outline-danger">취소</button>
		</form>
	</div>

	</div>
	
	

</body>
</html>