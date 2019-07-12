<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>������ ���� ǥ���ϱ�</title>
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
        "ȣ��1": [33.475945, 126.355838],
        "ȣ��2": [33.491118, 126.488753],
        "ȣ��3": [33.464498, 126.454769],
        "ȣ��4": [33.436099, 126.291512],
        "ȣ��5": [33.436099, 126.442091],
        "ȣ��6": [33.552323, 126.716845],
        "ȣ��7": [33.495457, 126.451046],
        "ȣ��8": [33.391990, 126.253490],
        "ȣ��9": [33.378401, 126.251330],
        "ȣ��10": [33.507597, 126.475555]
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
		"ȣ��1": [0, 0],
		"ȣ��2": [MARKER_SPRITE_X_OFFSET, 0],
		"ȣ��3": [MARKER_SPRITE_X_OFFSET*2, 0],
		"ȣ��4": [MARKER_SPRITE_X_OFFSET*3, 0],
		"ȣ��5": [MARKER_SPRITE_X_OFFSET*4, 0],
		"ȣ��6": [MARKER_SPRITE_X_OFFSET*5, 0],
		"ȣ��7": [MARKER_SPRITE_X_OFFSET*6, 0],
		"ȣ��8": [MARKER_SPRITE_X_OFFSET*7, 0],
		"ȣ��9": [MARKER_SPRITE_X_OFFSET*8, 0],
		"ȣ��10": [MARKER_SPRITE_X_OFFSET*9, 0],
		"ȣ��11": [MARKER_SPRITE_X_OFFSET*10, 0],
		"ȣ��12": [MARKER_SPRITE_X_OFFSET*11, 0],
		"ȣ��13": [MARKER_SPRITE_X_OFFSET*12, 0],
		"ȣ��14": [MARKER_SPRITE_X_OFFSET*13, 0],
		"ȣ��15": [MARKER_SPRITE_X_OFFSET*14, 0],
		"ȣ��16": [MARKER_SPRITE_X_OFFSET*15, 0],
		"ȣ��17": [MARKER_SPRITE_X_OFFSET*16, 0],
		"ȣ��18": [MARKER_SPRITE_X_OFFSET*17, 0],
		"ȣ��19": [MARKER_SPRITE_X_OFFSET*18, 0],
		"ȣ��20": [MARKER_SPRITE_X_OFFSET*19, 0]
 };
var name = ["���ߵ�������ȣ��","�÷�����Ʈ","���ֿ�����Ʈȣ��","�����йи�ȣ��","ȫ������ȣ��","��ȣ�ڼ��׸���","�������� ȣ��","�����йи�ȣ��","�����ָ���Ʈ","ȣ���޸��÷���",
			"�׶��� ����ȣ��","���̸���Ʈ ����","���� ȣ���� ����","ȣ�� ������","���׸����� ����ȣ��","�佺ī��ȣ��","�����׷��̽�ȣ�ھظ���Ʈ","�긮���ȣ��","ȣ�� �ɴϽ��丮","�ڵ�����Sȣ��"]
			
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

// �ش� ��Ŀ�� �ε����� seq��� Ŭ���� ������ �����ϴ� �̺�Ʈ �ڵ鷯�� ��ȯ�մϴ�.
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