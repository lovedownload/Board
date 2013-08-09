<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SLiPP</title>
<link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico">
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

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
			



<section class="write-content">
	<div class="content-main">
		<h1 class="write-title">새 글 작성</h1>
				
		<form class="form-write" action="/board/write" method="POST">
		<input type="hidden" id="wirte_user" name="wirte_user" value="${loginUser.name}">
						<fieldset>
				<div class="box-input-line">
					<input id="title" name="title" class="inp-title" type="text" value="${board.title}" />
				</div>
				<div class="box-write">
					<textarea id="contents" name="contents" rows="15" cols="500" text="${board.contents}"></textarea>
				</div>
				<div class="box-input-line">
					<input id="plainTags" name="plainTags" class="inp-tags" placeholder="태그 - 공백 또는 쉼표로 구분 ex) javajigi, slipp" type="text" value=""/>
				</div>
				<div class="submit-write">
					
					<button type="submit" class="btn-submit"><i class="icon-submit"></i> 작성완료</button>
				</div>
			</fieldset>
		</form>
	</div>
	<div class="content-sub">
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

</body>
</html>
