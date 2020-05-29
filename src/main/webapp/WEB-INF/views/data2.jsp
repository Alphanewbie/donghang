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

/* category */
.coverbutton{
	padding-top : 100px;
}
@import 'https://fonts.googleapis.com/css?family=Comfortaa:300,400,700&subset=cyrillic,cyrillic-ext,latin-ext';

.gucategory {color:#454545;background:transparent;border-width:2px;border-style: solid;border-color: #454545;position:relative;margin:1em;display:inline-block;padding:0.5em 1em;transition:all 0.3s ease-in-out;text-align:center;
font-family:comfortaa;font-weight:bold}
.gucategory:before, .gucategory:after {content:'';display:block;position:absolute;border-color:#454545;box-sizing:border-box;border-style:solid;width:1em;height:1em;transition:all 0.3s ease-in-out}
.gucategory:before {top:-6px;left:-6px;border-width:2px 0 0 2px;z-index:5;}
.gucategory:after {bottom:-6px;right:-6px;border-width:0 2px 2px 0;}
.gucategory:hover:before, .gucategory:hover:after {width:calc(100% + 12px);
  height:calc(100% + 12px);border-color:#fff}
.gucategory:hover {color:#353535;background-color:#fff;border-color:#fff}
.panel {/* max-width:960px */;text-align:center;position:relative;margin:auto;}

.pink button {color:#eb1777;border-color:#eb1777}
.pink button:before, .pink button:after  {border-color:#eb1777}
.pink button:hover:before, .pink button:hover:after {border-color:#eb1777;}
.pink button:hover {color:#fff;background-color:#eb1777;border-color:#eb1777;}
.pink .panel {/* max-width:960px */;text-align:center;position:relative;margin:auto;}

.blue button {color:#3bb4e5;border-color:#3bb4e5}
.blue button:before, .blue button:after  {border-color:#3bb4e5}
.blue button:hover:before, .blue button:hover:after {width:calc(100% + 12px);
  height:calc(100% + 12px);border-color:#3bb4e5;transform:rotateY(180deg)}
.blue button:hover {color:#3bb4e5;background-color:transparent;border-color:#3bb4e5}
.blue .panel {/* max-width:960px; */text-align:center;position:relative;margin:auto;}

.borderless button {border-color:rgba(0,0,0,0);color:#999}
.borderless button:hover {border-color:#353535;background-color:transparent;color:#353535}
.borderless button:before, .borderless button:after {border-color:transparent;}
.borderless button:hover:before, .borderless button:hover:after {width:calc(100% + 12px); height:calc(100% + 12px);border-color:#353535}

.bw button {color:#fff;border-color:#fff;text-shadow:0 1px 1px rgba(0,0,0,0.1);
box-shadow:0 1px 3px rgba(0,0,0,0.1), 0 1px 3px rgba(0,0,0,0.1) inset
}
.bw button:before, .bw button:after  {border-color:#fff}
.bw button:hover:before, .bw button:hover:after {width:calc(100% + 12px);
  height:calc(100% + 12px);border-color:#353535;}
.bw button:hover {color:#fff;background-color:#353535;border-color:#353535}
.blue .panel {/* max-width:960px */;text-align:center;position:relative;margin:auto;}

/* iframe */

.laptop {
	box-sizing: border-box;
	width: 900px;
	max-width: 100%;
	height: 550px;
	margin: 0 auto;
	border: 5px solid #fff;
	border-radius: 10px;
	overflow: hidden;
	background-image: url(resources/images/notebook.jpg);
}

.screen-overlay {
	width: 600px;
	height: 500px;
	background-color: #191919;

	
	transform: matrix3d(1.11008, 0.108202, 0, 0.000394192, 
						0.224001, 0.803852, 0, -8.80428e-05, 
						0, 0, 1, 0, 
						40, 34, 0, 1);
	transform-origin: 0 0 0;
}

.live-view {
	width: 200%;
	height: 200%;
	transform: scale(0.5);
	transform-origin: top left;
}

</style>

</head>
<body>
	<div class="main-section">
		<nav
			class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
			id="ftco-navbar">
			<div class="container">
				<a class="navbar-brand" href="http://localhost:8000/donghang">DongHang</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#ftco-nav" aria-controls="ftco-nav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="oi oi-menu"></span> Menu
				</button>
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav ml-auto">
						<li class="dropdown nav-item"><a href="#"
							class="dropdown-toggle nav-link icon d-flex align-items-center"
							data-toggle="dropdown"> <i class="ion-ios-apps mr-2"></i> 분 석
								<b class="caret"></b>
						</a>
							<div class="dropdown-menu dropdown-menu-left">
								<a href="http://localhost:8000/donghang/analysis" class="dropdown-item"><i
									class="ion-ios-apps mr-2"></i> 기본 분석 </a> <a href="http://localhost:8000/donghang/data"
									class="dropdown-item"><i class="ion-ios-document mr-2"></i>
									데이터 분석 </a>
							</div></li>
						<li class="nav-item"><a href="#"
							class="nav-link icon d-flex align-items-center"><i
								class="ion-ios-cloud-download mr-2"></i> Rest API</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- END nav -->

		<section class="hero-wrap js-fullheight">

<!-- 카테고리 추가 -->
<div class="coverbutton">
	<div class="panel">
  		<button class="gucategory">전 체</button>
  		<button class="gucategory">강남구</button>
  		<button class="gucategory">강동구</button>
  		<button class="gucategory">강북구</button>
  		<button class="gucategory">강서구</button>
<!-- </div> -->
<!-- <div class="panel pink"> -->
  		<button class="gucategory">관악구</button>
  		<button class="gucategory">광진구</button>
		<button class="gucategory">구로구</button>
  		<button class="gucategory">금천구</button>
  		<button class="gucategory">노원구</button>
	</div>
	<div class="panel bw">
  		<button class="gucategory">도봉구</button>
  		<button class="gucategory">동대문구</button>
		<button class="gucategory">동작구</button>
  		<button class="gucategory">마포구</button>
  		<button class="gucategory">서대문구</button>
<!-- </div>
<div class="panel borderless"> -->
  		<button class="gucategory">서초구</button>
  		<button class="gucategory">성동구</button>
  		<button class="gucategory">성북구</button>
  		<button class="gucategory">송파구</button>
  		<button class="gucategory">양천구</button>
	</div>
	<div class="panel blue">
  		<button class="gucategory">영등포구</button>
  		<button class="gucategory">용산구</button>
  		<button class="gucategory">은평구</button>
  		<button class="gucategory">종로구</button>
  		<button class="gucategory">중구</button>
  		<button class="gucategory">중랑구</button>
	</div>
	</div>

<!-- iframe -->
	<div class="laptop">
		<div class="screen-overlay">
			<iframe src="resources/analview/gucobresult.html" class="live-view" sandbox="allow-scripts allow-same-origin allow-pointer-lock"></iframe>
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
					by <a href="https://github.com/Sohottoday" target="_blank">성 연</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
