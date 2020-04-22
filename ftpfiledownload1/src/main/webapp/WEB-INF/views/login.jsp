<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		
			<form:form method="POST" modelAttribute="loginMVbinder">
				<div class="container_login">
					<h2>ATM Developer Tools - Dev login</h2>
					<h2> testing session scope ==> ${loginVO.userName} </h2>
						<table>
							<tr>
								<td><spring:message code="lbl_log.userName" /></td>
								<td><form:input path="userName" /></td>
								<td><form:errors path="userName" cssClass="error" element="div"></form:errors></td>
							</tr>
	
							<tr>
								<td><spring:message code="lbl_log.password" /></td>
								<td><form:password showPassword="true" path="password" /></td>
								<td><form:errors path="password" cssClass="error" element="div"></form:errors></td>
							</tr>
						</table>
				</div>
				
				<div class="container_login_2">
					<table>
						<tr>
							<spring:message code="lbl_log.submit" var="lblsubmit" />
							<td colspan="2"><input type="submit" value="${lblsubmit}" /></td>
						</tr>
	
						<tr>
							<td><form:hidden path="msgForm" /></td>
							<td><form:errors path="msgForm" cssClass="result" element="div"/></td>
						</tr>
					</table>
				</div>
			</form:form>
		</div>
	</div>
	</body>
	
</html>
