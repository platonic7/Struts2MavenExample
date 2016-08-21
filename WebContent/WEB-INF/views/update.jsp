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
			<h1>CONTENT Number : ${boardUpdate.id} Count : ${boardUpdate.count}</h1>
				<form action="/insert" class="form" enctype="multipart/form-data" method="post">
					<div class="form-group">
						<input type="text" name="title" value="${boardUpdate.title}" class="form-control" style="width:66.5%;">
					</div>
					<div class="form-group">
						<textarea class="form-control" name="content" rows="10" style="width: 66.5%;">${boardUpdate.content}</textarea>
					</div>
					<input type="hidden" name="id" value="${boardUpdate.id}" />
					<input type="hidden" name="count" value="${boardUpdate.count}" />
					 <button type="submit" class="btn btn-success" value="Upload">&nbsp;&nbsp;SAVE&nbsp;&nbsp;</button>
					<a href="/home" class="btn btn-info" role="button">&nbsp;&nbsp;Go Home&nbsp;&nbsp;</a>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>
				           