<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<title>우리동네 행정처분정보-동행</title>
<meta charset="utf-8">
<meta name="viewport"	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&display=swap"	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Prata&display=swap"	rel="stylesheet" type="text/css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css"	type="text/css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/resources/css/animate.css"	type="text/css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css"	type="text/css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css"	type="text/css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css"	type="text/css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/resources/css/aos.css"	type="text/css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/resources/css/ionicons.min.css"	type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datetimepicker.min.css"	type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nouislider.css" type="text/css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/resources/css/flaticon.css"	type="text/css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/resources/css/icomoon.css"	type="text/css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/resources/css/style.css"	type="text/css">
<link rel="stylesheet"	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<style>

/* 검색 메뉴 추가 */
.search {
  width: 100%;
  position: relative;
  display: flex;
  margin-top : 25px;
}
#searchform{
	width : 100%;
	position:relative;
	display: flex;
}
.searchTerm {
  width: 100%;
  border: 3px solid #00B4CC;
  border-right: none;
  padding: 5px;
  height: 50px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color: #9DBFAF;
}

.searchTerm:focus{
  color: #00B4CC;
}

.searchButton {
  width: 50px;	/* 40 */
  height: 50px;		/* 36 */
  border: 1px solid #00B4CC;
  background: #00B4CC;
  text-align: center;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 15px;
}

.wrap{
  width: 30%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
#wordcloud {
	width : 100%;
	height : 85%
}
.wrap {
	width: 30%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
		}

/* coming soon */
.container2 {
  position: absolute;
  top: 50%;
  width: 100%;
  min-width: 320px;
  margin-left: 300px;
}
.container2 h1 {
  font-size: 36px;
  margin-bottom: 15px;
}
.container2 h1 a {
  display: inline-block;
  background: #000;
  background: rgba(0, 0, 0, 0.05);
  padding: 10px 15px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  color: #fff;
  text-decoration: none;
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  transition: all 0.3s ease;
}
.container2 h1 a:hover {
  background: rgba(0, 0, 0, 0.1);
}
.container2 p {
  margin-bottom: 30px;
  color: #d6f2e4;
  font-family: 'Proxima Nova', sans-serif;
  font-size: 20px;
}
.container2 .social-media ul {
  list-style: none;
  margin: 0;
  padding: 0;
}
.container2 .social-media ul li {
  display: inline-block;
  margin: 0 16px 0 0;
  font-size: 14px;
}
.container2 .social-media ul li:last-child {
  margin: 0;
}
.container2 .social-media ul li a {
  display: block;
  width: 16px;
  color: #fff;
}

</style>

</head>
<body>
	<div class="main-section">
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
			<div class="container">
				<a class="navbar-brand" href="http://localhost:8000/donghang">DongHang</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
					aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="oi oi-menu"></span> Menu
				</button>
				<div class="collapse navbar-collapse" id="ftco-nav">
				<!-- 12시 방향 검색 창 -->
					<div class="wrap">
						<div class="search">
						
						<form action="search" method="GET" id="searchform">
							<input type="text" id="name" name="keyword" class="searchTerm" placeholder="업소명을 입력해주세요.">
							<button type="submit" class="searchButton">
								<!-- <i class="fa fa-search"></i> -->검색
							</button>
						</form>
						</div>
					</div>

					<ul class="navbar-nav ml-auto">
						<li class="dropdown nav-item"><a href="#"
								class="dropdown-toggle nav-link icon d-flex align-items-center" data-toggle="dropdown">
								<i class="ion-ios-apps mr-2"></i> 분 석
								<b class="caret"></b>
							</a>
							<div class="dropdown-menu dropdown-menu-left">
								<a href="http://localhost:8000/donghang/analysis" class="dropdown-item"><i
										class="ion-ios-apps mr-2"></i> 기본 분석 </a> <a
									href="http://localhost:8000/donghang/data" class="dropdown-item"><i
										class="ion-ios-document mr-2"></i>데이터 분석 </a>
							</div>

						</li>
						<li class="nav-item"><a href="http://localhost:8000/donghang/restAPI" class="nav-link icon d-flex align-items-center"><i
									class="ion-ios-cloud-download mr-2"></i> Rest API</a></li>
						<!--  <li class="nav-item"><a href="#" class="nav-link icon d-flex align-items-center"><i class="ion-logo-facebook"></i></a></li>
	          <li class="nav-item"><a href="#" class="nav-link icon d-flex align-items-center"><i class="ion-logo-twitter"></i></a></li>
	          <li class="nav-item"><a href="#" class="nav-link icon d-flex align-items-center"><i class="ion-logo-instagram"></i></a></li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END nav -->

		<section class="hero-wrap js-fullheight">

		<!-- Coming soon -->
		<div class='container2'>
			<h1>
    			<a data-sr='scale up 10%' href='https://github.com/Alphanewbie/donghang'>Rest API</a>
    			<span data-sr='top wait .3s 90px'>i</span>
    			<span data-sr='top wait .4s 90px'>s</span>
    			<span>&nbsp;</span>
    			<span data-sr='top wait .5s 90px'>c</span>
    			<span data-sr='top wait .6s 90px'>o</span>
    			<span data-sr='top wait .7s 90px'>m</span>
    			<span data-sr='top wait .8s 90px'>i</span>
    			<span data-sr='top wait .9s 90px'>n</span>
    			<span data-sr='top wait 1s 90px'>g</span>
    			<span>&nbsp;</span>
    			<span data-sr='top wait 1.1s 90px'>s</span>
    			<span data-sr='top wait 1.2s 90px'>o</span>
    			<span data-sr='top wait 1.3s 90px'>o</span>
    			<span data-sr='top wait 1.4s 90px'>n</span>
    			<span data-sr='top wait 1.5s 90px'>!</span>
  			</h1>
  			<p data-sr='bottom wait 1.5s 90px'>곧 업데이트 될 Rest API를 기대해 주세요.</p>
		</div>
<!-- <script>
window.sr = new scrollReveal(config);

var config = {
  easing: 'ease',
  reset: true
}

// Font Settings
(function(d) {
  var config = {
    kitId: 'xyl8bgh',
    scriptTimeout: 3000
  },
  h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='//use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
})(document);
</script> -->

		</section>

		<footer class="ftco-section ftco-section-2">
			<div class="col-md-12 text-center">
				<p class="mb-0">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					ⓒ All Rights Reserved
					<!-- <i class="icon-heart" aria-hidden="true"></i> -->
					by <a href="https://github.com/Alphanewbie/donghang" target="_blank">Team DongHang</a>
				</p>
			</div>
		</footer>

	</div>

	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/popper.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.easing.1.3.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.waypoints.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.stellar.min.js" />"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
	<script	src="<c:url value="/resources/js/jquery.magnific-popup.min.js" />"></script>
	<script src="<c:url value="/resources/js/aos.js" />"></script>

	<script src="<c:url value="/resources/js/nouislider.min.js" />"></script>
	<script	src="<c:url value="/resources/js/moment-with-locales.min.js" />"></script>
	<script	src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js" />"></script>
	<script src="<c:url value="/resources/js/main.js" />"></script>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script>
		function simularsearch(value) {
			var req = new XMLHttpRequest();
			//var result = document.getElementById("result");
			req.onreadystatechange = function() {
				//alert("req.readyState : "+req.readyState);		
				if (req.status == 200 && req.readyState == 4)
					// 200이면 요청이 성공적으로 왔을 때, 4는 요청이 전부 왔을때
					//result.innerHTML += req.responseText;
					console.log(req.responseText)
			}
			req.open("GET", "simularsearch?keyword=" + value, true);
			// 요청을 어떤 형식으로 받을 것인지
			req.send();
			// 요청을 보낸다
		}

		$(function() { //화면 다 뜨면 시작
			$("#name").autocomplete({
				source : function(request, response) {
					var value = $('#name').val()
					$.ajax({
						type : 'get',
						url : "simularsearch?keyword=" + value,
						dataType : "json",
						//data: {"param":"param"},
						success : function(data) {
							//서버에서 json 데이터 response 후 목록에 추가
							response($.map(data, function(item) { //json[i] 번째 에 있는게 item 임.
								console.log(item)
								return {
									label: item, 
									value: item
								}
							}));
						}
					});
				}, // source 는 자동 완성 대상
				select : function(event, ui) { //아이템 선택시
					console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
					console.log(ui.item.label); //김치 볶음밥label
					console.log(ui.item.value); //김치 볶음밥
					console.log(ui.item.test); //김치 볶음밥test
				},
				focus : function(event, ui) { //포커스 가면
					return false;//한글 에러 잡기용도로 사용됨
				},
				minLength : 2,// 최소 글자수
				autoFocus : true, //첫번째 항목 자동 포커스 기본값 false
				classes : { //잘 모르겠음
					"ui-autocomplete" : "highlight"
				},
				delay : 500, //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
				//	            disabled: true, //자동완성 기능 끄기
				position : {
					my : "right top",
					at : "right bottom"
				}, //잘 모르겠음
				close : function(event) { //자동완성창 닫아질때 호출
					console.log(event);
				}
			});
		});
	</script>
</body>
</html>
