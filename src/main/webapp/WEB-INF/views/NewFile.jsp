<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
	var latlng;
		function addToCoord() {
			var address = prompt("주소를입력하세요");
			var lat;
			var lng;
			if (address) {
				$.getJSON("https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyD8k2DWC_7yFHCrH6LDR3RfITsmWMEqC8c&address="+encodeURIComponent(address), function(data) {
					lat = data.results[0].geometry.location.lat;
					lng = data.results[0].geometry.location.lng;
					alert("좌표로 : " + lat + ":" + lng);		
					latlng = encodeURIComponent(lat+","+lng);											
				});		
				
			}
		}
	    function coordToAddr() {
	    	$.getJSON("https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyD8k2DWC_7yFHCrH6LDR3RfITsmWMEqC8c&latlng="+latlng, function(data) {
				alert("다시 주소로 : " + data.results[0].formatted_address);				
										
			});
	    }
	</script>
</body>
</html>