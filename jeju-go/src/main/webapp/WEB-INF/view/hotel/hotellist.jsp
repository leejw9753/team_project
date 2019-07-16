<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
	<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>	
<head>
<meta charset="EUC-KR">
<title>호텔 리스트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/responsive-slider.css" rel="stylesheet">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=zjlzvjn41f"></script>
<style type="text/css">
div.ex3 {
  background-color: white;
  width: 100%;
  height: 500px;
  overflow: auto;
}
div.left {
   width: 50%;
   float: left;
   box-sizing: border-box;
}
div.right {
   width: 50%;
   float: right;
   box-sizing: border-box;
}
</style>
<script type="text/javascript">
   var lat = [];
   var lng = [];
   var hname = [];
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="recent">
				<button class="btn-primarys">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Hotel List</h3>
				</button>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="left">
			<div class="col-md-4">
				<form class="form-search"  style="width: 500px;">
					<input class="form-control" type="text" placeholder="Search..">
				</form>
				<div class="panel panel-default" style="width: 500px;">
					<div class="panel-heading">
						<strong>Popular Posts</strong>
					</div>
					<div class="ex3">
						<c:forEach items="${list}" var="hotel">
							<hr style="width: 100%; border: solid 1px black;">
							<div class="panel-body">
								<div class="media">
									<a class="media-left"><img src="${path}/${hotel.photourl}"
										style="width: 100px; height: 100px;" alt=""></a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="hoteldetail.jeju?no=${hotel.no}">${hotel.hname}</a>
										</h4>
										<p>${hotel.content}</p>
										<div class="ficon">
											<p>
												<a href="hoteldetail.jeju?no=${hotel.no}" alt="">보러가기</a> <i
													class="fa fa-long-arrow-right"></i>
											</p>
										<script>input(${hotel.lat}, ${hotel.lng})
										function input(location1, location2) {
											lat.push(location1)
											lng.push(location2)
										}</script>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="right">
			<div id="map" style="width: 100%; height: 600px;"></div>
		</div>
	</div>
	<script>
var HOME_PATH = window.HOME_PATH || '.';

var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(33.381355, 126.546380),
    zoom: 6
});

var markers = [],
   infoWindows = [];
   
for(var i = 0; i < lat.length; i++) {
    var position = new naver.maps.LatLng(lat[i], lng[i]);

    var marker = new naver.maps.Marker({
        map: map,
        position: position,
        title: name[i],
        icon: {
           url: HOME_PATH +'/img/pin_default.png',
            anchor: new naver.maps.Point(12, 37),
            origin: new naver.maps.Point(0, 0)
        },
        zIndex: 100
    });
    var contents = '호텔소개'
                    
    var infoWindow = new naver.maps.InfoWindow({
        content:contents
    });
    
    markers.push(marker);
    infoWindows.push(infoWindow);
};

naver.maps.Event.addListener(map, 'idle', function() {
    updateMarkers(map, markers);
});

function updateMarkers(map, markers) {

    var mapBounds = map.getBounds();
    var marker, position;

    for (var i = 0; i < markers.length; i++) {

        marker = markers[i]
        position = marker.getPosition();

        if (mapBounds.hasLatLng(position)) {
            showMarker(map, marker);
        } else {
            hideMarker(map, marker);
        }
    }
}

function showMarker(map, marker) {

    if (marker.setMap()) return;
    marker.setMap(map);
}

function hideMarker(map, marker) {

    if (!marker.setMap()) return;
    marker.setMap(null);
}

// 해당 마커의 인덱스를 seq라는 클로저 변수로 저장하는 이벤트 핸들러를 반환합니다.
function getClickHandler(seq) {
    return function(e) {
        var marker = markers[seq],
            infoWindow = infoWindows[seq];

        if (infoWindow.getMap()) {
            infoWindow.close();
        } else {
            infoWindow.open(map, marker);
        }
    }
}

for (var i=0, ii=markers.length; i<ii; i++) {
    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
}
 </script>
</body>
</html>