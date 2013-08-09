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
		
				
		<form id="question" class="form-write" action="/questions" method="POST">
			<input id="questionId" name="questionId" type="hidden" value=""/>
			<fieldset>
				<div class="box-input-line">
					<input id="title" name="title" class="inp-title" placeholder="제목" type="text" value=""/>
				</div>
				<div class="box-write">
					<textarea id="contents" name="contents" rows="15" cols="80"></textarea>
				</div>
				<div class="box-input-line">
					<input id="plainTags" name="plainTags" class="inp-tags" placeholder="태그 - 공백 또는 쉼표로 구분 ex) javajigi, slipp" type="text" value=""/>
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
	<div class="content-sub">
	</div>
</div>

<script src="/resources/javascripts/jquery.validate.min.js"></script>
<script src="/resources/javascripts/qna/tagparser.js"></script>
<script src="/resources/javascripts/jquery.autocomplete.min.js"></script>
<script src="/resources/javascripts/qna/form.js"></script>
<script src="/resources/javascripts/qna/write.js"></script>
<script src="/resources/javascripts/highlight.pack.js"></script>
<script src="/resources/javascripts/qna/qna-set.js"></script>
<script src="/resources/javascripts/qna/image.upload.js"></script>
<script src="/resources/javascripts/jquery.markitup.js"></script>
<script>
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
