<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		
			<form:form method="POST" modelAttribute="formlogMVbinder">
				<div class="container_info_LOG_1">
					<h2>Parse log file from Connex system in Mainframe server</h2>
					
					<table>
						<tr>
							<td><spring:message code="lbl_4.ipAddress" /></td>
							<td><form:select path="ipAddress">
									<form:option value="NONE" label="select host" />
									<form:options items="${hostList}" />
								</form:select></td>
							<td><form:errors path="ipAddress" cssClass="error" element="div"/></td>
						</tr>
	
						<tr>
							<td><spring:message code="lbl_4.userName" /></td>
							<td><form:input path="userName" /></td>
							<td><form:errors path="userName" cssClass="error" element="div"></form:errors></td>
						</tr>
	
						<tr>
							<td><spring:message code="lbl_4.password" /></td>
							<td><form:password showPassword="true" path="password" /></td>
							<td><form:errors path="password" cssClass="error" element="div"></form:errors></td>
						</tr>
	
						<tr>
							<td><spring:message code="lbl_4.fileName" /></td>
							<td><form:input path="fileName" /></td>
							<td><form:errors path="fileName" cssClass="error" element="div"></form:errors></td>
						</tr>
					</table>
				</div>
			
				<div class="container_info_LOG_2">
					<table>
						<tr>
							<spring:message code="lbl_4.submit" var="lblsubmit" />
							<td colspan="2"><input type="submit" value="${lblsubmit}" /></td>
						</tr>
	
						<tr>
							<td><form:hidden path="msgForm" /></td>
							<td><form:errors path="msgForm" cssClass="result" element="div"/></td>
						</tr>
		            </table>
				</div>
				
				<div class="container_info_LOG_3">
					<p><b>Simple List:</b><p>
							${testList}
					<p><b>Iterated List:</b><p>

					<%-- <ol>
						<c:forEach var="emp" items="${testList}">
						
							<li>${emp}</li>
							
						</c:forEach>
					</ol> --%>
					
<%-- 					<c:forEach items="${testList}" var="firstVar"> 
			      		<c:forEach items="${firstVar}" var="secodVar"> 
			         		<c:out value="${secondVar.field1}" /> 
			      		</c:forEach>
			      	</c:forEach> --%>
			      	
			      	<%-- This iterates the array and it comes good for one record. 
			      	
			      		<c:forEach var="columnHeader" items="${stringArr}">
    					<td>
        					<c:out value="${columnHeader}" />
    					</td>
					</c:forEach> --%>
					
					<table class="test_table">
						<c:forEach items="${ListOfStringArr}" var="listofstringarr">
							<tr class="test_table">
	        					<c:forEach items="${listofstringarr}" var="stringarr">
			        			
				        					<td class="test_table">
				      							<c:out value="${stringarr}"/>
				      						</td>
	        					</c:forEach>
	       					</tr>
	    				</c:forEach>
    				</table>
				</div>	
					
			</form:form>
		</div>
	</div>
</body>
</html>
