<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Download files from Mainframes</title>
	</head>
<body>
	<h3><spring:message code="lbl.pageName"/></h3>
	
	<form:form method="POST" modelAttribute="downloadMVbinder">
		<table>
			<tr>
				<td><spring:message code="lbl.ipAddress"/></td>
				<td><form:input path="ipAddress"/></td>
				<td><form:errors path="ipAddress" cssClass="error"/></td>
			</tr>
			
			<tr>
				<td><spring:message code="lbl.userName"/></td>
				<td><form:input path="userName"/></td>
			</tr>
			
			<tr>
				<td><spring:message code="lbl.password"/></td>
				<td><form:password path="password"/></td>
			</tr>
			
			<tr>
				<td><spring:message code="lbl.fileName"/></td>
				<td><form:input path="fileName"/></td>
			</tr>
			
			<tr>
				<td><spring:message code="lbl.windowsPath"/></td>
				<td><form:input path="windowsPath"/></td>
			</tr>
			
			<tr>
				<spring:message code="lbl.submit" var="lblsubmit"/>
              	<td colspan="2"><input type="submit" value="${lblsubmit}"/></td>
            </tr>
            
		</table>
	</form:form>

</body>
</html>