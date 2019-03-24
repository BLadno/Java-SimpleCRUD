<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:wrapper>
	<div class="form">
		<form action="updateUser" method="post">
			<div class="entry">
				<div class="fl2r">First Name:</div>
				<div class="fr2l"><input type="text" name="firstName" value="${employee.getFirstName()}"></div>
			</div>
			<div class="entry">
				<div class="fl2r">Last Name:</div>
				<div class="fr2l"><input type="text" name="lastName" value="${employee.getLastName()}"></div>
			</div>
			<div class="entry">
				<div class="fl2r">Salary:</div>
				<div class="fr2l"><input type="text" name="salary" value="${employee.getSalary()}"></div>
			</div>
			<div class="mid">
			<input type="hidden" name="id" value="${id}">
			<input type="submit" value="update User">
			</div>
		</form>
	</div>
</t:wrapper>