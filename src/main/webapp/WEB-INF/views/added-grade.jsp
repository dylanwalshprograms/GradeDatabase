<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grade Added!</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<h1>Grade Added</h1>
<p>The grade was added to the database.</p>
<h3>Details</h3>
<p>Name: ${grade.name}</p>
<p>Type: ${grade.type}</p>
<p>Score: ${grade.score}</p>
<p>Total: ${grade.total}</p>
<a href = "/grades">Return to grade list</a>
</body>
</html>