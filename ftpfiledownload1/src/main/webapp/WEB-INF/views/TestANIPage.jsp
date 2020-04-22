<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html>
	
	<head>
		
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
	
			<div class="container_info_ANI_1">
				
				<h2>ATM NAP Interface - Test Harness</h2>
					
				<table>
					<tr>
						<td><spring:message code="lbl_3.tran01"/></td>
						<td><spring:message code="lbl_3.tran07"/></td>
					</tr>
					
					<tr>
						<td><spring:message code="lbl_3.tran02"/></td>
						<td><spring:message code="lbl_3.tran08"/></td>
					</tr>
				
					<tr>
						<td><spring:message code="lbl_3.tran03"/></td>
						<td><spring:message code="lbl_3.tran09"/></td>
					</tr>
					
					<tr>
						<td><spring:message code="lbl_3.tran04"/></td>
						<td><spring:message code="lbl_3.tran10"/></td>
					</tr>
					
					<tr>
						<td><spring:message code="lbl_3.tran05"/></td>
						<td><spring:message code="lbl_3.tran11"/></td>
					</tr>
					
					<tr>
						<td><spring:message code="lbl_3.tran06"/></td>
					</tr>
				</table>
			</div>
			
			<div class="container_info_ANI_2">	
				<form:form method="POST" modelAttribute="testaniMVbinder">
					<table>
						<tr>
							<td><spring:message code="lbl_3.tranopt"/></td>
							<td><form:select path="tranOpt">
								<form:option value="NONE" label="select tran"/>
								<form:options items="${tranOptList}"/>
								</form:select>
							</td>
						</tr>
						
						<tr>
							<td><spring:message code="lbl_3.cardbrand"/></td>
							<td><form:select path="cardBrand">
								<form:option value="NONE" label="select brand"/>
								<form:options items="${cardBrandList}"/>
								</form:select>
							</td>
						</tr>		
						
						<tr>
							<td><spring:message code="lbl_3.card2process"/></td>
							<td><form:select path="cardToProcess">
								<form:option value="NONE" label="select card"/>
								<form:options items="${cardOptList}"/>
								</form:select>
							</td>
						</tr>
						
						<tr>
							<td></td>
						</tr>
						<tr>
							<spring:message code="lbl_3.submit" var="lblsubmit"/>
			              	<td colspan="2"><input type="submit" value="${lblsubmit}"/></td>
			            </tr>
						
					</table>
					
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
