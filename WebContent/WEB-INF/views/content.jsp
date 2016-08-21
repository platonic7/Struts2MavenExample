<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Content</title>
	<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.js">

</head>
<body>
<div class="container">
	<div class="panel-body">
		<div class="row">
			<div class="col-md-12">
			<h1>CONTENT Number : ${board.id} Count : ${board.count}</h1>
				<form action="" class="form" enctype="multipart/form-data" method="post">
					<div class="form-group">
						<div class="well well-sm" style="width: 66.5%;">${board.title}</div>
					</div>
					<div class="form-group">
						<textarea class="well" name="content" rows="10" style="width: 66.5%;" readonly>${board.content}</textarea>
					</div>
					<input type="hidden" name="id" value="${board.id}" />
					<a href="/home" class="btn btn-info" role="button">&nbsp;&nbsp;Go Home&nbsp;&nbsp;</a>
					<a href="/board/${board.id}/update" class="btn btn-danger">UPDATE</a>
					<a href="/board/${board.id}/delete" class="btn btn-danger">DEL</a>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>
