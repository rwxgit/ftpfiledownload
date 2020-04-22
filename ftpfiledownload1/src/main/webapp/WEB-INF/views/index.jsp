<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
	
	<head>
		
		<!-- The head meta data to be placed in a single file.
		This has to be tested. At this point, the head meta data is placed in every webpage
		 -->
		  
		<%-- <spring:url value="/resources/js/jquery-3.3.1.min.js" var="jqueryJS" />
		<script src="${jqueryJS}"></script>
		<script> 
       		$(function(){ $("head").load("head1.jsp") });
   		</script> --%>
		
		<title>ATM Dev Tools</title>
		
		<!-- css setup -->
		
		<spring:url value="/resources/css/jquery-ui.min.css" var="jqueryuiCSS" />
		<spring:url value="/resources/css/style.css" var="styleCSS" />
		<spring:url value="/resources/css/topnav1.css" var="topnav" />
		
		<link href="${jqueryuiCSS}" rel="stylesheet" />
		<link href="${styleCSS}" rel="stylesheet" />
		<link href="${topnav}" rel="stylesheet" />
		
		<!-- javascript setup --> 
		
		<spring:url value="/resources/js/jquery-3.3.1.min.js" var="jqueryJS" />
		<spring:url value="/resources/js/jquery-ui.min.js" var="jqueryuiJS" />
		<spring:url value="/resources/js/mainJS.js" var="mainJS" />
		
		<script src="${jqueryJS}"></script>
		<script src="${jqueryuiJS}"></script>
		<script src="${mainJS}"></script>

 	</head>
<body>
	
	<!-- Navigation setup - Start -->
	<div id="nav-placeholder"></div>

			<%@ include file="nav1.jsp" %>
			
			<!-- <script>
				$(function() {
					$("#nav-placeholder").load("nav1.jsp"); /* this is loaded from webapp folder and now webapp\WEB-INF\views folder */
				});
			</script> -->
			
	<!-- Navigation setup - End -->
	
	<div class="wrapper">
		<div class="container">
			<div class="container_home">
				<h2>ATM Developer Tools</h2>
					<ul class="unordlist">
						<!-- <li><a href="">Home</a></li> -->
						<!-- <li><a href="login">Login to application - tool</a></li> -->
	    				<li><a href="downloadfile">Download file from Mainframe</a></li>
	    				<li><a href="downloadfiles">Download files from Mainframe</a></li>
	    				<li><a href="parsetrace">Format trace</a></li>
	    				<li><a href="parselog">Format connex log</a></li>
	    				<li><a href="testani">Test harness - ANI</a></li>
	    				<li><a href="testccni">Test harness - CCNI</a></li>
	    				<li><a href="testAPI">Test web API - Openbanking API</a>
					</ul>
				</div>
			</div>
		</div>
	</body>
	
</html>
