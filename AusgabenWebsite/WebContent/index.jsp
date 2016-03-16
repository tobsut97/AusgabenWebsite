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
			
		
		//switching between front and back #1
		$("#front1").click(function(){
			$("#back1").css("z-index", "3");
			$("#front1").fadeTo(500,0.0);
			$("#back1").fadeTo(500,1.0);
		});
		
		$(".backToFront1").click(function(){
			$("#back1").css("z-index", "1");
			$("#front1").css("z-index", "2");
			$("#back1").fadeTo(1500,0.0);
			$("#front1").fadeTo(1500,1.0);			
		});
		
		
		//switching between front and back #2
		$("#front2").click(function(){
			$("#back2").css("z-index", "3");
			$("#front2").fadeTo(1500,0.0);
			$("#back2").fadeTo(1500,1.0);
		});
		
		$(".backToFront2").click(function(){
			$("#back2").css("z-index", "1");
			$("#front2").css("z-index", "2");
			$("#back2").fadeTo(1500,0.0);
			$("#front2").fadeTo(1500,1.0);			
		});

		//switching between front and back #3
		
		$("#front3").click(function(){
			$("#back3").css("z-index", "3");
			$("#front3").fadeTo(500,0.0);
			$("#back3").fadeTo(500,1.0);
		});
		
		$(".backToFront3").click(function(){
			$("#back3").css("z-index", "1");
			$("#front3").css("z-index", "2");
			$("#back3").fadeTo(1500,0.0);
			$("#front3").fadeTo(1500,1.0);			
		});
		
		
		//switching between front and back #4
		$("#front4").click(function(){
			$("#back4").css("z-index", "3");
			$("#front4").fadeTo(500,0.0);
			$("#back4").fadeTo(500,1.0);
		});
		
		$(".backToFront4").click(function(){
			$("#back4").css("z-index", "1");
			$("#front4").css("z-index", "2");
			$("#back4").fadeTo(1500,0.0);
			$("#front4").fadeTo(1500,1.0);			
		});



		



		

/* 		
		var viewportHeight = $(window).height();
		var viewportWidth = $(window).width();
		
		alert("viewportwidth:" + viewportWidth + " viewportheight:" + viewportHeight); */

		
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
	<div class="flip-container">
		<div class="flipper">
			<div id="front2" class="front"></div>
			<div id="back2" class="back">
				<button class="backToFront2" type="button">BACK</button>
			</div>
		</div>
	</div>
	<div class="flip-container">
		<div class="flipper">
			<div id="front1" class="front"></div>
			<div id="back1" class="back">
				<button class="backToFront1" type="button">BACK</button>
			</div>
		</div>
	</div>
	<div class="flip-container">
		<div class="flipper">
			<div id="front4" class="front"></div>
			<div id="back4" class="back">
				<button class="backToFront4" type="button">BACK</button>
			</div>
		</div>
	</div>
	<div class="flip-container">
		<div class="flipper">
			<div id="front3" class="front"></div>
			<div id="back3" class="back">
				<button class="backToFront3" type="button">BACK</button>
			</div>
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