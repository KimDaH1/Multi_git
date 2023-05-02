<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<form name='personAddForm' action='addPerson_proc.jsp' method="post">
		<div class="mb-3">
		  <label for="formGroupExampleInput2" class="form-label">Name</label>
		  <input type="text" class="form-control" id="inputName"
		  		name="name" placeholder="Example input placeholder">
		</div>
		
		<button id="insertBtn" type="button" class="btn btn-primary">추가</button>
	</form>
	<script>
		document.getElementById('insertBtn').addEventListener('click', ()=>{
				let form = document.personAddForm;
				
				let inputId = document.getElementById('inputName');
				if(inputName.value == ""){
					alert('이름은 필수입니다');
					inputName.focus();
				}else{
				if(confirm('추가하시겠습니까?')){
					form.submit();
					}
				}
			});
		</script>
</body>
</html>