<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
	<head>
		<!-- Tried sticky navigation from https://www.w3schools.com/howto/howto_js_navbar_sticky.asp
		but didn't work. Need to figure out the problem and resolve it -->

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
	
	<p hidden="true">
		This should have been done using multiple row list
		Current implementation wasn't done this way. 
		Sample for list implementation is in below web page
		
		http://viralpatel.net/blogs/spring-mvc-multi-row-submit-java-list
		https://davidwalsh.name/checkbox-form-input-arrays
		
	</p>
	
	<div class="wrapper">
		<div class="container">

			
			<form:form method="POST" modelAttribute="downloadsMVbinder">
				<div class="container_filesdown">
					<h2><spring:message code="lbl_2.pageName"/></h2>
					<table>
						<tr>
							<td><spring:message code="lbl_2.ipAddress"/></td>
							<td><form:select path="ipAddress02">
									<form:option value="NONE" label="select host" />
									<form:options items="${hostList}" />
								</form:select></td>
							<td><form:errors path="ipAddress02" cssClass="error" element="div"/></td>
						</tr>
						
						<tr>
							<td><spring:message code="lbl_2.userName"/></td>
							<td><form:input path="userName02"/></td>
							<td><form:errors path="userName02" cssClass="error" element="div"/></td>
						</tr>
						
						<tr>
							<td><spring:message code="lbl_2.password"/></td>
							<td><form:password showPassword="true" path="password02"/></td>
							<td><form:errors path="password02" cssClass="error" element="div"/></td>
						</tr>
						
					</table>
				</div>
				<div class="container_filesdown_2">
					<table class="multiDownloadTable">
						<tr>
							<th colspan="1"><spring:message code="lbl_2.fileName"/></th>
							<th colspan="1"><input type="hidden" value="spacer"></th>
							<th><spring:message code="lbl_2.windowsPath"/></th>
						</tr>	
						
						<tr>
							<td colspan="1"><form:input path="fileName01" name="fileName[]" /></td>
							<td colspan="1"><div class=widthSet><form:errors path="fileName01" cssClass="error" element="div"/></div></td>
							<td><form:input path="windowsPath01" /></td>
							<td colspan="1"><form:errors path="windowsPath01" cssClass="error" element="div"/></td>
						</tr>
					
						<tr>
							<td colspan="1"><form:input path="fileName02" name="fileName[]" /></td>
							<td colspan="1"><form:errors path="fileName02" cssClass="error" element="div"/></td>
							<td><form:input path="windowsPath02" /></td>
							<td colspan="1"><form:errors path="windowsPath02" cssClass="error" element="div"/></td>
						</tr>
						
						<tr>
							<td colspan="1"><form:input path="fileName03" name="fileName[]" /></td>
							<td colspan="1"><form:errors path="fileName03" cssClass="error" element="div"/></td>
							<td><form:input path="windowsPath03"/></td>
							<td colspan="1"><form:errors path="windowsPath03" cssClass="error" element="div"/></td>
						</tr>
						
						<tr>
							<td colspan="1"><form:input path="fileName04" name="fileName[]" /></td>
							<td colspan="1"><form:errors path="fileName04" cssClass="error" element="div"/></td>
							<td><form:input path="windowsPath04"/></td>
							<td colspan="1"><form:errors path="windowsPath04" cssClass="error" element="div"/></td>
						</tr>
						
						<tr>
							<td colspan="1"><form:input path="fileName05" name="fileName[]" /></td>
							<td colspan="1"><form:errors path="fileName05" cssClass="error" element="div"/></td>
							<td><form:input path="windowsPath05"/></td>
							<td colspan="1"><form:errors path="windowsPath05" cssClass="error" element="div"/></td>
						</tr>
						
						
						<tr>
							<td colspan="1"><form:input path="fileName06" name="fileName[]" /></td>
							<td colspan="1"><form:errors path="fileName06" cssClass="error" element="div"/></td>
							<td><form:input path="windowsPath06"/></td>
							<td colspan="1"><form:errors path="windowsPath06" cssClass="error" element="div"/></td>
						</tr>
						
						<tr>
							<td colspan="1"><form:input path="fileName07" name="fileName[]" /></td>
							<td colspan="1"><form:errors path="fileName07" cssClass="error" element="div"/></td>
							<td><form:input path="windowsPath07"/></td>
							<td colspan="1"><form:errors path="windowsPath07" cssClass="error" element="div"/></td>
						</tr>
						
						<tr>
							<td colspan="1"><form:input path="fileName08" name="fileName[]" /></td>
							<td colspan="1"><form:errors path="fileName08" cssClass="error" element="div"/></td>
							<td><form:input path="windowsPath08"/></td>
							<td><form:errors path="windowsPath08" cssClass="error" element="div"/></td>
						</tr>
						
						<tr>
							<td colspan="1"><form:input path="fileName09" name="fileName[]" /></td>
							<td colspan="1"><form:errors path="fileName09" cssClass="error" element="div"/></td>
							<td><form:input path="windowsPath09"/></td>
							<td><form:errors path="windowsPath09" cssClass="error" element="div"/></td>
						</tr>
						
						<tr>
							<td colspan="1"><form:input path="fileName10" name="fileName[]" /></td>
							<td colspan="1"><form:errors path="fileName10" cssClass="error" element="div"/></td>
							<td><form:input path="windowsPath10"/></td>
							<td><form:errors path="windowsPath10" cssClass="error" element="div"/></td>
						</tr>
					</table>
				</div>
				<div class="container_filesdown_3">
					<table>
						<tr>
							<spring:message code="lbl_2.submit" var="lblsubmit"/>
			              	<td colspan="2"><input type="submit" value="${lblsubmit}"/></td>
			            </tr>
	
						<tr>
							<td><form:hidden path="msgForm" /></td>
							<td><form:errors path="msgForm" cssClass="result" element="div" /></td>
						</tr>
					</table>
				</div>
			</form:form>
		</div>
	</div>

	<!-- <script>
		window.onscroll = function() {
			myFunction()
		};

		var navbar = document.getElementById("topnav");
		var sticky = navbar.offsetTop;

		function myFunction() {
			if (window.pageYOffset >= sticky) {
				navbar.classList.add("sticky")
			} else {
				navbar.classList.remove("sticky");
			}
		}
	</script> -->

</body>
</html>
