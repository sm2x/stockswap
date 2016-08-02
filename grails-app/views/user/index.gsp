<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="custom" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-user" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
			
				<g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />
			
				<g:sortableColumn property="accountExpired" title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}" />
			
				<g:sortableColumn property="accountLocked" title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}" />
			
				<g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
			
				<g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${userInstanceList}" status="i" var="userInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
			
				<td>${fieldValue(bean: userInstance, field: "password")}</td>
			
				<td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>
			
				<td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>
			
				<td>${fieldValue(bean: userInstance, field: "email")}</td>
			
				<td><g:formatBoolean boolean="${userInstance.enabled}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${userInstanceCount}" />
	</div>
</section>

</body>

</html>
