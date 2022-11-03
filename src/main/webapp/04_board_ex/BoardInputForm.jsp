<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	// 작성 버튼이 눌렸을 때
	$('input[value="작성"]').click(function(){
		// 폼태그의 action 속성을 'BoardSave.jsp'
		// 폼태그의 submit() 호출
		var frm = $('form[name="frm"]');
		frm.attr('action','BoardSave.jsp');
		frm.submit();
		// 각 input 태그에 name 부여 
	});
});
</script>
</head>
 <body>
	<h4> 게시판 글 쓰기 </h4><br/> 
	나중에 이쁘게 만드시오 <br/><br/>
	<form name='frm' method='post'>
	작성자 : <input type='text' name='writer'><br/><br/>
	제  목 : <input type='text' name='title'><br/><br/>
	내  용 : <textarea rows='10' cols='40' name='content'></textarea><br/><br/>
	비밀번호 : <input type='password' name='pass'><br/><br/>
	<input type='button' value='작성'>
	<input type='reset' value='취소'>
	</form>
	

</body>
</html>