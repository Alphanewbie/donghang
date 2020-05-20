<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&display=swap"
	rel="stylesheet" type="text/css">

<link href="https://fonts.googleapis.com/css?family=Prata&display=swap"
	rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	type="text/css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css"
	type="text/css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/aos.css"
	type="text/css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/ionicons.min.css"
	type="text/css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datetimepicker.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nouislider.css"
	type="text/css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icomoon.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css">
<style>

.container111 {
	padding : 100px;
}

.span45 {
	color : white;
}
.upso_name {
	color : white;
}

/* 테이블 환경 */
/* body {
  background: #EEE; */
  /* font-size:0.9em !important; */
/* } */

.invoice {
  width: 970px !important;
  margin: 50px auto;
}
.invoice .invoice-header {
  padding: 25px 25px 15px;
}
.invoice .invoice-header h1 {
  margin: 0;
}
.invoice .invoice-header .media .media-body {
  font-size: .9em;
  margin: 0;
}
.invoice .invoice-body {
  border-radius: 10px;
  padding: 25px;
  background: #FFF;
}
.invoice .invoice-footer {
  padding: 15px;
  font-size: 0.9em;
  text-align: center;
  color: #999;
}

.logo {
  max-height: 70px;
  border-radius: 10px;
}

.dl-horizontal {
  margin: 0;
}
 .dl-horizontal dt {
  float: left;
  width: 80px;
  overflow: hidden;
  clear: left;
  text-align: right;
  text-overflow: ellipsis;
  white-space: nowrap;
  color : white;
}
.dl-horizontal dd {
  margin-left: 90px;
  color : white;
} 
td {
	color : white;
	border: 1px solid white;
}

.rowamount {
  padding-top: 15px !important;
}

.rowtotal {
  font-size: 1.3em;
}

.colfix {
  width: 12%;
}

.mono {
  font-family: monospace;
}
.panel-title {
	color : white;
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
			<div class="container111">
	<div class="row-fluid">
        <div class="span8">
        	<!-- <iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.uk/maps?f=q&source=s_q&hl=en&geocode=&q=15+Springfield+Way,+Hythe,+CT21+5SH&aq=t&sll=52.8382,-2.327815&sspn=8.047465,13.666992&ie=UTF8&hq=&hnear=15+Springfield+Way,+Hythe+CT21+5SH,+United+Kingdom&t=m&z=14&ll=51.077429,1.121722&output=embed"></iframe> -->
         	<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
         	src="https://maps.google.co.kr/maps?f=q&source=s_q&hl=ko&geocode=&q=서울특별시 강남구 대치동 989번지 2호&
         	aq=t&sll=37.4987948,127.0595904&sspn=37.4987948,127.0595904&ie=UTF8&hq=&
         	hnear=서울특별시 강남구 대치동 989번지 2호&t=m&z=14&ll=37.4987948,127.0595904&output=embed"></iframe>
    	</div>
    	<!-- sspn뭔지 모르겠음 / q => 마킹 주소 / hnear 뭔지 모르겠음 / ll => 지도 센터 / sll 뭔지 모르겠음 -->
    	
      	<div class="span45">
    		<h2 class="upso_name">민물장어 참숯불소금구이</h2>
<!--     		<address>
    			<strong>서울특별시 강남구 대치동  989번지 2호  </strong><br>
    			허가번호 : 3220000-101-1997-04579<br>
    			업태명 : 정종/대포집/소주방<br>
    			업종명 : 일반음식점<br>
    			행정처분내역 : <br>
    			폐업사유 : 자진폐업(건강)<br>
    			폐업일자 : 20150408<br>
    			<abbr title="Phone">P:</abbr> 02 5526058
    		</address> -->
    		
    		
    		<!-- 테이블내용 -->
<!--          <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">&nbsp;업소 정보</h3>
          </div>
          <div class="panel-body">
            <dl class="dl-horizontal">
              <dt>주 소</dt>
              <dd><strong>서울특별시 강남구 대치동 989번지 2호</strong></dd>
              <dt>허가번호</dt>
              <dd>3220000-101-1997-04579</dd>
              <dt>업태명</dt>
              <dd>정종/대포집/소주방</dd>
              <dt>업종명</dt>
              <dd>일반음식점</dd>
              <dt>법인명</dt>
              <dd>&nbsp;</dd>
              <dt>전화번호</dt>
              <dd class="mono">02 9985671</dd>
              <dt>영업장 면접</dt>
              <dd>20.64㎡</dd>
              <dt>&nbsp;</dt>
              <dd>&nbsp;</dd>
          </div>
        </div>
      </div>
      <div class="col-xs-7">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">행정처분 내역</h3>
          </div>
          <div class="panel-body">
            <dl class="dl-horizontal">
              <dt>처분명</dt>
              <dd>영업정지</dd>
              <dt>법적근거</dt>
              <dd>식품위생법 제25조</dd>
              <dt>위반일자</dt>
              <dd>20080522</dd>
              <dt>위반내용</dt>
              <dd>법 제44조(영업자 등의 준수사항) 위반>식품접객업자의 준수사항(별표 17 제6호자목ㆍ파목ㆍ머목 및 별도의 개별 처분기준이 있는 경우는 제외한다)의 위반으로서 별표 17 제6호타목1)을 위반함
              </dd>
              <dt>처분내용</dt>
              <dd>영업정지</dd>
              <dt>폐업일자</dt>
              <dd class="mono">20090212</dd>
              <dt>폐업구분</dt>
              <dd>자진폐업</dd>
              <dt>폐업사유</dt>
              <dd>행정처분</dd>
              <dt>&nbsp;</dt>
              <dd>&nbsp;</dd>
          </div>
        </div>
      </div>
    </div>
    		 -->
    		         <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">&nbsp;업소 정보</h3>
          </div>
          <table class="panel-body">
            <dl class="dl-horizontal">
          
            <tr>
              <td>주 소</td>
              <td><strong>서울특별시 강남구 대치동 989번지 2호</strong></td>
            </tr>
            <tr>
              <td>허가번호</td>
              <td>3220000-101-1997-04579</td>
            </tr>
            <tr>
              <td>업태명</td>
              <td>정종/대포집/소주방</td>
             </tr>
             <tr>
              <td>업종명</td>
              <td>일반음식점</td>
             </tr>
             <tr>
              <td>법인명</td>
              <td>&nbsp;</td>
             </tr>
             <tr>
              <td>전화번호</td>
              <td class="mono">02 9985671</td>
             </tr>
             <tr>
              <td>영업장 면접</td>
              <td>20.64㎡</td>
             </tr>
              <!-- <dt>&nbsp;</dt>
              <dd>&nbsp;</dd> -->
              
          </table>
          <br>
          <br>
        </div>
      </div>
      <div class="col-xs-7">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">행정처분 내역</h3>
          </div>
          <div class="panel-body">
            <dl class="dl-horizontal">
              <dt>처분명</dt>
              <dd>영업정지</dd>
              <dt>법적근거</dt>
              <dd>식품위생법 제25조</dd>
              <dt>위반일자</dt>
              <dd>20080522</dd>
              <dt>위반내용</dt>
              <dd>법 제44조(영업자 등의 준수사항) 위반>식품접객업자의 준수사항(별표 17 제6호자목ㆍ파목ㆍ머목 및 별도의 개별 처분기준이 있는 경우는 제외한다)의 위반으로서 별표 17 제6호타목1)을 위반함
              </dd>
              <dt>처분내용</dt>
              <dd>영업정지</dd>
              <dt>폐업일자</dt>
              <dd class="mono">20090212</dd>
              <dt>폐업구분</dt>
              <dd>자진폐업</dd>
              <dt>폐업사유</dt>
              <dd>행정처분</dd>
              <dt>&nbsp;</dt>
              <dd>&nbsp;</dd>
          </div>
        </div>
      </div>
    </div>
    		
    	
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
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
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
	<script
		src="<c:url value="/resources/js/jquery.magnific-popup.min.js" />"></script>
	<script src="<c:url value="/resources/js/aos.js" />"></script>

	<script src="<c:url value="/resources/js/nouislider.min.js" />"></script>
	<script
		src="<c:url value="/resources/js/moment-with-locales.min.js" />"></script>
	<script
		src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js" />"></script>
	<script src="<c:url value="/resources/js/main.js" />"></script>

	<!-- 테이블환경 -->
	<script>

	</script>




</body>
</html>
