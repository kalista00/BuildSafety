<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<title>설계 작업 위치 설정 페이지</title>
<!-- CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!--  로딩 css -->
<link href="/build/resources/css/load.css" rel="stylesheet">
<!-- 제이쿼리 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.b-example-vr {
	flex-shrink: 0;
	height: 100vh;
	width: 1.5rem;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}
</style>


</head>
<body>
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  
  <symbol id="home" viewBox="0 0 16 16">
    <path
			d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z" />
  </symbol>
  
  <symbol id="worker" viewBox="0 0 16 16">
   <svg xmlns="http://www.w3.org/2000/svg" height="1em"
			viewBox="0 0 576 512">
	<path
				d="M208 64a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zM9.8 214.8c5.1-12.2 19.1-18 31.4-12.9L60.7 210l22.9-38.1C99.9 144.6 129.3 128 161 128c51.4 0 97 32.9 113.3 81.7l34.6 103.7 79.3 33.1 34.2-45.6c6.4-8.5 16.6-13.3 27.2-12.8s20.3 6.4 25.8 15.5l96 160c5.9 9.9 6.1 22.2 .4 32.2s-16.3 16.2-27.8 16.2H288c-11.1 0-21.4-5.7-27.2-15.2s-6.4-21.2-1.4-31.1l16-32c5.4-10.8 16.5-17.7 28.6-17.7h32l22.5-30L22.8 246.2c-12.2-5.1-18-19.1-12.9-31.4zm82.8 91.8l112 48c11.8 5 19.4 16.6 19.4 29.4v96c0 17.7-14.3 32-32 32s-32-14.3-32-32V405.1l-60.6-26-37 111c-5.6 16.8-23.7 25.8-40.5 20.2S-3.9 486.6 1.6 469.9l48-144 11-33 32 13.7z" />
	</svg>
</symbol>
  <symbol id="contruction" viewBox="0 0 16 16">
  <svg xmlns="http://www.w3.org/2000/svg" height="1em"
			viewBox="0 0 512 512">
	<path
				d="M352 96c0 14.3-3.1 27.9-8.8 40.2L396 227.4c-23.7 25.3-54.2 44.1-88.5 53.6L256 192h0 0l-68 117.5c21.5 6.8 44.3 10.5 68.1 10.5c70.7 0 133.8-32.7 174.9-84c11.1-13.8 31.2-16 45-5s16 31.2 5 45C428.1 341.8 347 384 256 384c-35.4 0-69.4-6.4-100.7-18.1L98.7 463.7C94 471.8 87 478.4 78.6 482.6L23.2 510.3c-5 2.5-10.9 2.2-15.6-.7S0 501.5 0 496V440.6c0-8.4 2.2-16.7 6.5-24.1l60-103.7C53.7 301.6 41.8 289.3 31.2 276c-11.1-13.8-8.8-33.9 5-45s33.9-8.8 45 5c5.7 7.1 11.8 13.8 18.2 20.1l69.4-119.9c-5.6-12.2-8.8-25.8-8.8-40.2c0-53 43-96 96-96s96 43 96 96zm21 297.9c32.6-12.8 62.5-30.8 88.9-52.9l43.7 75.5c4.2 7.3 6.5 15.6 6.5 24.1V496c0 5.5-2.9 10.7-7.6 13.6s-10.6 3.2-15.6 .7l-55.4-27.7c-8.4-4.2-15.4-10.8-20.1-18.9L373 393.9zM256 128a32 32 0 1 0 0-64 32 32 0 1 0 0 64z" />
  </svg>
  </symbol>
  <symbol id="safecheck" viewBox="0 0 16 16">
  <svg xmlns="http://www.w3.org/2000/svg" height="1em"
			viewBox="0 0 640 512">
<path
				d="M320.7 352c8.1-89.7 83.5-160 175.3-160c8.9 0 17.6 .7 26.1 1.9L309.5 7c-6-5-14-7-21-7s-15 1-22 8L10 231.5c-7 7-10 15-10 24c0 18 14 32.1 32 32.1h32v69.7c-.1 .9-.1 1.8-.1 2.8V472c0 22.1 17.9 40 40 40h16c1.2 0 2.4-.1 3.6-.2c1.5 .1 3 .2 4.5 .2H160h24c22.1 0 40-17.9 40-40V448 384c0-17.7 14.3-32 32-32h64l.7 0zM640 368a144 144 0 1 0 -288 0 144 144 0 1 0 288 0zm-76.7-43.3c6.2 6.2 6.2 16.4 0 22.6l-72 72c-6.2 6.2-16.4 6.2-22.6 0l-40-40c-6.2-6.2-6.2-16.4 0-22.6s16.4-6.2 22.6 0L480 385.4l60.7-60.7c6.2-6.2 16.4-6.2 22.6 0z" />
</svg>
  </symbol>
  <symbol id="employment" viewBox="0 0 16 16">
  <svg xmlns="http://www.w3.org/2000/svg" height="1em"
			viewBox="0 0 384 512">
	<path
				d="M192 0c-41.8 0-77.4 26.7-90.5 64H64C28.7 64 0 92.7 0 128V448c0 35.3 28.7 64 64 64H320c35.3 0 64-28.7 64-64V128c0-35.3-28.7-64-64-64H282.5C269.4 26.7 233.8 0 192 0zm0 64a32 32 0 1 1 0 64 32 32 0 1 1 0-64zM128 256a64 64 0 1 1 128 0 64 64 0 1 1 -128 0zM80 432c0-44.2 35.8-80 80-80h64c44.2 0 80 35.8 80 80c0 8.8-7.2 16-16 16H96c-8.8 0-16-7.2-16-16z" /></svg></symbol>
  <symbol id="people-circle" viewBox="0 0 16 16">
    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
    <path fill-rule="evenodd"
			d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
  </symbol>
  <symbol id="plan" viewBox="0 0 16 16">
    <svg xmlns="http://www.w3.org/2000/svg" height="1em"
			viewBox="0 0 512 512">
			<!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
			<path
				d="M471.6 21.7c-21.9-21.9-57.3-21.9-79.2 0L362.3 51.7l97.9 97.9 30.1-30.1c21.9-21.9 21.9-57.3 0-79.2L471.6 21.7zm-299.2 220c-6.1 6.1-10.8 13.6-13.5 21.9l-29.6 88.8c-2.9 8.6-.6 18.1 5.8 24.6s15.9 8.7 24.6 5.8l88.8-29.6c8.2-2.7 15.7-7.4 21.9-13.5L437.7 172.3 339.7 74.3 172.4 241.7zM96 64C43 64 0 107 0 160V416c0 53 43 96 96 96H352c53 0 96-43 96-96V320c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7-14.3 32-32 32H96c-17.7 0-32-14.3-32-32V160c0-17.7 14.3-32 32-32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H96z" /></svg>
  </symbol>
</svg>



	<%-- "nav-link active" 각각의 페이지 --%>
	<main class="d-flex flex-nowrap">
		<%-- lo 스크립트   --%>
		<div id="loadforall"
			style="position: absolute; display: none; height: 48vw; top: 8px;">
			<div class="loading-container"
				style="width: 700px; height: 270px; top: 136px; left: 647px;"
				id="loading-all">
				<div class="loading"></div>
				<div id="loading-text">loading</div>
			</div>
		</div>
		<script>
// 현재 페이지에서 다른 페이지로 넘어갈 때 표시해주는 기능
window.onbeforeunload = function () { 
// 	$('#loading-all').show();
	$('#loadforall').show();
	$('body').css('overflow','hidden');
}  
;
</script>
		<div class="d-flex flex-column flex-shrink-0 p-3 bg-light"
			style="width: 280px;">
			<ul class="nav nav-pills flex-column mb-auto">
				<li class="nav-item"><a href="/build/main"
					class="nav-link link-dark" aria-current="page"> <svg
							class="bi pe-none me-2" width="16" height="16">
							<use xlink:href="#home" /></svg> 메인페이지
				</a></li>
				<hr>
				<li><a href="/build/conmap" class="nav-link link-dark"> <svg
							class="bi pe-none me-2" width="16" height="16">
							<use xlink:href="#worker" /></svg> 시공
				</a></li>
				<li><a href="/build/demap" class="nav-link active"> <svg
							class="bi pe-none me-2" width="16" height="16">
							<use xlink:href="#contruction" /></svg> 설계
				</a></li>
				<li><a href="/build/career" class="nav-link link-dark"> <svg
							class="bi pe-none me-2" width="16" height="16">
							<use xlink:href="#employment" /></svg> 채용정보
				</a></li>
				<li><a href="/build/myplan?plantype=design"
					class="nav-link link-dark"> <svg class="bi pe-none me-2"
							width="16" height="16">
							<use xlink:href="#plan" /></svg> 나의 계획 현황
				</a></li>
			</ul>
			<hr>
			<div class="dropdown">
				<a href="#" onclick="unlinkApp()" id="outforlog"
					class="d-flex align-items-center link-dark text-decoration-none "
					data-bs-toggle="dropdown" aria-expanded="false"> <svg
						class="bi pe-none me-2" width="16" height="16">
						<use xlink:href="#people-circle" /></svg> <strong>log out</strong>
				</a>
			</div>
		</div>

		<div class="b-example-divider b-example-vr"></div>

		<div class="container text-center">
			<!-- 작업 공간 -->
			<div>
				<h1 class="pt-5"
					style="color: #102D40; font-size: 40px; FONT-WEIGHT: 1000;">설계하실
					위치를 선택해주세요.</h1>

			</div>
			<div class="row pt-3">
				<div class="border border-secondary border-3" id="map"
					style="width: 800px; height: 600px"></div>
				<div class="col" id="selbtn">
					<div class="border border-secondary border-2 pt-3">
						<h5>
							<b>시공하실 위치를 검색으로 찾을 수 있습니다.</b>
						</h5>
						<input type="text" id="addfor" style="width: 85%;">
						<button type="button" class="btn btn-primary" id="searchact">검색</button>
						<br />
						<br />
					</div>
					<h5 class="pt-3" style="FONT-WEIGHT: 900; color: #43D9D9;">원하는
						구역을 선택하여, 이용하시기 바랍니다.</h5>
					<button class="btn btn-secondary" onclick="jeju()">제주도</button>
					<button class="btn btn-secondary" onclick="seoul()">서울</button>
					<button class="btn btn-secondary" onclick="Incheon()">인천</button>
					<br />
					<br />
					<button class="btn btn-secondary" onclick="gyeonggi()">경기</button>
					<button class="btn btn-secondary" onclick="Gangwon()">강원</button>
					<button class="btn btn-secondary" onclick="Chungnam()">충남</button>
					<br />
					<br />
					<button class="btn btn-secondary" onclick="Chungbuk()">충북</button>
					<button class="btn btn-secondary" onclick="Sejong()">세종</button>
					<button class="btn btn-secondary" onclick="Daejeon()">대전</button>
					<br />
					<br />
					<button class="btn btn-secondary" onclick="Gyeongbuk()">경북</button>
					<button class="btn btn-secondary" onclick="daegu()">대구</button>
					<button class="btn btn-secondary" onclick="Ulsan()">울산</button>
					<br />
					<br />
					<button class="btn btn-secondary" onclick="Jeonbuk()">전북</button>
					<button class="btn btn-secondary" onclick="gwangju()">광주</button>
					<button class="btn btn-secondary" onclick="Jeonnam()">전남</button>
					<br />
					<br />
					<button class="btn btn-secondary" onclick="Gyeongnam()">경남</button>
					<button class="btn btn-secondary" onclick="busan()">부산</button>
				</div>
			</div>
			<!-- 작업 공간 끝 -->


			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
			<script
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey='api key'"></script>


			<script>
 	  var map = null,
        customOverlay = new kakao.maps.CustomOverlay({}),
        kkoMap = {
          initKko: function (o) {
            var e = o.mapId,
              t = document.getElementById(e),
              a = {
                center: new kakao.maps.LatLng(35.9, 128),
                level: 13,
              };
            (map = new kakao.maps.Map(t, a)),
              $.getJSON("/build/resources/json/test2.json", function (o) {
                let e = $(o.features);
                e.each(function () {
                  kkoMap.getPolycode($(this)[0]);
                });
              });
          },
          getPolycode: function (o) {
            var e = [],
              t = o.geometry;
            if ("Polygon" == t.type) {
              var a = t.coordinates[0],
                n = { name: o.properties.adm_nm, path: [] };
              for (var s in a)
                e.push({ x: p[s][1], y: p[s][0] }),
                  n.path.push(new kakao.maps.LatLng(a[s][1], a[s][0]));
              kkoMap.setPolygon(n, e);
            } else if ("MultiPolygon" == t.type)
              for (var s in t.coordinates) {
                var p = t.coordinates[s],
                  n = { name: o.properties.adm_nm, path: [] };
                for (var r in p[0])
                  e.push({ x: p[0][r][1], y: p[0][r][0] }),
                    n.path.push(new kakao.maps.LatLng(p[0][r][1], p[0][r][0]));
                kkoMap.setPolygon(n, e);
              }
          },
          setPolygon: function (o, e) {
            var t = new kakao.maps.Polygon({
              name: o.name,
              path: o.path,
              strokeWeight: 2,
              strokeColor: "#004c80",
              strokeOpacity: 0.2,
              fillColor: "#fff",
              fillOpacity: 0.2,
            });
            kakao.maps.event.addListener(t, "mouseover", function (a) {
              t.setOptions({ fillColor: "#09f" }),
                customOverlay.setPosition(kkoMap.centroid(e)),
                customOverlay.setContent(
                  "<div class='overlaybox'>" + o.name + "</div>"
                ),
                customOverlay.setMap(map);
            }),
              kakao.maps.event.addListener(t, "mouseout", function () {
                t.setOptions({ fillColor: "#fff" }), customOverlay.setMap(null);
              }),
              
              kakao.maps.event.addListener(t, "click", function (mouseEvent) {
              var latlng = mouseEvent.latLng;
              var xnum = latlng.getLat();
              var ynum = latlng.getLng();
              var location = o.name;

              var link = "/build/design?location="+location;
           		
           	  window.open(link);
              }),
              
              t.setMap(map);
          },
          centroid: function (o) {
            var e, t, a, n, s, p, r, i, l;
            for (e = 0, r = i = l = 0, t = (a = o.length) - 1; e < a; t = e++)
              (n = o[e]),
                (s = o[t]),
                (p = n.y * s.x - s.y * n.x),
                (i += (n.x + s.x) * p),
                (l += (n.y + s.y) * p),
                (r += 3 * p);
            return new kakao.maps.LatLng(i / r, l / r);
          },
        };
      $(function () {
        kkoMap.initKko({ mapId: "map" });
      });
      
      
      
      function jeju() { //제주도
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(33.350580, 126.574942);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(10);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    		
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	    
    	} 
      function seoul() { //서울
  	    // 이동할 위도 경도 위치를 생성합니다 
  	    var moveLatLon = new kakao.maps.LatLng(37.563226004661, 126.978652258309);
  	    var level = map.getLevel();
  		 // 지도 레벨 변경
  	    map.setLevel(9);
  	    
  	    // 지도 중심을 부드럽게 이동시킵니다
  	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
  	    map.panTo(moveLatLon);
  	
  	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
  	} 
      function Incheon() { // 인천
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(37.482567, 126.601952);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(9);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function gyeonggi() { // 경기
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(37.533611, 127.216776);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(11);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function Gangwon() { // 강원
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(37.746409, 128.302996);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(11);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function Chungnam() { // 충남
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(36.543429, 126.802729);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(9);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function Chungbuk() { // 충북
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(36.779874, 127.943934);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(11);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function Sejong() { // 세종
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(36.572494, 127.254371);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(9);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function Daejeon() { // 대전
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(36.350397, 127.391969);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(9);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function Gyeongbuk() { // 경북
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(36.347653, 128.730570);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(11);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function daegu() { // 대구
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(35.830176, 128.561803);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(9);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function Ulsan() { // 울산
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(35.551709, 129.246327);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(9);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function Jeonbuk() { // 전북
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(35.720805, 127.119136);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(10);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function gwangju() { // 광주
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(35.161280, 126.827902);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(8);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function Jeonnam() { // 전남
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(34.938486, 126.954269);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(10);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function Gyeongnam() { // 경남
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(35.373177, 128.260075);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(11);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      function busan() { // 부산
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(35.210136, 129.063923);
    	    var level = map.getLevel();
    		 // 지도 레벨 변경
    	    map.setLevel(9);
    	    
    	    // 지도 중심을 부드럽게 이동시킵니다
    	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    	    map.panTo(moveLatLon);
    	
    	    alert("마우스 스크롤을 사용해서 자세한 위치를 선택할 수 있습니다.");
    	}
      $('#searchact').click(function(){ 
    	    var level = map.getLevel();
    		var geocoder = new kakao.maps.services.Geocoder();
    	    
    		geocoder.addressSearch($('#addfor').val(), function(result, status) {	
    		    
    		     if (status === kakao.maps.services.Status.OK) {
    		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
    		        map.setLevel(6);
    		        map.setCenter(coords);
    		    } 
    		});  
    	}); 
    </script>

		</div>

	</main>

	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

	<script type="text/javascript">
// 로그아웃 : unlink로 연결 해제 및 session을 같이 지워준다.
Kakao.init('${key}');
	console.log(Kakao.isInitialized());
  function unlinkApp() {
    Kakao.API.request({
      url: '/v1/user/unlink',
      success: function(res) {
    	console.log(location.href);
    	location.href = '/build/logout';
      },
      fail: function(err) {
        alert('fail: ' + JSON.stringify(err))
      },
    })
  }
</script>



	<!-- 자바스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>