<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${board.title}</title>
<link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico">
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="/resources/stylesheets/slipp.css" rel="stylesheet">
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	
	<meta property="og:type" content="article" />
	<meta property="og:title" content="ubuntu에서 ruby on rails 설치할 때 ExecJS 에러가 발생하는 경우" />
	<meta property="og:site_name" content="SLiPP" />
	<meta property="og:url" content="http://www.slipp.net/questions/110" />
	<meta property="og:image" content="http://www.slipp.net/resources/images/logo_slipp.png" />
	<link rel="stylesheet" href="/resources/stylesheets/highlight/github.css">


</head>

<body>
<%@ include file="../commons/_header.jspf"%>
<div class="wrapper">
<%@ include file="../commons/_top.jspf"%>
	<header class="header" role="banner">
		
	</header>
	<div class="content" role="main">
		<div class="container">
			<div id="siteSearchArea" class="site-search-area">
				<gcse:search></gcse:search>
				<gcse:searchresults></gcse:searchresults>
			</div>
			



<section class="view-content">
	<h1 class="article-title">${board.title}</h1>
	<div class="content-main">
		

<article class="article">
	<div class="article-header">
		<div class="article-header-thumb">
			<img src='//graph.facebook.com/1324855987/picture' class="article-author-thumb" alt="" />
		</div>
		<div class="article-header-text">
			<a href="/users/1/자바지기" class="article-author-name">${board.name}</a>
			<a href="/questions/110" class="article-header-time" title="퍼머링크">
				${board.date}
				<i class="icon-link"></i>
			</a>
		</div>
	</div>
	<div class="article-doc">
		<p>${board.contents}</p>
	</div>
	
</article>

		<div class="qna-comment">
			
			<p class="article-count"><strong>0</strong>개의 의견</p>
			
			</form>
			<form id="answer" class="form-write" action="/questions/137/answers" method="POST">
					<fieldset>
						<legend class="title-write">의견 추가하기</legend>
						<div class="box-write">
							<textarea id="contents" name="contents" rows="15" cols="80" text="${board_reply.Contents}"></textarea>
						</div>
						<div class="submit-write">
							
							<label class="msg-send-to-facebook">
								<input id="connected1" name="connected" type="checkbox" value="true"/><input type="hidden" name="_connected" value="on"/> 페이스북으로 전송하려면 체크하세요
							</label>
							
							<button type="submit" class="btn-submit"><i class="icon-submit"></i> 작성완료</button>
						</div>
					</fieldset>
				</form>
			

					
		</div>
	</div>
	<div class="content-sub">
		<div class="floating">
			<section class="share">
				<h1>SNS공유</h1>
				<div class="share-facebook">
					<div id="fb-root"></div>
					
				</div>
				<div class="share-googleplus">
					
				</div>
				<div class="share-twitter">
					
				</div>
			</section>
			<section class="qna-tags">
				<h1>연관태그</h1>
				<ul>
				
					<li>
						<a href="/questions/tagged/ruby-on-rails" class="tag">ruby-on-rails</a>
					</li>
				
				</ul>
			</section>
			<a class="link-back-to-list" href="/board/boardlist/form">&larr; 목록으로</a>
		</div>
	</div>
</section>


</body>
</html>
