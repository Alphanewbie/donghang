<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="Vo.BusinessVO,java.util.List,Vo.DispositionVo"%>
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
.container111 {
	padding-right: 100px;
	padding-left: 100px;
	padding-top: 100px;
}

.span45 {
	color: white;
}

.upso_name {
	color: white;
}

#map {
	position: static;
	top: 100px;
	margin-left: auto;
	margin-right: auto;
}

.main-content {
	margin: 5em auto;
}

.notebook {
	max-width: 800px;
	min-width: 550px;
	height: 800px;
	margin-top: 150px;
	margin-left: auto;
	margin-right: auto;
	border-radius: 16px;
	background: Green;
	padding: 2px 4px 2.5px;
}

.notebook__inner {
	width: 100%;
	height: 100%;
	position: relative;
	border-radius: 16px;
	background: linear-gradient(90deg, #fbfae8 15px, transparent 1%) center, linear-gradient(#fbfae8 15px, transparent 1%) center, #ccc;
	background-size: 16px 16px;
	display: grid;
	padding: 30px 20px 25px;
	grid-template-areas: "title expenses picture""days expenses picture""days expenses picture""days goals quote""notes tracker tracker";
	grid-template-columns: 50% 50%;
	grid-template-rows: 18% auto auto 30% 25%;
}

.notebook__inner:after {
	content: "";
	width: 100px;
	height: 100%;
	top: 0;
	margin: auto;
	left: 0;
	right: 0;
	position: absolute;
	background: linear-gradient(to right, transparent 10%, rgba(153, 153, 153, 0.05) 50%, rgba(153, 153, 153, 0.4) 51%, rgba(153, 153, 153, 0.15) 51.5%, transparent 90%);
}

.title {
	grid-area: title;
	text-align: center;
	height: 200px;
}

.title h1 {
	font: 30px/1 "Lobster", cursive;
	text-shadow: 2px 1px 0 black, 5px 4px 0 #3399ff;
	margin: 0;
}

.title h3 {
	font: 20px/1.2 "Rock Salt", cursive;
	margin: 8px;
}

.days {
	color: black;
	grid-area: days;
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	grid-template-rows: repeat(2, 1fr);
	grid-gap: 15px;
	margin-right: 22px;
	height: 300px;
}

.days__item {
	border: 2px solid #111;
	position: relative;
}

.days__item:nth-child(1) {
	box-shadow: 3px 3px 0 0 #3399ff;
}

.days__item:nth-child(2) {
	box-shadow: 3px 3px 0 0 #3399ff;
}

.days__item:nth-child(3) {
	box-shadow: 3px 3px 0 0 #3399ff;
}

.days__item:nth-child(4) {
	box-shadow: 3px 3px 0 0 #3399ff;
}

.days__item:nth-child(5) {
	box-shadow: 3px 3px 0 0 #3399ff;
}

.days__item:nth-child(6) {
	box-shadow: 3px 3px 0 0 #3399ff;
}

.days__day {
	padding: 5px 5px 2px;
	font: 14px/1.5 "Special Elite", cursive;
	border-bottom: 2px solid #3399ff;
}

.days__list {
	padding: 8px;
	font-size: 14px;
	line-height: .9;
}

.days p {
	padding-left: 8px;
	position: relative;
	margin: 5px 0;
}

.days p:after {
	content: '-';
	top: 0;
	position: absolute;
	left: 0;
}

.days .highlighted {
	position: absolute;
	width: 100%;
	bottom: 0;
	padding: 8px;
	left: 0;
	text-align: center;
}

.days .highlighted .text {
	margin-top: 5px;
	position: relative;
}

.days .highlighted .text span {
	color: black;
	position: relative;
	z-index: 2;
}

.days .highlighted .text:after {
	content: '';
	background: #ccccff;
	width: 95%;
	height: 100%;
	position: absolute;
	left: 2px;
	top: 0;
	z-index: 1;
	transform: rotate(-3deg);
}

.notes {
	grid-area: notes;
	border: 2px solid #111;
	border-width: 0 2px 2px;
	margin: 35px 20px 0 0;
	position: relative;
	height: 150px;
}

.notes span {
	color: black;
	display: block;
	margin: -25px 22px;
	font: 32px "Lobster", cursive;
	text-shadow: 2px 1px 0 black, 5px 4px 0 #3399ff;
}

.notes span:before {
	content: "";
	position: absolute;
	width: 100%;
	height: 2px;
	top: 0;
	left: 0;
	background: #111;
	background: linear-gradient(to right, #111 15px, transparent 15px, transparent 95px, #111 95px);
}

.notes__list {
	margin-top: 24px;
	padding: 10px;
	line-height: 1.2;
}

.expenses {
	grid-area: expenses;
	margin: 0 0 20px 20px;
	display: grid;
	grid-gap: 6px 10px;
	align-items: center;
	grid-template-columns: repeat(4, 1fr);
	grid-template-rows: repeat(6, auto);
	height: 300px;
}

.expenses h4 {
	text-align: center;
	margin: 0 0 10px;
	font: 16px/1 "Rock Salt", cursive;
}

.expenses h4:first-of-type {
	grid-column: 1 / span 4;
}

.expenses__box {
	border: 2px solid #111;
	grid-column: span 2;
	padding: 7px 7px 5px;
}

.expenses__title {
	text-align: center;
	color: black;
	font: 4px;
}

.expenses__amount {
	text-align: center;
	color: black;
	font: 19px 'Gochi Hand', cursive;
	display: inline-block;
	/*  margin-left: 10px; */
}

.expenses .savings {
	position: relative;
	grid-column: 1 / span 4;
	width: 99%;
	padding: 10px 10px 5px;
	background: #ccccff;
	box-shadow: 3px 3px 0 0 #3399ff;
	font: 16px/1 "Rock Salt", cursive;
}

.goals {
	grid-area: goals;
	margin: 25px 0 0 20px;
	border: 2px solid #111;
	border-width: 0 2px 2px;
	position: relative;
}

.goals__item {
	padding: 3px 12px;
}

.goals__item__checkbox {
	border: 2px solid #111;
	width: 20px;
	height: 20px;
	display: inline-block;
	margin-right: 5px;
	position: relative;
}

.goals__item__checkbox span {
	font-size: 26px;
	display: inline-block;
	position: absolute;
	top: -4px;
	color: blue;
}

.goals__item__desc {
	display: inline-block;
	font: 18px "Gochi Hand", cursive;
	vertical-align: top;
}

.goals>span:nth-child(1) {
	position: absolute;
	text-transform: uppercase;
	font: 700 9px "Rock Salt", cursive;
	top: -30px;
	transform: rotate(-15deg);
}

.goals>span:nth-child(2) {
	color: black;
	display: block;
	margin: -25px 22px;
	font: 32px "Lobster", cursive;
	text-shadow: 2px 1px 0 #fbfae8, 5px 4px 0 #3399ff;
}

.goals>span:nth-child(2):before {
	content: "";
	position: absolute;
	width: 100%;
	height: 2px;
	top: 0;
	left: 0;
	background: #111;
	background: linear-gradient(to right, #111 15px, transparent 15px, transparent 95px, #111 95px);
}

.goals__inner {
	margin-top: 40px;
}

.music {
	grid-area: tracker;
	margin: 25px 0 10px 20px;
	position: relative;
}

.music__title {
	font: 22px "Special Elite", cursive;
}

.music__artist {
	color: blue;
	margin: 15px 0;
	transform: rotate(-10deg);
	max-width: 50px;
	font: 24px/.8 'Gochi Hand', cursive;
}

.music svg {
	width: 65px;
	position: absolute;
	bottom: 0px;
	right: -10px;
}

.tracker {
	grid-area: tracker;
	display: grid;
	margin: 20px 0 0 20px;
	grid-template-rows: repeat(4, 28px);
	grid-template-columns: max-content repeat(7, 1fr);
	align-items: center;
	font: 18px/1 "Gochi Hand", cursive;
	grid-auto-flow: row;
	text-align: center;
}

.tracker__title {
	grid-column: 1;
	text-align: left;
	padding-right: 15px;
}

.tracker__day {
	text-align: center;
}

.tracker__day:nth-child(1) {
	grid-column-start: 2;
}

.tracker__bubble {
	border: 1.5px dashed;
	margin: auto;
	width: 20px;
	height: 20px;
	border-radius: 50%;
}

.tracker__bubble:nth-child(10),
.tracker__bubble:nth-child(12),
.tracker__bubble:nth-child(13) {
	background: rgba(244, 68, 46, 0.5);
}

.tracker__bubble:nth-child(17),
.tracker__bubble:nth-child(18),
.tracker__bubble:nth-child(19),
.tracker__bubble:nth-child(22),
.tracker__bubble:nth-child(23) {
	background: rgba(239, 184, 186, 0.5);
}

.tracker__bubble:nth-child(27),
.tracker__bubble:nth-child(29),
.tracker__bubble:nth-child(30) {
	background: rgba(255, 127, 80, 0.5);
}

.goals__item__checkbox span {
	font-size: 26px;
	display: inline-block;
	position: absolute;
	top: -4px;
	color: blue;
}

.goals__item__desc {
	display: inline-block;
	font: 18px "Gochi Hand", cursive;
	vertical-align: top;
}

.goals>span:nth-child(1) {
	position: absolute;
	text-transform: uppercase;
	font: 700 9px "Rock Salt", cursive;
	top: -30px;
	transform: rotate(-15deg);
}

.goals>span:nth-child(2) {
	color: black;
	display: block;
	margin: -25px 22px;
	font: 32px "Lobster", cursive;
	text-shadow: 2px 1px 0 #fbfae8, 5px 4px 0 #3399ff;
}

.goals>span:nth-child(2):before {
	content: "";
	position: absolute;
	width: 100%;
	height: 2px;
	top: 0;
	left: 0;
	background: #111;
	background: linear-gradient(to right, #111 15px, transparent 15px, transparent 95px,
			#111 95px);
}

.goals__inner {
	margin-top: 40px;
}

.music {
	grid-area: tracker;
	margin: 25px 0 10px 20px;
	position: relative;
}

.music__title {
	font: 22px "Special Elite", cursive;
}

.music__artist {
	color: blue;
	margin: 15px 0;
	transform: rotate(-10deg);
	max-width: 50px;
	font: 24px/.8 'Gochi Hand', cursive;
}

.music svg {
	width: 65px;
	position: absolute;
	bottom: 0px;
	right: -10px;
}

.tracker {
	grid-area: tracker;
	display: grid;
	margin: 20px 0 0 20px;
	grid-template-rows: repeat(4, 28px);
	grid-template-columns: max-content repeat(7, 1fr);
	align-items: center;
	font: 18px/1 "Gochi Hand", cursive;
	grid-auto-flow: row;
	text-align: center;
}

.tracker__title {
	grid-column: 1;
	text-align: left;
	padding-right: 15px;
}

.tracker__day {
	text-align: center;
}

.tracker__day:nth-child(1) {
	grid-column-start: 2;
}

.tracker__bubble {
	border: 1.5px dashed;
	margin: auto;
	width: 20px;
	height: 20px;
	border-radius: 50%;
}

.tracker__bubble:nth-child(10),
.tracker__bubble:nth-child(12),
.tracker__bubble:nth-child(13) {
	background: rgba(244, 68, 46, 0.5);
}

.tracker__bubble:nth-child(17),
.tracker__bubble:nth-child(18),
.tracker__bubble:nth-child(19),
.tracker__bubble:nth-child(22),
.tracker__bubble:nth-child(23) {
	background: rgba(239, 184, 186, 0.5);
}

.tracker__bubble:nth-child(27),
.tracker__bubble:nth-child(29),
.tracker__bubble:nth-child(30) {
	background: rgba(255, 127, 80, 0.5);
}

		/* Responsive here
@media screen and (max-width: 768px) {
	.main-content {
		padding: 1em;
	}
	.notebook__inner {
		grid-template-columns: 40% 25% 35%;
		grid-template-rows: auto;
		grid-template-areas: 
			"title title title" 
			"days days days" 
			"notes notes notes" 
			"expenses expenses expenses"
			"goals quote picture"
			"tracker tracker picture";
		> div {
			margin: 30px 20px;
		}
		&:after {
			width: 100%;
			height: 100px;
			bottom: 0;
			background: linear-gradient(
				to bottom,
				transparent 10%,
				rgba(153, 153, 153, 0.05) 50%,
				rgba(153, 153, 153, 0.4) 51%,
				rgba(153, 153, 153, 0.15) 51.5%,
				transparent 90%
			);
		}
	}
}
*/

/* 검색 메뉴 추가 */
.search {
  width: 100%;
  position: relative;
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
							<input type="text" id="name" class="searchTerm" placeholder="업소명을 입력해주세요.">
							<button type="submit" class="searchButton">
								<!-- <i class="fa fa-search"></i> -->검색
							</button>
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
			<!-- map and content -->
			<div id="map" style="width: 100%; height: 350px;"></div>

			<!-- content -->
			<div class="main-content">
				<div class="notebook">
					<div class="notebook__inner">
						<div class="title">
							<h1>${ item.upso_nm }</h1>
							<h3>${ item.site_addr_rd}</h3>
						</div>
						<div class="days">
							<div class="days__item">
								<div class="days__day">허가번호</div>
								<div class="days__list">
									<p>${item.cgg_code}</p>
									<p>${item.snt_cob_code}</p>
									<p>${item.yy}</p>
									<p>${item.upso_sno}</p>
								</div>
							</div>
							<div class="days__item">
								<div class="days__day">전화번호</div>
								<div class="days__list">
									<p>${item.upso_site_telno}</p>

									<div class="highlighted">
										<div class="text">
											<span></span>
										</div>
									</div>
								</div>
							</div>
							<div class="days__item">
								<div class="days__day">법인명</div>
								<div class="days__list">
									<p>${item.bup_nm}</p>

									<div class="highlighted">
										<div class="text">
											<span></span>
										</div>
									</div>
								</div>
							</div>
							<div class="days__item">
								<div class="days__day">업종명</div>
								<div class="days__list">
									<p>${ item.snt_uptae_nm }</p>
									<div class="highlighted">
										<div class="text">
											<span></span>
										</div>
										<div class="text">
											<span></span>
										</div>
									</div>
								</div>
							</div>
							<div class="days__item">
								<div class="days__day">허가신고일</div>
								<div class="days__list">
									<p>${ item.perm_nt_ymd }</p>
									<div class="highlighted">
										<div class="text">
											<span></span>
										</div>
										<div class="text">
											<span></span>
										</div>
									</div>
								</div>
							</div>
							<div class="days__item">
								<div class="days__day">영업장 면적</div>
								<div class="days__list">
									<p></p>
									<div class="highlighted">
										<div class="text">
											<span></span>
										</div>
										<div class="text">
											<span></span>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="notes">
							<span>워드클라우드</span>

							<div class="notes__list"><img src="resources/wordcloud/${item.perm_nt_no}.png" id="wordcloud"></div>
	
						</div>
						<div class="expenses">
							<h4>기타 정보</h4>
							<div class="expenses__box">
								<span class="expenses__title">[처분일자]</span><span class="expenses__amount">${
									punishlist[0]. gnt_no }</span>
							</div>
							<div class="expenses__box">
								<span class="expenses__title">[법적근거]</span><span class="expenses__amount">${
									punishlist[0]. bas_law }</span>
							</div>
							<div class="expenses__box">
								<span class="expenses__title">[처분내용]</span><span class="expenses__amount">${
									punishlist[0]. dispo_ctn }</span>
							</div>
							<div class="expenses__box">
								<span class="expenses__title">[처분기간]</span><span class="expenses__amount">${
									punishlist[0]. dispo_ctn_dt}</span>
							</div>

							<div class="savings">
								<span class="expenses__title">위반내용 : </span><span
									class="expenses__amount">${punishlist[0].viol_cn} </span>
							</div>
						</div>

						<div class="goals">
							<span></span><span>장사 여부</span>
							<div class="goals__inner">
								<div class="goals__list">
									<div class="goals__item">
										<div class="goals__item__checkbox">
											<!-- <span>&#10004;</span> -->
										</div>
										<c:choose>
											<c:when test="${empty item.dcb_gbn_nm }">
												<div class="goals__item__desc">상태 : 정상 영업</div>
												<!--<div class="goals__item">
													<div class="goals__item__checkbox"></div>
													<div class="goals__item__desc">폐업 일자 :
														${item.dcb_ymd}</div>
				
													</div>

													<div class="goals__item">
														<div class="goals__item__checkbox"></div>
														<div class="goals__item__desc">폐업 사유 : ${item.dcb_why}</div>
													</div>
												-->
											</c:when>

											<c:otherwise>
												<div class="goals__item__desc">상태 : ${item.dcb_gbn_nm}</div>
												<!-- 폐업구분 칼럼 활용 -->
												<div class="goals__item">
													<div class="goals__item__checkbox"></div>
													<div class="goals__item__desc">폐업 일자 : ${item.dcb_ymd}</div>
													<!-- 상태가 빈칸이 아닐때 나타나게 가능한지? -->
												</div>
												<div class="goals__item">
													<div class="goals__item__checkbox"></div>
													<div class="goals__item__desc">폐업 사유 : ${item.dcb_why}</div>
												</div>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
						<div class="music">
							<div class="music__title">Made by</div>
							<div class="music__artist">Team DongHang</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc749fee6771e67cc8f77587a763513a&libraries=services"></script>
		<script>
			//주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			//주소로 좌표를 검색합니다

			var addrinput = '${ item.site_addr_rd}'
			if (addrinput == '    ') {
				addrinput = '${ item.site_addr}';
			}
			console.log(addrinput);
			geocoder
				.addressSearch(
					addrinput,
					function (result, status) {
						var coords = null;
						// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {
							coords = new kakao.maps.LatLng(result[0].y,
								result[0].x);

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
							// 결과값으로 받은 위치를 마커로 표시합니다
							var marker = new kakao.maps.Marker({
								map: map,
								position: coords
							});
							// 인포윈도우로 장소에 대한 설명을 표시합니다
							var infowindow = new kakao.maps.InfoWindow(
								{
									content: '<div style="width:150px;text-align:center;padding:6px 0;">${ item.upso_nm }</div>'
								});
							infowindow.open(map, marker);
							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.setCenter(coords);
						}
					});
		</script>

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

	<!-- 테이블환경 -->
	<script>
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