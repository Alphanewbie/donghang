<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.List,Vo.ClosedVO"%>

<html>

<head>
	<title>우리동네 행정처분정보-동행</title>
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
		/* category */
		.coverbutton {
			padding-top: 100px;
		}

		@import 'https://fonts.googleapis.com/css?family=Comfortaa:300,400,700&subset=cyrillic,cyrillic-ext,latin-ext';

		.gucategory {
			color: #454545;
			background: transparent;
			border-width: 2px;
			border-style: solid;
			border-color: #454545;
			position: relative;
			margin: 1em;
			display: inline-block;
			padding: 0.5em 1em;
			transition: all 0.3s ease-in-out;
			text-align: center;
			font-family: comfortaa;
			font-weight: bold
		}

		.gucategory:before,
		.gucategory:after {
			content: '';
			display: block;
			position: absolute;
			border-color: #454545;
			box-sizing: border-box;
			border-style: solid;
			width: 1em;
			height: 1em;
			transition: all 0.3s ease-in-out
		}

		.gucategory:before {
			top: -6px;
			left: -6px;
			border-width: 2px 0 0 2px;
			z-index: 5;
		}

		.gucategory:after {
			bottom: -6px;
			right: -6px;
			border-width: 0 2px 2px 0;
		}

		.gucategory:hover:before,
		.gucategory:hover:after {
			width: calc(100% + 12px);
			height: calc(100% + 12px);
			border-color: #fff
		}

		.gucategory:hover {
			color: #353535;
			background-color: #fff;
			border-color: #fff
		}

		.panel {
			/* max-width:960px */
			;
			text-align: center;
			position: relative;
			margin: auto;
		}


		.pink button {
			color: #eb1777;
			border-color: #eb1777
		}

		.pink button:before,
		.pink button:after {
			border-color: #eb1777
		}

		.pink button:hover:before,
		.pink button:hover:after {
			border-color: #eb1777;
		}

		.pink button:hover {
			color: #fff;
			background-color: #eb1777;
			border-color: #eb1777;
		}

		.pink .panel {
			/* max-width:960px */
			;
			text-align: center;
			position: relative;
			margin: auto;
		}


		.blue button {
			color: #3bb4e5;
			border-color: #3bb4e5
		}

		.blue button:before,
		.blue button:after {
			border-color: #3bb4e5
		}

		.blue button:hover:before,
		.blue button:hover:after {
			width: calc(100% + 12px);
			height: calc(100% + 12px);
			border-color: #3bb4e5;
			transform: rotateY(180deg)
		}

		.blue button:hover {
			color: #3bb4e5;
			background-color: transparent;
			border-color: #3bb4e5
		}

		.blue .panel {
			/* max-width:960px; */
			text-align: center;
			position: relative;
			margin: auto;
		}

		.borderless button {
			border-color: rgba(0, 0, 0, 0);
			color: #999
		}

		.borderless button:hover {
			border-color: #353535;
			background-color: transparent;
			color: #353535
		}

		.borderless button:before,
		.borderless button:after {
			border-color: transparent;
		}

		.borderless button:hover:before,
		.borderless button:hover:after {
			width: calc(100% + 12px);
			height: calc(100% + 12px);
			border-color: #353535
		}

		.bw button {
			color: #fff;
			border-color: #fff;
			text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
			box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.1) inset
		}

		.bw button:before,
		.bw button:after {
			border-color: #fff
		}

		.bw button:hover:before,
		.bw button:hover:after {
			width: calc(100% + 12px);
			height: calc(100% + 12px);
			border-color: #353535;
		}

		.bw button:hover {
			color: #fff;
			background-color: #353535;
			border-color: #353535
		}

		.blue .panel {
			/* max-width:960px */
			;
			text-align: center;
			position: relative;
			margin: auto;
		}

		/* graph section */
		div#carousel {
			perspective: 1200px;
			background: #3399ff;
			padding-top: 5%;
			font-size: 0;
			/* margin-bottom: 3rem;  */
			overflow: hidden;
		}

		figure#spinner {
			transform-style: preserve-3d;
			height: 450px;
			/* 300 */
			transform-origin: 50% 50% -500px;
			transition: 1s;
		}

		figure#spinner img {
			width: 40%;
			max-width: 425px;
			position: absolute;
			left: 30%;
			transform-origin: 50% 50% -500px;
			outline: 1px solid transparent;
		}

		/* figure#spinner img:nth-child(1) { transform:rotateY(0deg); 
}
figure#spinner img:nth-child(2) { transform: rotateY(-45deg); }
figure#spinner img:nth-child(3) { transform: rotateY(-90deg); }
figure#spinner img:nth-child(4) { transform: rotateY(-135deg); }
figure#spinner img:nth-child(5){ transform: rotateY(-180deg); }
figure#spinner img:nth-child(6){ transform: rotateY(-225deg); }
figure#spinner img:nth-child(7){ transform: rotateY(-270deg); }
figure#spinner img:nth-child(8){ transform: rotateY(-315deg); } */

		figure#spinner img:nth-child(1) {
			transform: rotateY(0deg);
		}

		figure#spinner img:nth-child(2) {
			transform: rotateY(-60deg);
		}

		figure#spinner img:nth-child(3) {
			transform: rotateY(-120deg);
		}

		figure#spinner img:nth-child(4) {
			transform: rotateY(-180deg);
		}

		figure#spinner img:nth-child(5) {
			transform: rotateY(-240deg);
		}

		figure#spinner img:nth-child(6) {
			transform: rotateY(-300deg);
		}

		div#carousel~span {
			color: #fff;
			margin: 5%;
			display: inline-block;
			text-decoration: none;
			font-size: 2rem;
			transition: 0.6s color;
			position: relative;
			margin-top: -6rem;
			border-bottom: none;
			line-height: 0;
		}

		div#carousel~span:hover {
			color: #888;
			cursor: pointer;
		}

		.table {
			margin: 0 0 40px 0;
			width: 100%;
			box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
			display: table;
		}

		@media screen and (max-width: 580px) {
			.table {
				display: block;
			}
		}

		.row {
			display: table-row;
			background: #f6f6f6;
		}

		.row:nth-of-type(odd) {
			background: #e9e9e9;
		}

		.row.header {
			font-weight: 900;
			color: #ffffff;
			background: #ea6153;
		}

		.row.green {
			background: #27ae60;
		}

		.row.blue {
			background: #2980b9;
		}

		@media screen and (max-width: 580px) {
			.row {
				padding: 14px 0 7px;
				display: block;
			}

			.row.header {
				padding: 0;
				height: 6px;
			}

			.row.header .cell {
				display: none;
			}

			.row .cell {
				margin-bottom: 10px;
			}

			.row .cell:before {
				margin-bottom: 3px;
				content: attr(data-title);
				min-width: 98px;
				font-size: 10px;
				line-height: 10px;
				font-weight: bold;
				text-transform: uppercase;
				color: #969696;
				display: block;
			}
		}

		.cell {
			padding: 6px 12px;
			display: table-cell;
		}

		@media screen and (max-width: 580px) {
			.cell {
				padding: 2px 16px;
				display: block;
			}
		}
	</style>

</head>

<body>
	<div class="main-section">
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
			<div class="container">
				<a class="navbar-brand" href="/donghang">DongHang</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
					aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="oi oi-menu"></span> Menu
				</button>
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav ml-auto">
						<li class="dropdown nav-item"><a href="#"
								class="dropdown-toggle nav-link icon d-flex align-items-center" data-toggle="dropdown">
								<i class="ion-ios-apps mr-2"></i> 분 석
								<b class="caret"></b>
							</a>
							<div class="dropdown-menu dropdown-menu-left">
								<a href="/donghang/analysis" class="dropdown-item"><i class="ion-ios-apps mr-2"></i> 기본
									분석 </a> <a href="/donghang/data" class="dropdown-item"><i
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

			<!-- 카테고리 추가 -->
			<div class="coverbutton">
				<div class="panel">
					<button class="gucategory">전 체</button>
					<button class="gucategory" onClick="location.href='/donghang/closerate'">강남구</button>
					<!-- 
					<button class="gucategory">강동구</button>
					<button class="gucategory">강북구</button>
					<button class="gucategory">강서구</button>

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
					-->
				</div>
			</div>

			<div style="overflow:auto; width:500px; height:700px; float: left;">

				<div class="table">

					<div class="row header blue">
						<div class="cell">
							랭킹
						</div>
						<div class="cell">
							주소
						</div>
						<div class="cell">
							폐업율
						</div>

					</div>

					<c:forEach var="item" items="${list}" varStatus="status">
						<div class="row" onclick="panTo('${item.pos}')">
							<div class="cell" data-title="Name">
								${status.count}
							</div>
							<div class="cell" data-title="Age">
								${item.pos}
							</div>
							<div class="cell" data-title="Age">
								${item.rate}
							</div>
						</div>
					</c:forEach>

				</div>
			</div>

			<div id="map" style="width:60%;height:700px; float: right;">
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc749fee6771e67cc8f77587a763513a&libraries=services">
					</script>

				<script>
					//주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();
					//주소로 좌표를 검색합니다

					var addrinput = '서울'
					console.log(addrinput);
					geocoder
						.addressSearch(
							addrinput,
							function (result, status) {
								var coords = null;
								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {
									coords = new kakao.maps.LatLng(result[0].y, result[0].x);

									var mapContainer = document
										.getElementById('map'), // 지도를 표시할 div 
										mapOption = {
											center: coords, // 지도의 중심좌표
											level: 8
											// 지도의 확대 레벨
										};
									//지도를 생성합니다    
									var map = new kakao.maps.Map(mapContainer,
										mapOption);
									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								}
							});

					function panTo(addrinput) {
						// 이동할 위도 경도 위치를 생성합니다 
						geocoder
							.addressSearch(
								addrinput,
								function (result, status) {
									var coords = null;
									// 정상적으로 검색이 완료됐으면 
									if (status === kakao.maps.services.Status.OK) {
										coords = new kakao.maps.LatLng(result[0].y, result[0].x);

										var mapContainer = document
											.getElementById('map'), // 지도를 표시할 div 
											mapOption = {
												center: coords, // 지도의 중심좌표
												level: 3
												// 지도의 확대 레벨
											};
										//지도를 생성합니다    
										var map = new kakao.maps.Map(mapContainer,
											mapOption);
										
										var marker = new kakao.maps.Marker({
											map: map,
											position: coords
										});
										// 인포윈도우로 장소에 대한 설명을 표시합니다
										var infowindow = new kakao.maps.InfoWindow(
											{
												content: '<div style="width:150px;text-align:center;padding:6px 0;">'+addrinput+'</div>'
											});
										infowindow.open(map, marker);
										// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
										map.panTo(coords);
									}
								});
					}        
				</script>
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