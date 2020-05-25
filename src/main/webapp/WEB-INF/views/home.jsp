<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>

<head>
	<title>Home</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&display=swap" rel="stylesheet"
		type="text/css">

	<link href="https://fonts.googleapis.com/css?family=Prata&display=swap" rel="stylesheet" type="text/css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css"
		type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css" type="text/css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css"
		type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css" type="text/css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css" type="text/css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css" type="text/css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datetimepicker.min.css"
		type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nouislider.css" type="text/css">


	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<style>
		* {
			box-sizing: border-box;
		}

		/* body {
  background: #333;
} */
		.centered {
			width: 550px;
			height: 110px;
			margin: auto;
			position: absolute;
			top: 0;
			bottom: 0;
			left: 0;
			right: 0;
		}

		.group {
			width: 100%;
			height: 110px;
			overflow: hidden;
			position: relative;
		}

		label {
			position: absolute;
			top: 36.6666666667px;
			color: gray;
			/* color: rgba(255, 255, 255, 0.5); */
			font: 400 36.6666666667px Roboto;
			cursor: text;
			transition: .25s ease;
		}

		input {
			display: block;
			width: 100%;
			padding-top: 36.6666666667px;
			border: none;
			border-radius: 0;
			/* color: white; */
			color: black;
			font: Roboto;
			background: white;
			font-size: 36.6666666667px;
			transition: .3s ease;
		}

		input:valid~label {
			top: 0;
			font: 700 22px Roboto;
			color: rgba(255, 255, 255, 0.5);
		}

		input:focus {
			outline: none;
		}

		input:focus~label {
			top: 0;
			font: 700 22px Roboto;
			color: #2196f3;
		}

		input:focus~.bar:before {
			transform: translateX(0);
		}

		input:-webkit-autofill {
			-webkit-box-shadow: 0 0 0px 1000px #333 inset;
			-webkit-text-fill-color: white !important;
		}

		.bar {
			background: rgba(255, 255, 255, 0.5);
			content: '';
			width: 550px;
			height: 3.6666666667px;
			transition: .3s ease;
			position: relative;
		}

		.bar:before {
			content: '';
			position: absolute;
			width: 100%;
			height: 150%;
			background: #2196f3;
			transform: translateX(-100%);
		}

		::selection {
			background: rgba(33, 150, 243, 0.3);
		}
	</style>

</head>

<body>

	<!-- 
<div class="centered">
  <div class="group">
    <input id="name" type="text" required="required"/>
    <label for="name">업소명을 입력해주세요.</label>
    <div class="bar"></div>
  </div>
</div> -->


	<div class="main-section">

		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
			<div class="container">
				<a class="navbar-brand" href="http://localhost:8000/donghang">DongHang</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
					aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="oi oi-menu"></span> Menu
				</button>
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav ml-auto">
						<li class="dropdown nav-item"><a href="localhost:8000/donghang/analysis"
								class="dropdown-toggle nav-link icon d-flex align-items-center" data-toggle="dropdown">
								<i class="ion-ios-apps mr-2"></i> 분 석
								<b class="caret"></b>
							</a>
							<div class="dropdown-menu dropdown-menu-left">
								<a href="http://localhost:8000/donghang/analysis" class="dropdown-item"><i
										class="ion-ios-apps mr-2"></i> 기본 분석 </a> <a
									href="http://localhost:8000/donghang/data" class="dropdown-item"><i
										class="ion-ios-document mr-2"></i>
									데이터 분석 </a>
							</div>
						</li>
						<li class="nav-item"><a href="#" class="nav-link icon d-flex align-items-center"><i
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
			<div class="container">
				<div class="row description js-fullheight align-items-center justify-content-center">

					<div class="centered">
						<div class="group">
							<form action="search" method="GET">
								<input id="name" name="keyword" type="text" required="required" /> <label
									for="name">업소명을 입력해주세요.</label>
								<div class="bar"></div>
							</form>
						</div>
					</div>

					<!-- <div class="col-md-8 text-center">
  					<div class="text">
  						<h1>Tools UI Kit.</h1>
  						<h4 class="mb-5">Free Bootstrap 4 UI Kit on Tools Design.</h4>
  						<p><a href="#" class="btn btn-white px-4 py-3"><i class="ion-ios-cloud-download mr-2"></i>Download Tools</a></p>
  					</div>
  				</div> -->
				</div>
			</div>
		</section>




		<footer class="ftco-section ftco-section-2">
			<div class="col-md-12 text-center">
				<p class="mb-0">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					메인 페이지 제작중입니다. 세세한것 바꾸기 어렵네유
					<!-- <i class="icon-heart" aria-hidden="true"></i> -->
					by <a href="https://github.com/Sohottoday" target="_blank">성 연</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</footer>

	</div>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
				stroke="#F96D00" /></svg>
	</div>


	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/popper.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.easing.1.3.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.waypoints.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.stellar.min.js" />"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js" />"></script>
	<script src="<c:url value="/resources/js/aos.js" />"></script>
	<script src="<c:url value="/resources/js/nouislider.min.js" />"></script>
	<script src="<c:url value="/resources/js/moment-with-locales.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js" />"></script>
	<script src="<c:url value="/resources/js/main.js" />"></script>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<script>
		function simularsearch(value) {
			var req = new XMLHttpRequest();
			//var result = document.getElementById("result");
			req.onreadystatechange = function () {
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

		$(function () { //화면 다 뜨면 시작
			$("#name").autocomplete({
				source: function (request, response) {
					var value = $('#name').val()
					$.ajax({
						type: 'get',
						url: "simularsearch?keyword=" + value,
						dataType: "json",
						//data: {"param":"param"},
						success: function (data) {
							//서버에서 json 데이터 response 후 목록에 추가
							response($.map(data, function (item) { //json[i] 번째 에 있는게 item 임.
								console.log(item)
								return {
									label: item,
									value: item
								}
							}));
						}
					});
				}, // source 는 자동 완성 대상
				select: function (event, ui) { //아이템 선택시
					console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
					console.log(ui.item.label); //김치 볶음밥label
					console.log(ui.item.value); //김치 볶음밥
					console.log(ui.item.test); //김치 볶음밥test

				},
				focus: function (event, ui) { //포커스 가면
					return false;//한글 에러 잡기용도로 사용됨
				},
				minLength: 2,// 최소 글자수
				autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
				classes: { //잘 모르겠음
					"ui-autocomplete": "highlight"
				},
				delay: 500, //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
				//	            disabled: true, //자동완성 기능 끄기
				position: {
					my: "right top",
					at: "right bottom"
				}, //잘 모르겠음
				close: function (event) { //자동완성창 닫아질때 호출
					console.log(event);
				}
			});

		});
	</script>



</body>

</html>