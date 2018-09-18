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
	<h3>Mainframe file download</h3>
	
	<form:form method="POST" modelAttribute="downloadMVbinder">
		<table>
			<tr>
				<td><form:label path="ipAddress">IP address1</form:label></td>
				<td><form:input path="ipAddress"/></td>
			</tr>
			
			<tr>
				<td><form:label path="userName">User Name</form:label></td>
				<td><form:input path="userName"/></td>
			</tr>
			
			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:input path="password"/></td>
			</tr>
			
			<tr>
				<td><form:label path="fileName">Mainframe File name</form:label></td>
				<td><form:input path="fileName"/></td>
			</tr>
			
			<tr>
				<td><form:label path="windowsPath">Windows Path</form:label></td>
				<td><form:input path="windowsPath"/></td>
			</tr>
			
			<tr>
              	<td><input type="submit" value="Download file"/></td>
            </tr>
		</table>
	</form:form>

</body>
</html>