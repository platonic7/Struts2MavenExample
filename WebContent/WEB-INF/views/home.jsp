<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.js">
	
	<!-- Paging Setting -->
	<c:url var="firstUrl" value="?page=0" />
	<c:url var="lastUrl" value="?page=${boardPage.totalPages - 1}" />
	<c:url var="prevUrl" value="?page=${currentIndex - 2}" />
	<c:url var="nextUrl" value="?page=${currentIndex}" />
</head>
	<body>
		<div class="container">
			<h1>BOARD</h1>
			      <table class="table table-hover">
			        <thead>
			          <tr>
			            <th>ID</th>
			            <th>TITLE</th>
			            <th>CONTENT</th>	
			            <th>COUNT</th>
			          </tr>
			        </thead>
			        <tbody>
			        <c:forEach items="${list}" var="board">
			         <tr>
			            <td>${board.id}</td>
			            <td><a href="/board/${board.id}/content" >${board.title} </a></td>
			      	    <td>${board.content}</td>
			      	    <td>${board.count}</td>
			        </tr>   
			        </c:forEach>
			        </tbody>
			      </table>
		  			
 		  		  <!-- Paging Pattern 1 -->	
			      <ul class="pagination">
		   			 <c:if test="${!boardPage.first}">
		    			<li class="previous">
		        			<a href="?page=${boardPage.number-1}">&larr; Newer Posts</a>
		    			</li>
		    		</c:if>
			        <c:forEach var="i" begin="${beginIndex}" end="${endIndex}">
			            <c:url var="pageUrl" value="?page=${i - 1}" />
			            <c:choose>
			                <c:when test="${i == currentIndex}">
			                    <li class="active"><a href="${pageUrl}"><c:out value="${i}" /></a></li>
			                </c:when>
			                <c:otherwise>
			                    <li><a href="${pageUrl}"><c:out value="${i}" /></a></li>
			                </c:otherwise>
			            </c:choose>
			        </c:forEach>
		    		<c:if test="${!boardPage.last}">
		    			<li class="next">
		        			<a href="?page=${boardPage.number+1}">Older Posts &rarr;</a>
		    			</li>
		    		</c:if>
				  </ul>
				  <br>
				  
				<!-- Paging Pattern 2 -->  
				<ul class="pagination">
			        <c:choose>
			            <c:when test="${currentIndex == 1}">
			                <li class="disabled"><a href="#">&lt;&lt;</a></li>
			                <li class="disabled"><a href="#">&lt;</a></li>
			            </c:when>
			            <c:otherwise>
			                <li><a href="${firstUrl}">&lt;&lt;</a></li>
			                <li><a href="${prevUrl}">&lt;</a></li>
			            </c:otherwise>
			        </c:choose>
			        <c:forEach var="i" begin="${beginIndex}" end="${endIndex}">
			            <c:url var="pageUrl" value="?page=${i - 1}" />
			            <c:choose>
			                <c:when test="${i == currentIndex}">
			                    <li class="active"><a href="${pageUrl}"><c:out value="${i}" /></a></li>
			                </c:when>
			                <c:otherwise>
			                    <li><a href="${pageUrl}"><c:out value="${i}" /></a></li>
			                </c:otherwise>
			            </c:choose>
			        </c:forEach>
			        <c:choose>
			            <c:when test="${currentIndex == boardPage.totalPages}">
			                <li class="disabled"><a href="#">&gt;</a></li>
			                <li class="disabled"><a href="#">&gt;&gt;</a></li>
			            </c:when>
			            <c:otherwise>
			                <li><a href="${nextUrl}">&gt;</a></li>
			                <li><a href="${lastUrl}">&gt;&gt;</a></li>
			            </c:otherwise>
			        </c:choose>
			    </ul>
				  
				<br><br>	
			<a href="/write" class="btn btn-info" role="button">&nbsp;&nbsp;Go Write&nbsp;&nbsp;</a>
		</div>
	</body>
</html>
