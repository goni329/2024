<%@page import="company2Db.company2Do"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//한글 깨짐 방지
		request.setCharacterEncoding("utf-8");
	%>

	<h2> registerProc.jsp </h2>
	
	<!-- 사용자가 입력한 값을 do에 저장하는 과정 -->
	<jsp:useBean id="cdo" class="company2Db.company2Do"/>
	<jsp:setProperty property="*" name="cdo"/>
	
	<jsp:useBean id="cdao" class="company2Db.company2Dao"/>
	
	<%
		//dao의 insertCompanyInfo() 이용하여 입력받은 데이터 저장
		cdao.insertCompanyInfo(cdo);
	
		//Main.jsp 페이지로 무조건 이동
		response.sendRedirect("Main.jsp");
	%>
</body>
</html>