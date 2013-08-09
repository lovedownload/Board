<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ubuntu에서 ruby on rails 설치할 때 ExecJS 에러가 발생하는 경우</title>
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
	<link rel="stylesheet" href="/resources/stylesheets/wiki-style.css">
	<link rel="stylesheet" href="/resources/stylesheets/wiki-textile-style.css">

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
	<h1 class="article-title">ubuntu에서 ruby on rails 설치할 때 ExecJS 에러가 발생하는 경우</h1>
	<div class="content-main">
		

<article class="article">
	<div class="article-header">
		<div class="article-header-thumb">
			<img src='//graph.facebook.com/1324855987/picture' class="article-author-thumb" alt="" />
		</div>
		<div class="article-header-text">
			<a href="/users/1/자바지기" class="article-author-name">자바지기</a>
			<a href="/questions/110" class="article-header-time" title="퍼머링크">
				2013-03-18 15:32
				<i class="icon-link"></i>
			</a>
		</div>
	</div>
	<div class="article-doc">
		<p>Could not find a JavaScript runtime. See <a href="https://github.com/sstephenson/execjs">https://github.com/sstephenson/execjs</a> for a list of available runtimes. (ExecJS::RuntimeUnavailable)</p><p>ubuntu에서 RoR 설치할 때 다음과 같은 에러가 발생할 경우 다음과 같이 nodejs 설치하면 된다.</p><p>&gt; sudo apt-get install nodejs</p>
	</div>
	
</article>

		<div class="qna-comment">
			
			<p class="article-count"><strong>0</strong>개의 의견</p>
			
			</form>

			

			
				<p class="msg-to-login">
					<b><a href="/users/login">SLiPP계정</a></b>으로 의견을 나누세요!
				</p>
			
			
		</div>
	</div>
	<div class="content-sub">
		<div class="floating">
			<section class="share">
				<h1>SNS공유</h1>
				<div class="share-facebook">
					<div id="fb-root"></div>
					<script src="https://connect.facebook.net/en_US/all.js#xfbml=1"></script>
					<fb:like href="http://www.slipp.net/questions/110"
					git	send="true" layout="button_count" width="100" show_faces="true" font=""></fb:like>
				</div>
				<div class="share-googleplus">
					<g:plusone></g:plusone>
				</div>
				<div class="share-twitter">
					<a href="https://twitter.com/share" class="twitter-share-button"
						data-count="horizontal">Tweet</a>
					<script type="text/javascript" src="https://platform.twitter.com/widgets.js"></script>
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
			<a class="link-back-to-list" href="/questions">&larr; 목록으로</a>
		</div>
	</div>
</section>

<script src="/resources/javascripts/jquery.validate.min.js"></script>
<script src="/resources/javascripts/highlight.pack.js"></script>
<script>
hljs.initHighlightingOnLoad();
</script>
<script src="/resources/javascripts/qna/tagparser.js"></script>
<script src="/resources/javascripts/qna/show.js"></script>
<script src="/resources/javascripts/qna/write.js"></script>
<script src="/resources/javascripts/qna/qna-set.js"></script>
<script src="/resources/javascripts/qna/image.upload.js"></script>
<script src="/resources/javascripts/jquery.markitup.js"></script>
<script>
$(document).ready(function(){
	function showFacebookComments(questionId) {
		var url = '/api/facebooks/' + questionId + '/comments';
		$.get(url,
			function(response) {
				$('.qna-facebook-comment').html(response);
				return false;
			}, 'html'
		);
	}

	showFacebookComments(110);
});
$('#contents').markItUp(mySettings);
</script>


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
