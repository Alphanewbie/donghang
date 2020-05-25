<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="Vo.BusinessVO,java.util.List,Vo.DispositionVo"%>
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

		/* content */
		/* * {
  box-sizing: border-box;
} */

		/* body {
  background: #222;
  font-family: "Gochi Hand", sans-serif;
  color: #333;
}
 */

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

/*Resize the wrap to see the search bar change!*/
.wrap{
  width: 30%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
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
					
					<!-- 검색 메뉴 추가 -->
							<div class="wrap">
   <div class="search">
      <input type="text" class="searchTerm" placeholder="What are you looking for?">
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
										class="ion-ios-apps mr-2"></i> 기본
									분석 </a> <a href="http://localhost:8000/donghang/data" class="dropdown-item"><i
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
							<span>뭐넣지?</span>
							<div class="notes__list">어떤거 넣을지 고민중</div>
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
								<span class="expenses__title">[처분기간]</span><span class="expenses__amount">2</span>
							</div>

							<div class="savings">
								<span class="expenses__title">위반내용 : </span><span
									class="expenses__amount">${punishlist[0].viol_cn} </span>
							</div>
						</div>
						<!-- <div class="picture">
        <div class="picture__border"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/TSNY.jpg"/>
          <figcaption>
             Times Square,<br/>NYC &hearts; </figcaption>
        </div>
      </div> -->
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
							<svg viewBox="0 0 444.18 444.18">
								<path
									d="M400.348,294.485c-8.014-20.093-24.798-33.091-46.049-35.662c-34.474-4.172-72.55,19.051-104.452,63.713   C178.301,422.701,110.164,429.493,90.976,429.168c-16.64-0.268-27.452-5.433-30.785-10.433   c-8.769-13.154,9.513-36.94,20.978-48.972c8.255,6.058,18.181,9.334,28.613,9.334c12.955,0,25.134-5.045,34.294-14.206   l106.461-106.46c2.786,0.3,5.602,0.467,8.444,0.467c20.7,0,40.162-8.062,54.801-22.7c14.638-14.638,22.699-34.1,22.699-54.801   c0-20.701-8.062-40.163-22.699-54.801c-30.219-30.217-79.385-30.215-109.602,0c-14.638,14.638-22.699,34.1-22.699,54.801   c0,2.842,0.167,5.658,0.467,8.444L75.488,296.304c-9.161,9.16-14.206,21.339-14.206,34.294c0,10.412,3.265,20.319,9.3,28.564   c-4.132,4.317-10.097,11.035-15.416,18.867c-16.741,24.653-13.295,40.269-7.456,49.027c6.927,10.392,23.011,16.788,43.023,17.11   c0.541,0.009,1.089,0.013,1.651,0.013c17.095,0,43.821-4.224,76.704-23.5c33.207-19.465,64.485-49.552,92.964-89.424   c28.193-39.471,62.012-60.985,90.444-57.541c15.637,1.891,27.999,11.487,33.918,26.327c10.44,26.179-0.117,62.094-28.242,96.072   c-8.815,10.649-16.981,21.185-24.273,31.314c-2.42,3.362-1.656,8.049,1.705,10.469s8.049,1.657,10.469-1.705   c7.096-9.856,15.054-20.123,23.654-30.513C401.406,367.408,412.853,325.841,400.348,294.485z M86.095,354.286   c-6.327-6.327-9.812-14.74-9.812-23.688c0-6.392,1.787-12.505,5.108-17.785l46.177,46.177c-5.28,3.322-11.394,5.108-17.785,5.108   C100.835,364.098,92.422,360.613,86.095,354.286z M214.788,225.593c-11.805-11.805-18.306-27.5-18.306-44.194   c0-3.396,0.283-6.747,0.811-10.036l71.725,71.725c-3.289,0.528-6.64,0.811-10.036,0.811   C242.288,243.899,226.593,237.397,214.788,225.593z M214.788,137.204c12.185-12.184,28.189-18.276,44.194-18.276   s32.01,6.092,44.193,18.276c11.806,11.805,18.307,27.5,18.307,44.194s-6.501,32.39-18.307,44.194   c-5.276,5.276-11.333,9.484-17.905,12.534l-83.017-83.017C205.304,148.537,209.512,142.48,214.788,137.204z M204.182,236.199   c8.337,8.337,18.243,14.533,29.047,18.329l-94.455,94.455l-47.376-47.376l94.455-94.456   C189.649,217.956,195.844,227.862,204.182,236.199z">
								</path>
								<path
									d="M71.404,156.771c3.832,0,7.727-0.683,11.515-2.124c8.114-3.085,14.542-9.146,18.097-17.065s3.815-16.75,0.729-24.864   L74.201,40.279l60.756-23.103l17.82,46.862c-5.879-1.236-12.163-0.87-18.183,1.419c-16.75,6.37-25.195,25.179-18.826,41.93   c4.929,12.961,17.306,20.95,30.414,20.95c3.832,0,7.727-0.683,11.515-2.124c8.114-3.085,14.542-9.146,18.097-17.065   s3.815-16.75,0.729-24.864l-30.211-79.45c-0.707-1.859-2.124-3.362-3.938-4.176s-3.879-0.875-5.738-0.168L61.859,28.924   c-3.872,1.472-5.817,5.804-4.345,9.676L78,92.472c-5.879-1.236-12.163-0.869-18.183,1.419c-16.75,6.37-25.195,25.179-18.826,41.93   C45.919,148.782,58.296,156.771,71.404,156.771z M162.109,103.004c-1.915,4.264-5.375,7.528-9.745,9.189   c-9.021,3.428-19.147-1.118-22.578-10.137c-3.429-9.02,1.118-19.148,10.137-22.578c2.041-0.776,4.137-1.144,6.201-1.144   c7.058,0,13.723,4.302,16.377,11.281C164.163,93.985,164.024,98.739,162.109,103.004z M65.148,107.912   c2.041-0.776,4.137-1.144,6.201-1.144c7.058,0,13.723,4.302,16.377,11.281c1.661,4.37,1.522,9.124-0.393,13.389   c-1.915,4.264-5.375,7.528-9.745,9.189c-9.021,3.429-19.147-1.118-22.578-10.137C51.582,121.47,56.129,111.342,65.148,107.912z">
								</path>
							</svg>
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
			//if(addrinput == '    ') {
			//	addrinput ='${ item.site_addr}';
			//}
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

	<!-- loader -->
	<%-- <div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div> --%>


	<script src="<c:url value=" /resources/js/jquery.min.js" />"></script>
	<script src="<c:url value=" /resources/js/jquery-migrate-3.0.1.min.js" />"></script>
	<script src="<c:url value=" /resources/js/popper.min.js" />"></script>
	<script src="<c:url value=" /resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value=" /resources/js/jquery.easing.1.3.js" />"></script>
	<script src="<c:url value=" /resources/js/jquery.waypoints.min.js" />"></script>
	<script src="<c:url value=" /resources/js/jquery.stellar.min.js" />"></script>
	<script src="<c:url value=" /resources/js/owl.carousel.min.js" />"></script>
	<script src="<c:url value=" /resources/js/jquery.magnific-popup.min.js" />"></script>
	<script src="<c:url value=" /resources/js/aos.js" />"></script>

	<script src="<c:url value=" /resources/js/nouislider.min.js" />"></script>
	<script src="<c:url value=" /resources/js/moment-with-locales.min.js" />"></script>
	<script src="<c:url value=" /resources/js/bootstrap-datetimepicker.min.js" />"></script>
	<script src="<c:url value=" /resources/js/main.js" />"></script>

	<!-- 테이블환경 -->
	<script>

	</script>




</body>

</html>