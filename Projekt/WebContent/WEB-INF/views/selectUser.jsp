<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>    
<t:wrapper>
	<div class="form">
		<div class="entry">
			<div class="entry">
				<div class="fl2r">Id:</div>
				<div class="fr2l">${id}</div>
			</div>
		</div>
		<div class="entry">
			<div class="entry">
				<div class="fl2r">First Name:</div>
				<div class="fr2l">${employee.getFirstName()}</div>
			</div>
		</div>
		<div class="entry">
			<div class="entry">
				<div class="fl2r">Last Name:</div>
				<div class="fr2l">${employee.getLastName()}</div>
			</div>
		</div>
		<div class="entry">
			<div class="entry">
				<div class="fl2r">Salary</div>
				<div class="fr2l">${employee.getSalary()}</div>
			</div>
		</div>		
		<div class="entry">
			<div class="fl2l">
				<form action="deleteUser" method="post">
					<input type="hidden" name="id" value="${id}"><br> 
					<input type="submit" value="delete User">
				</form> 
			</div>
			<div class="fr2r">
				<form action="updateUserForm" method="post">
					<input type="hidden" name="id" value="${id}"><br> 
					<input type="submit" value="update User">
				</form> 
			</div>
		</div>
	</div>
</t:wrapper>