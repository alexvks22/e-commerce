<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
	
	<!--  bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
	<script>
	
	function show(nr) {
		/*document.getElementById("test_sub").style.visibility = 'visible';
		document.getElementById("test_sub1").style.visibility = 'visible';
		document.getElementById("test_sub2").style.visibility = 'visible';
		document.getElementById("test_sub3").style.visibility = 'visible';
        
	    if (nr == 3)
	    	{
	    	//for tables
	    	document.getElementById("table1").style.display="block";
	        document.getElementById("table2").style.display="block";
	        document.getElementById("table"+nr).style.display="block";
	        document.getElementById("table4").style.display="none";
	        

	        //button of tables
	        document.getElementById('test_sub').style.visibility = 'hidden';
	        document.getElementById("test_sub1").style.visibility = 'hidden';
	    }
	    if (nr == 4)
	    	{
	    	document.getElementById("table1").style.display="block";
	        document.getElementById("table2").style.display="block";
	        document.getElementById("table3").style.display="block";
	        document.getElementById("table"+nr).style.display="block";
	        

	        //button of tables
	        document.getElementById('test_sub').style.visibility = 'hidden';
	        document.getElementById("test_sub1").style.visibility = 'hidden';
	        document.getElementById("test_sub2").style.visibility = 'hidden';
	        
	    	}
	    if (nr != 3 && nr !=4)
	    	{*/
	    	document.getElementById("table1").style.display="none";
	        document.getElementById("table2").style.display="none";
	        document.getElementById("table3").style.display="none";
	        document.getElementById("table4").style.display="none";
	        document.getElementById("table"+nr).style.display="block";
	    	//}
	}
	
	//function to check for each form if mandatory radio buttons are selected
	$(function() {
		$("#test_sub").click(function(e){
	
		    var cpu_checked= $("input[name=cpu]:checked").length;
		    var memory_checked = $("input[name=memory]:checked").length;
		    if(cpu_checked == 0 || memory_checked == 0){
		        alert("Please fill all options!");
		        return false;
		    }
		    else {
		        $("#tesy").submit();
		    }
	
		});
		$('#test_sub1').click(function(e) {
			var inches_checked= $("input[name=ssize]:checked").length;
		    if(inches_checked==0){
		        alert("Please fill all options!");
		        return false;
		    }else{
		        $("#tesy1").submit();
		    }
		});
		$('#test_sub2').click(function(e) {
			var inches_checked= $("input[name=ssize]:checked").length;
			var hd_checked= $("input[name=hd]:checked").length;
			var cpu_checked= $("input[name=cpu]:checked").length;
		    var memory_checked = $("input[name=memory]:checked").length;
		    if(hd_checked==0 || inches_checked ==0 || cpu_checked == 0  || memory_checked == 0){
		        alert("Please fill all options!");
		        return false;
		    }else{
		    	
		    	$('#tesy2').submit();
		    }
		});
		
		$('#test_sub3').click(function(e) {
			var inches_checked= $("input[name=ssize]:checked").length;
			var hd_checked= $("input[name=hd]:checked").length;
			var cpu_checked= $("input[name=cpu]:checked").length;
		    var memory_checked = $("input[name=memory]:checked").length;
		    var os_checked = $("input[name=os]:checked").lenght;
		    if(hd_checked==0 || inches_checked ==0 || cpu_checked == 0  || memory_checked == 0 || os_checked == 0){
		        alert("Please fill all options!");
		        return false;
		    }else{
		        $('#tesy3').submit();
		    }
		});
		
	});
	</script>
	
<style>

.image {
width: 100%;
height: 200px;
background-size: 100% 100%;
  }
</style>
</head>

<%@page import = "ecommerce.Order" %>
<%@page import = "ecommerce.Product" %>
<%@page import = "java.util.Date" %>
	
	
<body>
<div class="jumbotron text-center">
<h1 class="display-3">Welcome to "Interview" E-Shop</h1>
	<h4 class="center">Our products are unique offered at a special price!</h4>
</div>
	<br>
	<h3 class="text-center">Our products</h3>
	
	<div class="container p-3 my-3 bg-dark text-white">
		<div class="row">
			<div class="col-sm-3">
				<div class="img-thumbnail mb-2 responsive image" style="background-image:url('images/pc_tower.png')"></div>
				<hr>
				<a href="#" onclick="show(1)" class="btn btn-light mb-2 " >PC Tower </a> 
				<div id="table1" style="display: none">
					<form action="product/pctower" method="POST" id="tesy">
						<h6>How much Memory (in GB) do you want?</h6>
						<input type="radio" id="memory2GB" name="memory" value="2">
						<label for="memory2GB">2 GB</label>
						<br> 
						<input type="radio" id="memory4GB" name="memory" value="4">
						<label for="memory2GB">4 GB</label>
						<br> 
						<input type="radio" id="memory8GB" name="memory" value="8">
						<label for="memory2GB">8 GB</label>
						<br> 
						<input type="radio" id="memory12GB" name="memory" value="12"> 
						<label for="memory2GB">12 GB</label>
						<br>
						<h6>How much CPU (in GHz) do you want?</h6>
						<input type="radio" id="cpu180" name="cpu" value="180">
						<label for="cpu180">1.80 GHz</label>
						<br> 
						<input type="radio" id="cpu210" name="cpu" value="210"> 
						<label for="cpu210">2.10 GHz</label>
						<br> 
						<input type="radio" id="cpu240" name="cpu" value="240"> 
						<label for="cpu240">2.40 GHz</label>
						<br> 
						<input type="radio" id="cpu260" name="cpu" value="260"> 
						<label for="cpu260">2.60 GHz</label>
						<br> 
						
						<input type="submit" id="test_sub" name="submit" value="Buy" class="btn btn-primary" />
	
					</form>
				</div>
			</div>
		<div class="col-sm-3">
			<div class="img-thumbnail mb-2 responsive image" style="background-image:url('images/pc_screen.jpg')"></div>
			<hr>
			<a href="#" onclick="show(2)" class="btn btn-light mb-2">PC Screen </a> 
				
			<div id="table2" style="display: none">
				<!-- style="display:none" -->
				<form action="product/pcscreen" method="POST" id="tesy1">
					<h6>What screen size (in inches) do you want?</h6>
					<input type="radio" id="ssize13" name="ssize" value="13">
					<label for="ssize13">13"</label>
					<br> 
					<input type="radio" id="ssize15" name="ssize" value="15"> 
						<label for="ssize15">15"</label>
						<br> 
						<input type="radio" id="ssize20" name="ssize" value="20"> 
						<label for="ssize20">20"</label>
						<br>
						<input type="radio" id="ssize32" name="ssize" value="32"> 
						<label for="ssize32">32"</label>
						<br> 
						<input type="submit" id="test_sub1" name="submit" value="Buy" class="btn btn-primary"/>

				</form>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="img-thumbnail mb-2 responsive image" style="background-image:url('images/pc.jpg')"></div>
			<hr>
			<a href="#" onclick="show(3)" class="btn btn-light mb-2">Personal Computer </a> 
				<div id="table3" style="display: none">
				<form action="product/pc" method="POST" id="tesy2">
					<h6>How much Memory (in GB) do you want?</h6>
						<input type="radio" id="memory2GB" name="memory" value="2">
						<label for="memory2GB">2 GB</label>
						<br> 
						<input type="radio" id="memory4GB" name="memory" value="4">
						<label for="memory2GB">4 GB</label>
						<br> 
						<input type="radio" id="memory8GB" name="memory" value="8">
						<label for="memory2GB">8 GB</label>
						<br> 
						<input type="radio" id="memory12GB" name="memory" value="12"> 
						<label for="memory2GB">12 GB</label>
						<br>
	
						<h6>How much CPU (in GHz) do you want?</h6>
						<input type="radio" id="cpu180" name="cpu" value="180">
						<label for="cpu180">1.80 GHz</label>
						<br> 
						<input type="radio" id="cpu210" name="cpu" value="210"> 
						<label for="cpu210">2.10 GHz</label>
						<br> 
						<input type="radio" id="cpu240" name="cpu" value="240"> 
						<label for="cpu240">2.40 GHz</label>
						<br> 
						<input type="radio" id="cpu260" name="cpu" value="260"> 
						<label for="cpu260">2.60 GHz</label>
						<br> 
						
						<h6>What screen size (in inches) do you want?</h6>
						<input type="radio" id="ssize13" name="ssize" value="13">
						<label for="ssize13">13"</label>
						<br> 
						<input type="radio" id="ssize15" name="ssize" value="15"> 
						<label for="ssize15">15"</label>
						<br> 
						<input type="radio" id="ssize20" name="ssize" value="20"> 
						<label for="ssize20">20"</label>
						<br>
						<input type="radio" id="ssize32" name="ssize" value="32"> 
						<label for="ssize32">32"</label>
						<br> 
					
						<h6>How much space(in GB) you want in your hard disk?</h6>
						<input type="radio" id="hd128" name="hd" value="128gb"> 
						<label for="hd128">128 GB</label>
						<br> 
						<input type="radio" id="hd256" name="hd" value="256"> 
						<label for="hd256">256 GB</label><br>
						<input type="radio" id="hd512" name="hd" value="512">
						<label for="hd512">512 GB</label>
						<br> 
						<input type="radio" id="hd1024" name="hd" value="1024"> 
						<label for="hd1024">1024 GB</label>
						<br> 
					<input type="submit" id="test_sub2" name="submit"value="Buy" class="btn btn-primary" />

				</form>
			</div>
		</div>
		<br>
		<div class="col-sm-3">
			<div class="img-thumbnail mb-2 responsive image" style="background-image:url('images/workstation.png')"></div>
			<hr>
			<a href="#" onclick="show(4)" class="btn btn-light mb-2">Workstation</a> 
			<div id="table4" style="display: none">
				<form action="product/workstation" method="POST" id="tesy3">
				<!--  PC TOWER -->
						<h6>How much Memory (in GB) do you want?</h6>
						<input type="radio" id="memory2GB" name="memory" value="2">
						<label for="memory2GB">2 GB</label>
						<br> 
						<input type="radio" id="memory4GB" name="memory" value="4">
						<label for="memory2GB">4 GB</label>
						<br> 
						<input type="radio" id="memory8GB" name="memory" value="8">
						<label for="memory2GB">8 GB</label>
						<br> 
						<input type="radio" id="memory12GB" name="memory" value="12"> 
						<label for="memory2GB">12 GB</label>
						<br>
	
						<h6>How much CPU (in GHz) do you want?</h6>
						<input type="radio" id="cpu180" name="cpu" value="180">
						<label for="cpu180">1.80 GHz</label>
						<br> 
						<input type="radio" id="cpu210" name="cpu" value="210"> 
						<label for="cpu210">2.10 GHz</label>
						<br> 
						<input type="radio" id="cpu240" name="cpu" value="240"> 
						<label for="cpu240">2.40 GHz</label>
						<br> 
						<input type="radio" id="cpu260" name="cpu" value="260"> 
						<label for="cpu260">2.60 GHz</label>
						<br>
					
					<h6>How much space(in GB) you want in your hard disk?</h6>
					<input type="radio" id="hd128" name="hd" value="128"> 
					<label for="hd128">128 GB</label>
					<br> 
					<input type="radio" id="hd256" name="hd" value="256"> 
					<label for="hd256">256 GB</label><br>
					<input type="radio" id="hd512" name="hd" value="512">
					<label for="hd512">512 GB</label>
					<br> 
					<input type="radio" id="hd1024" name="hd" value="1024"> 
					<label for="hd1024">1024 GB</label>
					<br> 
						
					<h6>What screen size (in inches) do you want?</h6>
					<input type="radio" id="ssize13" name="ssize" value="13">
					<label for="ssize13">13"</label>
					<br> 
					<input type="radio" id="ssize15" name="ssize" value="15"> 
					<label for="ssize15">15"</label>
					<br> 
					<input type="radio" id="ssize20" name="ssize" value="20"> 
					<label for="ssize20">20"</label>
					<br>
					<input type="radio" id="ssize32" name="ssize" value="32"> 
					<label for="ssize32">32"</label>
					<br> 

					<h6>What OS (Operating System) you want?</h6>
					<input type="radio" id="oswindows" name="os" value="Windows">
					<label for="oswindows">Windows</label>
					<br> 
					<input type="radio" id="oslinux" name="os" value="Linux">
					<label for="oslinux">Linux</label>
					<br>
					<input type="submit" id="test_sub3" name="submit" value="Buy" class="btn btn-primary" onclick="ok()"/>
				</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>