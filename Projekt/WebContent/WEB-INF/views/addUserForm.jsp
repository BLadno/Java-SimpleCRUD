<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:wrapper>
	<div class="form">
		<form action="addUser" method="post">
			<div class="entry">
				<div class="fl2r">First Name:</div>
				<div class="fr2l"><input type="text" name="firstName"></div>
			</div>
			<div class="entry">
				<div class="fl2r">Last Name:</div>
				<div class="fr2l"><input type="text" name="lastName"></div>
			</div>
			<div class="entry">
				<div class="fl2r">Salary:</div>
				<div class="fr2l"><input type="text" name="salary"></div>
			</div>
			<div class="mid">
			<input type="submit" value="add User">
			</div>
		</form>
	</div>
</t:wrapper>