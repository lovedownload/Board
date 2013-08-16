<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글목</title>
<link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico">
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="/resources/javascripts/slipp.js"></script>
<script src="/resources/javascripts/localization/message.kr.js"></script>

</head>

<%@ include file="../commons/_header.jspf"%>

<body>

<%@ include file="../commons/_top.jspf"%>
<div class="wrapper">
	<header class="header" role="banner">
		
	</header>
	<div class="content" role="main">
		<div class="container">
			<div id="siteSearchArea" class="site-search-area">
				<gcse:search></gcse:search>
				<gcse:searchresults></gcse:searchresults>
			</div>
			

<div class="list-content">
	<div class="content-main">
		<section class="qna-list">
			

  
    <header>
      <h1>글목록</h1>
    </header>
  

			<ul class="list">
			<c:choose>
			  <c:when test="${boardlist!= null && !empty boardlist}">
				<c:forEach var="boardData" items="${boardlist}" varStatus="status">
				<li>
					<div class="wrap">
						<div class="main">
							<strong class="subject">
								<a href="/board/view/${boardData.index}/form">${boardData.title}</a>
							</strong>
							
							<div class="auth-info">
										<i class="icon-add-comment"></i>
										<span class="type">작성일</span>
										<span class="time">
											${boardData.date}
										</span>
										<a href="#" class="article-author-name">${boardData.name}</a>
							</div>
							
						</div>
					</div>
				</li>
				
					
				 <c:if test="${status.count == fn:length(boardlist)}"></c:if>
				</c:forEach>
				</c:when>
		   <c:otherwise>
		   		<li>
					<div class="wrap">
						<div class="main">
							등록된 게시물이 없습니다.
						</div>
					</div>
				</li>				
		     
		   </c:otherwise>
		</c:choose> 
		 </ul>
		 	
		</section>
	</div>
	<div class="content-sub">
		
<section class="qna-tags">
	<h1>태그목록</h1>
	<ul>
		
		
	</ul>
</section>

	</div>
</div>

		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<nav class="foot-nav">
				<ul role="menu">
					<li>
						<a href="/about">About</a>
					</li>
					<li>
						<a href="/code">Code</a>
					</li>
					<li>
						<a href="https://github.com/javajigi/slipp/issues" target="_blank">Ideas&amp;Bugs</a>
					</li>
					<li>
						<a href="/wiki">SLiPP-Wiki</a>
					</li>
				</ul>
			</nav>
			<p class="footer-text">SLiPP - Sustainable Life, Programming, Programmer</p>
		</div>
	</footer>
</div>
<script>

</body>
</html>
