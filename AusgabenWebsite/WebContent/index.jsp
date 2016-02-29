<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width", initial-scale:1.0">
<script src="resources/jquery/jquery-2.2.0.min.js"></script>
<link href="resources/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="resources/bootstrap/bootstrap.min.js"></script>

<link href="resources/css/style.css" rel="stylesheet">
<title>Ausgabenrechner</title>
</head>
<body>
	<div class="cover-container">
		<div class="masthead clearfix">
			<div class="inner">
				<h3 class="masthead-brand">Wieviel heane hüt scha widr brucht</h3>
<!-- 				<nav>
				<ul class="nav masthead-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">Statistik</a></li>
					<li><a href="#">Kontakt</a></li>
				</ul>
				</nav> -->
			</div>
		</div>
	</div>
	<div>
		<div class="row" id="heading">
			<div class="col-md-12 col-xs-12">
				<h2>Wofür haben sie Geld ausgegeben?</h2>
			</div>
		</div>
		<div id="container" class="container">
			<div class="row" id="firstRow">
				<div class="col-md-5" id="bagPic">
					<img class="centeredIMG" src="resources/images/bag-regular.svg" alt="test">
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-5" id="camcorderPic">
					<img class="centeredIMG" src="resources/images/camcorder-regular.svg" alt="test">
				</div>
			</div>
			<div class="row">
				<div class="col-md-12"></div>
			</div>
			<div class="row" id="secondRow">
				<div class="col-md-5" id="heartPic">
					<img class="centeredIMG" src="resources/images/heart-regular.svg" alt="test">
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-5" id="piggybankPic">
					<img class="centeredIMG"  src="resources/images/piggybank-regular.svg" alt="test">
				</div>
			</div>
		</div>
	</div>
	<script>
		$("#bagPic").click(function() {
			alert("bagPic");
		});
		$("#heartPic").click(function() {
			alert("heartPic");
		});
		$("#camcorderPic").click(function() {
			alert("camcorderPic");
		});
		$("#piggybankPic").click(function() {
			alert("piggybankpic");
		});
	</script>
</body>
</html>