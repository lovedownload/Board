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
								<a href="/board/view/${status.index}/form">${boardData.title}</a>
							</strong>
							
							<div class="auth-info">
										<i class="icon-add-comment"></i>
										<span class="type">응답</span>
										<span class="time">
											${boardData.date}
										</span>
										<a href="/users/65/fupfin" class="author">fupfin</a>
							</div>
							<div class="reply" title="댓글">
								<i class="icon-reply"></i>
								<span class="point">11</span>
							</div>
						</div>
					</div>
				</li>
				
					
				 <c:if test="${index.count == fn:length(boardlist)}"></c:if>
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
		 <nav class="pager">
					
	 		<ul>
					<li class="active"><a href="/questions?page=1">1</a></li><li><a href="/questions?page=2">2</a></li><li><a href="/questions?page=3">3</a></li><li><a href="/questions?page=4">4</a></li><li><a href="/questions?page=5">5</a></li><li class="disabled"><a href="#">...</a></li><li><a href="/questions?page=12">12</a></li>
						</ul>
					</nav>			
		</section>
	</div>
	<div class="content-sub">
		
<section class="qna-tags">
	<h1>태그목록</h1>
	<ul>
		
		<li>
			<a href="/questions/tagged/java" class="tag">java <span class="count">44</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/스터디" class="tag">스터디 <span class="count">13</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/git" class="tag">git <span class="count">11</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/tdd" class="tag">tdd <span class="count">11</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/github" class="tag">github <span class="count">7</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/trends" class="tag">trends <span class="count">7</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/oop" class="tag">oop <span class="count">6</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/refactoring" class="tag">refactoring <span class="count">6</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/ruby-on-rails" class="tag">ruby-on-rails <span class="count">6</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/spring" class="tag">spring <span class="count">5</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/jquery" class="tag">jquery <span class="count">5</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/test" class="tag">test <span class="count">5</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/web" class="tag">web <span class="count">4</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/eclipse" class="tag">eclipse <span class="count">4</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/interface" class="tag">interface <span class="count">4</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/c" class="tag">c <span class="count">4</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/slipp" class="tag">slipp <span class="count">4</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/jpa" class="tag">jpa <span class="count">3</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/hibernate" class="tag">hibernate <span class="count">3</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/maven" class="tag">maven <span class="count">3</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/dto" class="tag">dto <span class="count">3</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/javascript" class="tag">javascript <span class="count">2</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/continuous-integration" class="tag">continuous-integration <span class="count">2</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/atdd" class="tag">atdd <span class="count">2</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/exception" class="tag">exception <span class="count">2</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/junit" class="tag">junit <span class="count">1</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/database" class="tag">database <span class="count">1</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/svn" class="tag">svn <span class="count">1</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/ddd" class="tag">ddd <span class="count">1</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/rest" class="tag">rest <span class="count">1</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/servlet" class="tag">servlet <span class="count">0</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/jsp" class="tag">jsp <span class="count">0</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/mybatis" class="tag">mybatis <span class="count">0</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/sql" class="tag">sql <span class="count">0</span></a>
		</li>
		
		<li>
			<a href="/questions/tagged/agile" class="tag">agile <span class="count">0</span></a>
		</li>
		
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
(function() {
	var cx = '010235842937876666941:4opvrjfw190';
	var gcse = document.createElement('script');
	gcse.type = 'text/javascript';
	gcse.async = true;
	gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//www.google.com/cse/cse.js?cx=' + cx;
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(gcse, s);
})();
</script>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-22853131-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<script>
try{
	var pageTracker = _gat._getTracker("UA-22853131-1");
	pageTracker._trackPageview();
} catch(err) {}

$(document).ready(function(){
	var $notificationLayer = $('#notificationLayer');
	var $notificationButton = $('#notificationButton');
	var $siteSearchButton = $('#siteSearchButton');

	$('body').on('click', function() {
		$notificationLayer.hide();
	});

	$notificationButton.on('click', function(e){
		e.stopPropagation();
		e.preventDefault();
		getNotificationData();
		$notificationLayer.toggle();
	});

	$siteSearchButton.on('click', function(e) {
		var $siteSearchArea = $('#siteSearchArea');
		e.preventDefault();
		$siteSearchArea.toggleClass('active');
		if ($siteSearchArea.hasClass('active')) {
			$siteSearchArea.find('input[type="text"]').focus();
		}
	})

	function getNotificationData() {
		var $btn = $notificationButton;
		var $layer = $notificationLayer;

		$.getJSON($btn.attr('href'), function(result){
			var items = result;
			var length = items.length;
			var $ul = $('<ul></ul>');
			var item;

			for(var i=0; i < length; i++) {
				item = items[i];

				$("<li></li>")
				.append(
					$('<a></a>')
					.attr('href', '/questions/' + item.questionId)
					.text('"' + item.title + '" 글에 댓글이 달렸습니다.')
				)
				.appendTo($ul);
			}
			$btn.find('.notification-count').text('0');

			$layer.find($('ul')).replaceWith($ul);
		});
	}
});
</script>
<script src="/resources/javascripts/jquery.placeholder.min.js"></script>
<script>
$('input, textarea').placeholder();
</script>
</body>
</html>
