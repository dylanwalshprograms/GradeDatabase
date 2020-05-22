<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grades</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Grades at Grand Circus</h1>
		
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Type</th><th>Score</th><th>Total</th><th>Percentage</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${grades}" var="grade">
				<tr>
					<td>${grade.name}</td>
					<td>${grade.type}</td>
					<td>${grade.score}</td>
					<td>${grade.total}</td>
					<td><p><script> 
					var percentage = (${grade.score} / ${grade.total}) * 100;
					document.write(percentage.toFixed(2));
					</script>%</p></td>
					<td><a href = "grade/delete?id=${grade.id}" >Delete</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<p>${totalPercentage}%</p>
		<a href="/grades/add" class="btn btn-secondary">Add Grade</a>
	</div>

</body>
</html>