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
/* var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(33.381355, 126.546380),
    zoom: 6
}); */
/* var MARKER_SPRITE_POSITION = {
        "호텔1": [33.475945, 126.355838],
        "호텔2": [33.491118, 126.488753],
        "호텔3": [33.464498, 126.454769],
        "호텔4": [33.436099, 126.291512],
        "호텔5": [33.436099, 126.442091],
        "호텔6": [33.552323, 126.716845],
        "호텔7": [33.495457, 126.451046],
        "호텔8": [33.391990, 126.253490],
        "호텔9": [33.378401, 126.251330],
        "호텔10": [33.507597, 126.475555]
}; */
/*var lat = [33.475945, 33.491118, 33.464498, 33.436099, 33.436099, 33.552323, 33.495457, 33.391990, 33.378401, 33.507597, 
		   33.233096, 33.250573, 33.455157, 33.473810, 33.265659, 33.256516, 33.242853, 33.466622, 33.247076, 33.465915];
		   
var lng = [126.355838, 126.488753, 126.454769, 126.291512, 126.442091, 126.716845, 126.451046, 126.253490, 126.251330, 126.475555,
		   126.510577, 126.559606, 126.910427, 126.9107744, 126.484228, 126.415156, 126.327677, 126.930762, 126.558584, 126.936050]
for(var i = 0; i < 21; i++) {	
	var markers = new naver.maps.Marker({
	   	position: new naver.maps.LatLng(lat[i], lng[i]),
	    map: map
	});
}*/
var HOME_PATH = window.HOME_PATH || '.';
var MARKER_SPRITE_X_OFFSET = 29,
    MARKER_SPRITE_Y_OFFSET = 50,
  	MARKER_SPRITE_POSITION = {
		"호텔1": [0, 0],
		"호텔2": [MARKER_SPRITE_X_OFFSET, 0],
		"호텔3": [MARKER_SPRITE_X_OFFSET*2, 0],
		"호텔4": [MARKER_SPRITE_X_OFFSET*3, 0],
		"호텔5": [MARKER_SPRITE_X_OFFSET*4, 0],
		"호텔6": [MARKER_SPRITE_X_OFFSET*5, 0],
		"호텔7": [MARKER_SPRITE_X_OFFSET*6, 0],
		"호텔8": [MARKER_SPRITE_X_OFFSET*7, 0],
		"호텔9": [MARKER_SPRITE_X_OFFSET*8, 0],
		"호텔10": [MARKER_SPRITE_X_OFFSET*9, 0],
		"호텔11": [MARKER_SPRITE_X_OFFSET*10, 0],
		"호텔12": [MARKER_SPRITE_X_OFFSET*11, 0],
		"호텔13": [MARKER_SPRITE_X_OFFSET*12, 0],
		"호텔14": [MARKER_SPRITE_X_OFFSET*13, 0],
		"호텔15": [MARKER_SPRITE_X_OFFSET*14, 0],
		"호텔16": [MARKER_SPRITE_X_OFFSET*15, 0],
		"호텔17": [MARKER_SPRITE_X_OFFSET*16, 0],
		"호텔18": [MARKER_SPRITE_X_OFFSET*17, 0],
		"호텔19": [MARKER_SPRITE_X_OFFSET*18, 0],
		"호텔20": [MARKER_SPRITE_X_OFFSET*19, 0]
 };
var name = ["꼬뜨도르가족호텔","올레리조트","제주에어포트호텔","오션패밀리호텔","홍익제주호텔","㈜호텔샹그릴라","아인피플 호텔","에코패밀리호텔","더제주리조트","호텔펄리플러스",
			"그랑빌 가족호텔","와이리조트 제주","초이 호스텔 제주","호텔 섬오름","봄그리고가을 가족호텔","토스카나호텔","더포그레이스호텔앤리조트","브리즈베이호텔","호텔 케니스토리","코델리아S호텔"]
			
var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(33.381355, 126.546380),
    zoom: 6
});

var bounds = map.getBounds(),
    southWest = bounds.getSW(),
    northEast = bounds.getNE(),
    lngSpan = northEast.lng() - southWest.lng(),
    latSpan = northEast.lat() - southWest.lat();

var markers = [],
    infoWindows = [];

var lat = [33.552323, 33.475945, 33.491118, 33.495457, 33.391990, 33.464498, 33.436099, 33.436099, 33.378401, 33.507597, 
	33.256516, 33.242853, 33.247076, 33.233096, 33.465915, 33.265659, 33.473810, 33.466622, 33.250573, 33.455157];
		   
var lng = [126.716845, 126.355838, 126.488753, 126.451046, 126.253490, 126.454769, 126.442091, 126.291512, 126.251330, 126.475555,
	126.415156, 126.327677, 126.558584, 126.510577, 126.936050, 126.484228, 126.9107744, 126.930762, 126.559606, 126.910427]
		   
for (var key in MARKER_SPRITE_POSITION) {

	for(var i = 0; i < 21; i++) {
	    var position = new naver.maps.LatLng(lat[i], lng[i]);
	
	    var marker = new naver.maps.Marker({
	        map: map,
	        position: position,
	        title: name[i],
	        icon: {
	            url: HOME_PATH +'/img/example/sp_pins_spot_v3.png',
	            size: new naver.maps.Size(24, 37),
	            anchor: new naver.maps.Point(12, 37),
	            origin: new naver.maps.Point(MARKER_SPRITE_POSITION[key][0], MARKER_SPRITE_POSITION[key][1])
	        },
	        zIndex: 100
	    });
	    var infoWindow = new naver.maps.InfoWindow({
	        content: '<div style="width:150px;text-align:center;padding:10px;">"'+ name.split(",")[i] +'"</div>'
	    });
	
	    markers.push(marker);
	    infoWindows.push(infoWindow);
	}
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