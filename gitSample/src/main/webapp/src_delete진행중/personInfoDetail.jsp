<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sample.dao.PersonDao" %>
<%@ page import="sample.dto.PersonDto" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		PersonDao personDao = new PersonDao();
		PersonDto personDto = personDao.selectPersonInfoById(id);
	%>
	<h1>사용자 상세정보</h1>
	
	<form name='personDetailForm' action='' method="post">
		<div class="mb-3">
		  <label for="formGroupExampleInput" class="form-label">ID</label>
		  <input type="text" class="form-control" id="formGroupExampleInput"
		  		name="id" placeholder="Example input placeholder" value="<%=personDto.getId()%>">
		</div>
		<div class="mb-3">
		  <label for="formGroupExampleInput2" class="form-label">Name</label>
		  <input type="text" class="form-control" id="formGroupExampleInput2"
		  		name="name" placeholder="Another input placeholder" value="<%=personDto.getName()%>">
		</div>
		
		<button id="updateBtn" type="button" class="btn btn-warning">수정</button>
		<button id="deleteBtn" type="button" class="btn btn-danger">삭제</button>
	</form>
	
	
</body>
</html>