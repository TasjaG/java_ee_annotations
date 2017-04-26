<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Subway Map</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/subway-map.js"></script>
<style type="text/css">
body {
	font-family: Verdana;
	font-size: 12pt;
}
/* The main DIV for the map */
.subway-map {
	margin: 0;
	width: 500px;
	height: 410px;
	background-color: white;
}
/* Text labels */
.text {
	text-decoration: none;
	color: black;
}

#legend {
	/*float: left;*/
	float: right;
	width: 250px;
	height: 400px;
}

#legend div {
	height: 25px;
}

#legend span {
	margin: 5px 5px 5px 0;
}

.subway-map span {
	margin: 5px 5px 5px 0;
}

</style>
</head>
<body>

	<div class="subway-map" data-columns="28" data-rows="20"
		data-cellSize="${cellsize}" data-legendId="legend" data-textClass="text"
		data-gridNumbers="true" data-grid="false" data-lineWidth="8">

		<ul data-color="#f36d6d" data-label="Line 1">
            <li data-coords="2,10"><a href="subwayMap.htm?id={akademmistechko}">Akademmistechko</a></li>
            <li data-coords="3.5,10" data-labelpos="N"><a href="subwayMap.htm?id={zhytomyrska"}>Zhytomyrska</a></li>
            <li data-coords="5,10"><a href="subwayMap.htm?id={sviatoshyn}">Sviatoshyn</a></li>
            <li data-coords="6.5,10" data-labelpos="N"><a href="subwayMap.htm?id={nyvky}">Nyvky</a></li>
            <li data-coords="8,10"><a href="subwayMap.htm?id={beresteiska}" >Beresteiska</a></li>
            <li data-coords="9.5,10" data-labelpos="N"><a href="subwayMap.htm?id={shuliavska}">Shuliavska</a></li>
            <li data-coords="11,10"><a href="subwayMap.htm?id={politekhnichnyi_instytut}" >Politekhnichnyi Instytut</a></li>
            
            <li data-coords="13.5,10"><a href="subwayMap.htm?id={universytet}" >Universytet</a></li>
            
            <li data-coords="14.55,9" data-dir="E" data-marker="@interchange"><a href="subwayMap.htm?id={teatralna}">Teatralna</a></li>
            
            <li data-coords="15.5,8"></li>
            <li data-coords="15.85,8" data-dir="N" data-marker="@interchange" data-labelpos="N" data-markerinfo="h5"><a href="subwayMap.htm?id={khreshchatyk}">Khreshchatyk</a></li>
            
            <li data-coords="18.5,8" data-labelpos="N"><a href="subwayMap.htm?id={arsenalna}"  >Arsenalna</a></li>
            
            <li data-coords="20,8"><a href="subwayMap.htm?id={dnipro}">Dnipro</a></li>
            
            <!-- Diagonal after Dnipro -->
            <li data-coords="21,7.5" data-marker="@station" data-labelpos="E"><a href="subwayMap.htm?id={hidropark}" >Hidropark</a></li>
            <li data-coords="22,6.5" data-marker="@station" data-labelpos="E"><a href="subwayMap.htm?id={livoberezhna}" >Livoberezhna</a></li>
            <li data-coords="22.9,5.5" data-marker="@station" data-labelpos="W"><a href="subwayMap.htm?id={chernihivska}"  >Chernihivska</a></li>
            <li data-coords="23.8,4.4" data-marker="@station" data-labelpos="E"><a href="subwayMap.htm?id={darnytsia}" >Darnytsia</a></li>
            <li data-coords="25,3.5" data-labelpos="W"><a href="subwayMap.htm?id={lisova}"  >Lisova</a></li>
        </ul>

        <ul data-color="#4ca6ff" data-label="Line 2">
            <li data-coords="17,1" data-labelpos="W"><a href="subwayMap.htm?id={heroiv_dnipra}" >Heroiv Dnipra</a></li>
            <li data-coords="17,2" data-labelpos="E"><a href="subwayMap.htm?id={minska}"  >Minska</a></li>
            <li data-coords="17,3" data-labelpos="W"><a href="subwayMap.htm?id={obolon}"  >Obolon</a></li>
            <li data-coords="17,4" data-labelpos="E"><a href="subwayMap.htm?id={petrivka}"  >Petrivka</a></li>
            
            <li data-coords="17,5" data-labelpos="W"><a href="subwayMap.htm?id={tarasa_shevchenka}" >Tarasa Shevchenka</a></li>
            <li data-coords="17,6" data-labelpos="E"><a href="subwayMap.htm?id={kontraktova_ploshcha}" >Kontraktova Ploshcha</a></li>
            <li data-coords="17,7" data-labelpos="W"><a href="subwayMap.htm?id={poshtova_ploshcha}" >Poshtova Ploshcha</a></li>
            
            <li data-coords="17,8" data-marker="@interchange"><a href="subwayMap.htm?id={maidan_nezalezhnosti}" >Maidan Nezalezhnosti</a></li>
            
            <li data-coords="17,11" data-marker="@interchange" data-markerinfo="h5"><a href="subwayMap.htm?id={ploshcha_lva_tolstoho}"  >Ploshcha Lva Tolstoho</a></li>
            
            <li data-coords="17,13" data-labelpos="W"><a href="subwayMap.htm?id={olimpiiska}"  >Olimpiiska</a></li>
            <li data-coords="17,14.5" data-labelpos="W"><a href="subwayMap.htm?id={palats_ukrayina}"  >Palats "Ukrayina"</a></li>
            
            <li data-coords="17,16.5" data-labelpos="W"><a href="subwayMap.htm?id={lybidska}" >Lybidska</a></li>
            <li data-coords="17,18" data-labelpos="E"><a href="subwayMap.htm?id={demiivska}"  >Demiivska</a></li>
            
            <li data-coords="16,19" data-dir="S"><a href="subwayMap.htm?id={holosiivska}"  >Holosiivska</a></li>
            
            <li data-coords="13,19" data-labelpos="N"><a href="subwayMap.htm?id={vasylkivska}" >Vasylkivska</a></li>
            
            <li data-coords="10,19"><a href="subwayMap.htm?id={vystavkovyi_tsentr" >Vystavkovyi Tsentr</a></li>
            
            <li data-coords="7.5,19" data-labelpos="N"><a href="subwayMap.htm?id={ipodrom}"  >Ipodrom</a></li>
            
            <li data-coords="5,19"><a href="subwayMap.htm?id={teremky}" >Teremky</a></li>
        </ul>
        
        <ul data-color="#65d765" data-label="Line 3">
            <li data-coords="9.6,5" data-labelpos="W"><a href="subwayMap.htm?id={syrets}" >Syrets</a></li>
            <li data-coords="10.9,6" data-labelpos="W" data-marker="@station"><a href="subwayMap.htm?id={dorohozhychi}"  >Dorohozhychi</a></li>
            <li data-coords="11.8,7" data-labelpos="W" data-marker="@station"><a href="subwayMap.htm?id={lukianivska}"  >Lukianivska</a></li>
            <li data-coords="12.6,8" data-labelpos="W" data-marker="@station"><a href="subwayMap.htm?id={lvivska_brama}" >Lvivska Brama</a></li>
            
            <li data-coords="13.4,9" data-labelpos="W" data-marker="@interchange" data-markerinfo="h5"><a href="subwayMap.htm?id={zoloti_vorota}" >Zoloti Vorota</a></li>
            
            <li data-coords="15.6,11"></li>
            
            <li data-coords="18.1,11"></li>
            <li data-coords="18.15,11" data-labelpos="E" data-marker="@interchange"><a href="subwayMap.htm?id={palats_sportu}">Palats Sportu</a></li>
            
            <li data-coords="19.2,11.7" data-labelpos="E" data-marker="@station"><a href="subwayMap.htm?id={klovska}" >Klovska</a></li>
            <li data-coords="19.8,12.4" data-labelpos="W" data-marker="@station"><a href="subwayMap.htm?id={pecherska}"  >Pecherska</a></li>
            <li data-coords="20.4,13" data-labelpos="E" data-marker="@station"><a href="subwayMap.htm?id={druzhby narodiv}"  onClick="reply_click(this.id)">Druzhby Narodiv</a></li>
            <li data-coords="20.9,13.6" data-labelpos="W" data-marker="@station"><a href="subwayMap.htm?id={vydubychi}"  >Vydubychi</a></li>
            <li data-coords="21.4,14.2" data-labelpos="E" data-marker="@station"><a href="subwayMap.htm?id={telychka}"  >Telychka</a></li>
            <li data-coords="22,14.9" data-labelpos="W" data-marker="@station"><a href="subwayMap.htm?id={slavutych}" >Slavutych</a></li>
            <li data-coords="22.6,15.5" data-labelpos="E" data-marker="@station"><a href="subwayMap.htm?id={osokorky}"  >Osokorky</a></li>
            <li data-coords="23.3,16.3" data-labelpos="W" data-marker="@station"><a href="subwayMap.htm?id={pozniaky}"  >Pozniaky</a></li>
            <li data-coords="24,17.1" data-labelpos="E" data-marker="@station"><a href="subwayMap.htm?id={kharkivska}" >Kharkivska</a></li>
            <li data-coords="24.8,18" data-labelpos="W" data-marker="@station"><a href="subwayMap.htm?id={vyrlytsia}" >Vyrlytsia</a></li>
            <li data-coords="25.5,18.8" data-labelpos="E" data-marker="@station"><a href="subwayMap.htm?id={boryspilska}" >Boryspilska</a></li>
            <li data-coords="26.6,19.5" data-labelpos="W"><a href="subwayMap.htm?id={chervony_khutir}"  >Chervony Khutir</a></li>
        </ul>
	</div>

	<!-- <div id="legend"></div>
 -->

	<script type="text/javascript">
        $(".subway-map").subwayMap({ debug: true });
    </script>
</body>
</html>
