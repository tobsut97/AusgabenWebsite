<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<LINK rel="stylesheet" type="text/css" href="resources/css/style.css"
	title="Default Styles">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="resources/jquery/jquery-2.2.0.min.js"
	type="text/javascript"></script>
<title>Ausgabenrechner</title>
<script type="text/javascript">
	
	$(function() {
 		//switching between front and back #1
		$("#front1").click(function(){
 			$("#front1").fadeOut(800);
 			$("#back1").fadeIn(800);
		});
		
		$("#backToFront1").click(function(){
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
			if (amount == "" || notes == "") {
				return;
			}
			insertEntertainment(amount,notes);
			alert("dialog created succesfully");
			$("#amountEntertainment").val('');
			$("#notesEntertainment").val('');
			$("#dialogEntertainment").show();
			$("#front2").fadeIn(800);
 			$("#back2").fadeOut(800);		
		});

		//switching between front and back #3
		
		$("#front3").click(function(){
			$("#front3").fadeOut(800);
 			$("#back3").fadeIn(800);
		});
		
		$("#backToFront3").click(function(){
			$("#front3").fadeIn(800);
 			$("#back3").fadeOut(800);			
		});
		
		
		//switching between front and back #4
		$("#front4").click(function(){
			$("#front4").fadeOut(800);
 			$("#back4").fadeIn(800);
		});
		
		$("#backToFront4").click(function(){
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

	});
</script>
</head>
<body>
	<div class="flip-container">
		<div id="back2" class="back">
			<div id="contentBack2">
				<span>Ich habe schon wieder ...</span><input type="text"
					class="amountInput" id="amountEntertainment">   <span>Das
					Geld war ... </span> <input type="text" id="notesEntertainment">
				 
				<button type="button" id="backToFront2">JA ICH HABE</button>
			</div>
		</div>
		<div id="front2" class="front"></div>
	</div>
	<div class="flip-container">
		<div id="back1" class="back">
			<div id="contentBack1">
				<span>Ich habe schon wieder ...</span>   <input type="text"
					class="amountInput" id="amountShopping">   <span>Das
					Geld war ... </span>   <input type="text" id="notesShopping">
				 
				<button type="button" id="backToFront1">JA ICH HABE</button>
			</div>
		</div>
		<div id="front1" class="front"></div>
	</div>
	<div class="flip-container">
		<div id="back4" class="back">
			<div id="contentBack4">
				<span>Ich habe schon wieder ...</span>   <input type="text"
					class="amountInput" id="amountPiggy">   <span>Das
					Geld war ... </span>   <input type="text" id="notesPiggy">
				 
				<button type="button" id="backToFront4">JA ICH HABE</button>
			</div>
		</div>
		<div id="front4" class="front"></div>
	</div>
	<div class="flip-container">
		<div id="back3" class="back">
			<div id="contentBack3">
				<span>Ich habe schon wieder ...</span>  
				<input type="text" class="amountInput" id="amountHeart">  
				<span>Das Geld war ... </span>   <input
					type="text" id="notesHeart">  
				<button type="button" id="backToFront3">JA ICH HABE</button>
			</div>
		</div>
		<div id="front3" class="front"></div>
	</div>
</body>
</html>