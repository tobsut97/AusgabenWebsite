<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/style.css" title="DefaultStyles">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ausgabenrechner</title>
<script src="resources/jquery/jquery-2.2.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
 		//switching between front and back #1
		$("#front1").click(function(){
 			$("#front1").fadeOut(800);
 			$("#back1").fadeIn(800);
		});
		
		$("#backIMG1").click(function(){
			$("#front1").fadeIn(800);
 			$("#back1").fadeOut(800);	
		});
		
		
		//switching between front and back #2
		$("#front2").click(function(){
			$("#front2").fadeOut(800);
 			$("#back2").fadeIn(800);
		});
		
		$("#backToFront2").click(function(){
			var amount = $("#amountEntertainment").val();
			var notes = $("#notesEntertainment").val();
			checkInputs(amount, notes);
			insertEntertainment(amount,notes);
			alert("dialog created succesfully");
			$("#amountEntertainment").val('');
			$("#notesEntertainment").val('');
			$("#dialogEntertainment").show();
		});
		
		$("#backIMG2").click(function(){
			$("#front2").fadeIn(800);
 			$("#back2").fadeOut(800);	
		});
		

		//switching between front and back #3
		
		$("#front3").click(function(){
			$("#front3").fadeOut(800);
 			$("#back3").fadeIn(800);
		});
		
		$("#backIMG3").click(function(){
			$("#front3").fadeIn(800);
 			$("#back3").fadeOut(800);			
		});
		
		
		//switching between front and back #4
		$("#front4").click(function(){
			$("#front4").fadeOut(800);
 			$("#back4").fadeIn(800);
		});
		
		$("#backToFront4").click(function(){
			var amount = $("#amountHeart").val();
			var notes = $("#notesHeart").val();
			insertLove(amount,notes);
			$("#amountEntertainment").val('');
			$("#notesEntertainment").val('');
			$("#front4").fadeIn(800);
 			$("#back4").fadeOut(800);			
		});
		
		$("#backIMG4").click(function(){
			$("#front4").fadeIn(800);
 			$("#back4").fadeOut(800);			
		});
		
/* 		$(".amountInput").val($(".amountInput").val() + "EURO ausgegeben.");
 */		

		//insert new entertainment
		function insertEntertainment(amount,notes) {
			var postData={};
			postData.amount = amount;
			postData.notes = notes;
			$.ajax({
				dataType:'json',
				contentType:'application/json',
				type:'POST',
				url:'<%=request.getContextPath()%>/rest/Entertainment/',
				data : JSON.stringify(postData),
				statusCode : {
					201 : function(data) {
					}
				}
			});
		}
 
 		//insert new love
 		function insertLove(amount,notes){
 			var postData={};
 			postData.amount = amount;
 			postData.notes = notes;
 			$.ajax({
 				dataType:'json',
 				contentType:'application/json',
 				type :'POST',
 				url : '<%=request.getContextPath()%>/rest/Love/',
				data : JSON.stringify(postData),
				statusCode : {
					201 : function(data) {
						alert("love created successfully");
					}
				}
			});
		}

		function checkInputs(amount, notes) {
			if (amount == "" || notes == "") {
				if (amount == "") {
					alert("bitte gib an wieviel geld du ausgegeben hast.");
				}
				if (notes == "") {
					alert("war das geld klug investiert?");
				}
				return;
			}
		}

	});
</script>
</head>
<body>
	<div class="flip-container">
		<div id="back2" class="back">
			<div id="contentBack2">
				<span>Ich habe schon wieder ...</span><input type="text"
					class="amountInput" id="amountEntertainment"> <span>Das
					Geld war ... </span> <input type="text" id="notesEntertainment">

				<button type="button" id="backToFront2">JA ICH HABE</button>
			</div>
			<div id="backIcon2">
				<img src="resources/images/arrowRed.svg" alt="back" width="50"
					height="50" style="position: relative; top: 15px; left: 15px;" id="backIMG2">
				<span style="color: #FA6666; margin-left:10px;">ZURÜCK</span>
			</div>
		</div>
		<div id="front2" class="front"></div>
	</div>
	<div class="flip-container">
		<div id="back1" class="back">
			<div id="contentBack1">
				<span>Ich habe schon wieder ...</span> <input type="text"
					class="amountInput" id="amountShopping"> <span>Das
					Geld war ... </span> <input type="text" id="notesShopping">

				<button type="button" id="backToFront1">JA ICH HABE</button>
			</div>
			<div id="backIcon1">
				<img src="resources/images/arrowYellow.svg" alt="back" width="50"
					height="50" style="position: relative; top: 15px; left: 15px;" id="backIMG1">
				<span style="color: #FBEF69; margin-left:10px;">ZURÜCK</span>
			</div>
		</div>
		<div id="front1" class="front"></div>
	</div>
	<div class="flip-container">
		<div id="back4" class="back">
			<div id="contentBack4">
				<span>Ich habe schon wieder ...</span> <input type="text"
					class="amountInput" id="amountHeart"> <span>Das Geld
					war ... </span> <input type="text" id="notesHeart">

				<button type="button" id="backToFront4">JA ICH HABE</button>
			</div>
			<div id="backIcon4">
				<img src="resources/images/arrowGreen.svg" alt="back" width="50"
					height="50" style="position: relative; top: 15px; left: 15px;" id="backIMG4">
				<span style="color: #98E466; margin-left:10px;">ZURÜCK</span>
			</div>
		</div>
		<div id="front4" class="front"></div>
	</div>
	<div class="flip-container">
		<div id="back3" class="back">
			<div id="contentBack3">
				<span>Ich habe schon wieder ...</span> <input type="text"
					class="amountInput" id="amountPiggy"> <span>Das Geld
					war ... </span> <input type="text" id="notesPiggy">
				<button type="button" id="backToFront3">JA ICH HABE</button>
			</div>
			<div id="backIcon3">
				<img src="resources/images/arrowViolett.svg" alt="back" width="50"
					height="50" style="position: relative; top: 15px; left: 15px;" id="backIMG3">
				<span style="color: #9069FB; margin-left:10px;">ZURÜCK</span>
			</div>
		</div>
		<div id="front3" class="front"></div>
	</div>
</body>
</html>