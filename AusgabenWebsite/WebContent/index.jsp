<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="resources/jquery/jquery-2.2.0.min.js"></script>
<link href="resources/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="resources/bootstrap/bootstrap.min.js"></script>

<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

<link href="resources/css/style.css" rel="stylesheet">
<title>Ausgabenrechner</title>
<script>
	
	$(function() {

		var viewportHeight = $(window).height();
		var viewportWidth = $(window).width();
		
		alert("viewportwidth:" + viewportWidth + " viewportheight:" + viewportHeight);
		
		 $("#front1").click(function(){
		     alert("front1");
		 });
		 
		 $("#back1").click(function(){
		 });
		
		
/* 		//click functions
		$("#bagPic").click(function() {
			$("#bagPic").hide();
			$("#inputBag").show();
		});
		$("#heartPic").click(function() {
			$("#heartPic").hide();
			$("#inputHeart").show();
		});
		$("#camcorderPic").click(function() {
			$("#camcorderPic").hide();
			$("#inputCam").show();
		});
		$("#piggybankPic").click(function() {
			$("#piggybankPic").hide();
			$("#inputPiggyBank").show();
		});  */
		
		$("#flip3D").click(function() {
			alert("top-left clicked");
		});
		
		$("#rt").click(function() {
			alert("top-right clicked");
		});
		
		$("#lb").click(function() {
			alert("bottom-left clicked");
		});
		
		$("#rb").click(function() {
			alert("bottom-right clicked");
		});
		
		$("#ok").click(function() {
			var amount = $("#amountBag").val();
			var notes = $("#notesBag").val();
			insertAmount(amount);
		});
		
		//
		//normal functions
		//
		
		
		//insert new entertainment
		function insertEntertainment() {
			var postData={};
			var actualDate = new Date().toISOString().slice(0, 19).replace('T', ' ');  //sql datetime format
			postData.amount = amount;
			postData.notes = notes;
			postData.date = actualDate;
			$.ajax({
				dataType:'json',
				contentType:'application/json',
				type:'POST',
				url:'<%=request.getContextPath()%>/rest/entertainment/',
				data : JSON.stringify(postData),
				statusCode : {
					201 : function(data) {
						alert("works");
					}
				}
			});
		}

	});
</script>
</head>
<body>
	<!-- 	<div class="cover-container">
		<div class="masthead clearfix">
			<div class="inner">
				<h3 class="masthead-brand">HEADING</h3>
			</div>
		</div>
	</div>
	<div>
		<div class="row" id="heading">
			<div class="col-md-12 col-xs-12"></div>
		</div>
		<div id="container" class="container">
			<div class="row" id="firstRow">
				<div id="inputBag" class="col-md-5">
					<ul class="input-list">
						<li><input type="text" placeholder="Amount" id="amountBag"></li>
						<li><input type="text" placeholder="Notizen" id="notesBag"></li>
						<button id="ok">OK!</button>
					</ul>
				</div>
				<div class="col-md-5" id="bagPic">
					<img class="centeredIMGRight"
						src="resources/images/bag-regular.svg" aflip3D="test">
				</div>
				<div class="col-md-2"></div>
				<div id="inputCam" class="col-md-5">
					<ul class="input-list">
						<li><input type="text" placeholder="Amount"></li>
						<li><input type="text" placeholder="Notizen"></li>
					</ul>
				</div>
				<div class="col-md-5" id="camcorderPic">
					<img class="centeredIMGLeft"
						src="resources/images/camcorder-regular.svg" aflip3D="test">
				</div>
			</div>
			<div class="row">
				<div class="col-md-12"></div>
			</div>
			<div class="row" id="secondRow">
				<div id="inputHeart" class="col-md-5">
					<ul class="input-list">
						<li><input type="text" placeholder="Amount"></li>
						<li><input type="text" placeholder="Notizen"></li>
					</ul>
				</div>
				<div class="col-md-5" id="heartPic">
					<img class="centeredIMGRight"
						src="resources/images/heart-regular.svg" aflip3D="test">
				</div>

				<div class="col-md-2"></div>
				<div id="inputPiggyBank" class="col-md-5">
					<ul class="input-list">
						<li><input type="text" placeholder="Amount"></li>
						<li><input type="text" placeholder="Notizen"></li>
					</ul>
				</div>
				<div class="col-md-5" id="piggybankPic">
					<img class="centeredIMGLeft"
						src="resources/images/piggybank-regular.svg" aflip3D="test">
				</div>
				<div class="row">
					<div class="col-md-12">
						<hr id="verticalline">
						<hr id="horizontalline"></hr>
					</div>
					<div class="row">
						<div class="col-md-12">
							<hr id="verticalline">
							<hr id="horizontalline"></hr>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<div class="flip-container">
		<div class="flipper">
			<div id="front2" class="front"></div>
			<div id="back2" class="back"></div>
		</div>
	</div>
	<div class="flip-container">
		<div class="flipper">
			<div id="front1" class="front"></div>
			<div id="back1" class="back"></div>
		</div>
	</div>
	<div class="flip-container">
		<div class="flipper">
			<div id="front4" class="front"></div>
			<div id="back4" class="back"></div>
		</div>
	</div>
	<div class="flip-container">
		<div class="flipper">
			<div id="front3" class="front"></div>
			<div id="back3" class="back"></div>
		</div>
	</div>

	<!-- 	<div class="flipper" id="lt">
		<div class="card_front">
			<img src="resources/images/heart-regular.svg" alt="test"
				class="icons">
		</div>
		<div class="card_back">INPUT 1 - BACK</div>
	</div> -->
	<!-- 	<div class="flexitem" id="rt">
		<div class="imagebox">
			<img src="resources/images/bag-regular.svg" alt="test" class="icons">
		</div>
		<div class="inputform">
			<p>INPUT - BACK</p>
		</div>
	</div>
	<div class="flexitem" id="lb">
		<div class="imagebox">
			<img src="resources/images/camcorder-regular.svg" alt="test"
				class="icons">
		</div>
		<div class="inputform">
			<p>INPUT - BACK</p>
		</div>
	</div>
	<div class="flexitem" id="rb">
		<div class="imagebox">
			<img src="resources/images/piggybank-regular.svg" alt="test"
				class="icons">
		</div>
		<div class="inputform">
			<p>INPUT - BACK</p>
		</div>
	</div> -->
</body>
</html>