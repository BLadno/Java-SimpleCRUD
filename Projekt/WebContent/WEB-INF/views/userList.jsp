<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:wrapper>
	<div class="form">
		<table>
			<tr><td> ID </td><td> First Name </td><td> Last Name </td><td> Salary </td><td> Select </td></tr>
		      <c:forEach var = "i" begin = "0" end = "${size}">
		      	<tr>
		      	<td> ${employees[i].getId()} </td>
				<td> ${employees[i].getFirstName()} </td>
				<td> ${employees[i].getLastName()} </td>
				<td> ${employees[i].getSalary()} </td>
				<td> <form action="selectUser" method="post">
					<input type="hidden" name="id" value="${employees[i].getId()}"><br> 
					<input type="submit" value="select"></form> 
				</td>
		         </tr>
		      </c:forEach>
		  </table>
	  </div>
</t:wrapper>