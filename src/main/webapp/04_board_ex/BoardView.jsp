<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="board_ex.service.*, board_ex.model.*" %>
<%  
	// 게시글번호 넘겨받아
	String seq = request.getParameter("seq");
	// 서비스의 함수를 호출하여 해당 BoardVO를 넘겨받는다.
	BoardVO vo = ViewArticleService.getInstance().getArticleById(seq);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> 게시글 보기 </title>
</head>
<body>

	<h4> 게시판 글 보기 </h4><br/>
	<table border="1" bordercolor="red">
	<tr>
		<td> 제  목 : </td>
		<td><%= vo.getTitle() %></td>
	</tr>
	<tr>
		<td> 작성자 : </td>
		<td><%= vo.getWriter() %></td>
	</tr>
	<tr>
		<td> 작성일자 : </td>
		<td><%= vo.getRegdate() %></td>
	</tr>
	<tr>
		<td> 내  용 : </td>
		<td><%= vo.getContent() %></td>
	</tr>
	<tr>
		<td> 조회수 : </td>
		<td><%= vo.getCnt() %></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="BoardList.jsp"> 목록보기 </a>
			<a href="BoardModifyForm.jsp?seq=<%=seq%>"> 수정하기 </a>
			<a href="BoardDeleteForm.jsp?seq=<%= seq%>"> 삭제하기 </a>		
		</td>
	</tr>
	</table>


</body>
</html>