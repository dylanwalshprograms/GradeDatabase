<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Grade</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	
		<h1>Add a Grade</h1>
		<form action="/rooms/added-grade">
		<label>Name</label>
		<input type="text" name="name" autofocus required/><br><br>
		<label>Type</label>
		<select id="size" name = "type" required>
		  <option value="Assignment">Assignment</option>
		  <option value="Quiz">Quiz</option>
		  <option value="Exam">Exam</option>
		</select><br><br>
		<label>Score</label>
		<input type="number" name="score" autofocus required/><br><br>
		<label>Total</label>
		<input type="number" name="total" autofocus required/><br><br>
		<button type="submit" class="btn btn-primary">Add Grade</button>
		<a class="btn link" href="/grades">Cancel</a>
		</form>
	</div>

</body>
</html>