<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="resources/jquery/jquery-2.2.0.min.js"></script>
<link href="resources/css/style.css" rel="stylesheet">
<title>Ausgabenrechner</title>
<script>
	
	$(function() {
			
		
 		//switching between front and back #1
		$("#front1").click(function(){
 			$("#front1").fadeOut(800);
 			$("#back1").fadeIn(800);
		});
		
		$("#back1").click(function(){
			$("#front1").fadeIn(800);
 			$("#back1").fadeOut(800);	
		});
		
		
		//switching between front and back #2
		$("#front2").click(function(){
			$("#front2").fadeOut(800);
 			$("#back2").fadeIn(800);
		});
		
		$("#backToFront2").click(function(){
			$("#front2").fadeIn(800);
 			$("#back2").fadeOut(800);		
		});

		//switching between front and back #3
		
		$("#front3").click(function(){
			$("#front3").fadeOut(800);
 			$("#back3").fadeIn(800);
		});
		
		$("#back3").click(function(){
			$("#front3").fadeIn(800);
 			$("#back3").fadeOut(800);			
		});
		
		
		//switching between front and back #4
		$("#front4").click(function(){
			$("#front4").css("display","none");
 			$("#back4").css("display","block");
		});
		
		$("#back4").click(function(){
			$("#back4").css("display","none");
 			$("#front4").css("display","block");			
		});

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
		<div id="back2" class="back">
			<div id="contentBack2">
				<p>Ich habe schon wieder ...</p>
				<input type="text">
				<p>Das Geld war ... </p>
				<input type="text">
				<p></p>
				<button type="button" id="backToFront2">JA ICH HABE</button>
			</div>
		</div>
		<div id="front2" class="front"></div>
	</div>
	<div class="flip-container">
		<div id="back1" class="back">
			<button class="backToFront1" type="button">BACK</button>
		</div>
		<div id="front1" class="front"></div>
	</div>
	<div class="flip-container">
		<div id="back4" class="back">
			<button class="backToFront4" type="button">BACK</button>
		</div>
		<div id="front4" class="front"></div>
	</div>
	<div class="flip-container">
		<div id="back3" class="back">
			<button class="backToFront3" type="button">BACK</button>
		</div>
		<div id="front3" class="front"></div>
	</div>
</body>
</html>