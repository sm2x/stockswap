<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="custom" />
	<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-product" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="dosage" title="${message(code: 'product.dosage.label', default: 'Dosage')}" />
			
				<g:sortableColumn property="units" title="${message(code: 'product.units.label', default: 'Units')}" />
			
				<g:sortableColumn property="expirationDate" title="${message(code: 'product.expirationDate.label', default: 'Expiration Date')}" />
			
				<g:sortableColumn property="quantity" title="${message(code: 'product.quantity.label', default: 'Quantity')}" />
			
				<g:sortableColumn property="dateCreated" title="${message(code: 'product.dateCreated.label', default: 'Date Created')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${productInstanceList}" status="i" var="productInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: productInstance, field: "dosage")}</td>
			
				<td>${fieldValue(bean: productInstance, field: "units")}</td>
			
				<td><g:formatDate date="${productInstance.expirationDate}" /></td>
			
				<td>${fieldValue(bean: productInstance, field: "quantity")}</td>
			
				<td><g:formatDate date="${productInstance.dateCreated}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${productInstanceCount}" />
	</div>
</section>

</body>

</html>
