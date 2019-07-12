<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=zjlzvjn41f"></script>
</head>
<body>
<div id="map" style="width:100%;height:800px;"></div>

<script>
			
var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(33.381355, 126.546380),
    zoom: 6
});
 
// 뭔지 모름 일단 keep
/* var bounds = map.getBounds(),
    southWest = bounds.getSW(),
    northEast = bounds.getNE(),
    lngSpan = northEast.lng() - southWest.lng(),
    latSpan = northEast.lat() - southWest.lat(); */

var markers = [],
    infoWindows = [];
    
var name = ["꼬뜨도르가족호텔","올레리조트","제주에어포트호텔","오션패밀리호텔","홍익제주호텔","㈜호텔샹그릴라","아인피플 호텔","에코패밀리호텔","더제주리조트","호텔펄리플러스",
			"그랑빌 가족호텔","와이리조트 제주","초이 호스텔 제주","호텔 섬오름","봄그리고가을 가족호텔","토스카나호텔","더포그레이스호텔앤리조트","브리즈베이호텔","호텔 케니스토리","코델리아S호텔"]
			
var content = ["호텔 소개1","호텔 소개2","호텔 소개3","호텔 소개4","호텔 소개5","호텔 소개6","호텔 소개7","호텔 소개8","호텔 소개9","호텔 소개10",
				"호텔 소개11","호텔 소개12","호텔 소개13","호텔 소개14","호텔 소개15","호텔 소개16","호텔 소개17","호텔 소개18","호텔 소개19","호텔 소개20"]

var lat = [33.552323, 33.475945, 33.491118, 33.495457, 33.391990, 33.464498, 33.436099, 33.436099, 33.378401, 33.507597, 
	33.256516, 33.242853, 33.247076, 33.233096, 33.465915, 33.265659, 33.473810, 33.466622, 33.250573, 33.455157];
		   
var lng = [126.716845, 126.355838, 126.488753, 126.451046, 126.253490, 126.454769, 126.442091, 126.291512, 126.251330, 126.475555,
	126.415156, 126.327677, 126.558584, 126.510577, 126.936050, 126.484228, 126.9107744, 126.930762, 126.559606, 126.910427]

for(var i = 0; i < 21; i++) {
    var position = new naver.maps.LatLng(lat[i], lng[i]);

    var marker = new naver.maps.Marker({
        map: map,
        position: position,
        title: name[i],
        icon: {
        	url: './img/pin_default.png',
            anchor: new naver.maps.Point(12, 37),
            origin: new naver.maps.Point(0, 0)
        },
        zIndex: 100
    });
    var infoWindow = new naver.maps.InfoWindow({
        content: '<table><tr><td rowspan="2"><img src="../images/jeju.jpg" width="150" height="100"></td><td>'+ name.split(",")[i]+'</td></tr><tr><td>'+content[i]+'</table>'
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