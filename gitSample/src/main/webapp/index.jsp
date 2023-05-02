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
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addPerson.jsp">사용자추가</a>
        </li>    
      </ul>
    </div>
  </div>
</nav>

	<h1>index.jsp 페이지</h1>
	
<%-- 	<% //자바코드 --%>
<!-- // 		boolean flag = true; -->
<!-- // 		out.println("Test"); -->
<!-- // 		if(flag){ -->
<!-- // 			out.println("flag true Test"); -->
<!-- // 		} else { -->
<!-- // 			out.println("flag false Test"); -->
<!-- // 		} -->
		
<!-- // 		for(int i=0; i<10; i++) { -->
<!-- // 			out.println("반복문" + i + " <br>"); -->
<!-- // 		} -->
		
<!-- // 		for(int i=0; i<10; i++){ -->
<%-- 	%>	 --%>
<%-- 		<p>ptag 글자 <%=i%>  </p> --%>
<%-- 	<% --%>
<!-- // 		} -->
<%-- 	%> --%>
	
	
	<table class="table">
		<thead>
			<tr>
				<th>id</th>
				<th>name</th>
			</tr>
		</thead>
		<tbody>
	<%
		PersonDao personDao = new PersonDao();
		List<PersonDto> personList = personDao.selectPersonInfoList();
		
		for(PersonDto item : personList){
	%>
			<tr>
				<td><%=item.getId()%></td>
				<td><a href="./personInfoDetail.jsp?id=<%=item.getId()%>" class="btn btn-secondary"><%=item.getName()%></a></td>
			</tr>
	<%
		}
	%>
		</tbody>	
	</table>
	<button id='test'>test</button>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script>
		document.querySelector('#test').addEventListener('click', ()=>{alert('test')})
		
// 		if(true){
<%-- 			<% personList.get(1) %>	 --%>
// 		}
		
	</script>
</body>
</html>













