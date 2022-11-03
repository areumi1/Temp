<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_ex.service.*, board_ex.model.*" %>
<%
	// 1. 삭제할 레코드의 게시글번호 넘겨받기
	String seq = request.getParameter("seq");
	
%>      
<!DOCTYPE html>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 게시글 삭제하기 </title>
</head>
<body>

<form method="post" action="BoardDelete.jsp">
	삭제할 글암호를 입력하세요 <br/>
	<input type="password" name="password">
	<!-- 2. 게시글번호를 다음 페이지로 넘기기 위해 hidden 태그로 지정 -->
	<input type='hidden' name='dleteSeq' value='<%= seq %>'/>
	
	<input type="submit" value="삭제하기">
</form>

</body>
</html>