<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%@ page session="false"%>

<t:wrapper>
	<c:if test="${info_type.equals('success')}">
		<p>${info }</p>
	</c:if>
	<div class="form">
		<div class="mid">
			<a href="/Projekt/userList"><h2>Show users list</h2></a>
		</div>
		<div class="mid">
			<a href="/Projekt/addUserForm"><h2>Add User</h2></a>
		</div>
	</div>
</t:wrapper>