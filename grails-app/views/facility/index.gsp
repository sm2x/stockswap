
<%@ page import="org.stockswap.Facility" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="custom" />
	<g:set var="entityName" value="${message(code: 'facility.label', default: 'Facility')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-facility" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'facility.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="dateCreated" title="${message(code: 'facility.dateCreated.label', default: 'Date Created')}" />
			
				<g:sortableColumn property="lastUpdated" title="${message(code: 'facility.lastUpdated.label', default: 'Last Updated')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${facilityInstanceList}" status="i" var="facilityInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${facilityInstance.id}">${fieldValue(bean: facilityInstance, field: "name")}</g:link></td>
			
				<td><g:formatDate date="${facilityInstance.dateCreated}" /></td>
			
				<td><g:formatDate date="${facilityInstance.lastUpdated}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${facilityInstanceCount}" />
	</div>
</section>

</body>

</html>
