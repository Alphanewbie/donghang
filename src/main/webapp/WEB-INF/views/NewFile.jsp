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
			var address = prompt("�ּҸ��Է��ϼ���");
			var lat;
			var lng;
			if (address) {
				$.getJSON("https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyD8k2DWC_7yFHCrH6LDR3RfITsmWMEqC8c&address="+encodeURIComponent(address), function(data) {
					lat = data.results[0].geometry.location.lat;
					lng = data.results[0].geometry.location.lng;
					alert("��ǥ�� : " + lat + ":" + lng);		
					latlng = encodeURIComponent(lat+","+lng);											
				});		
				
			}
		}
	    function coordToAddr() {
	    	$.getJSON("https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyD8k2DWC_7yFHCrH6LDR3RfITsmWMEqC8c&latlng="+latlng, function(data) {
				alert("�ٽ� �ּҷ� : " + data.results[0].formatted_address);				
										
			});
	    }
	</script>
</body>
</html>