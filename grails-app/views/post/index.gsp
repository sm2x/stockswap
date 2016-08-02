
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="custom" />
	<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-post" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="postType" title="${message(code: 'post.postType.label', default: 'Post Type')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'post.product.label', default: 'Product')}" />
			
				<g:sortableColumn property="dosage" title="${message(code: 'post.dosage.label', default: 'Dosage')}" />
			
				<g:sortableColumn property="unitOfMeasure" title="${message(code: 'post.unitOfMeasure.label', default: 'Unit Of Measure')}" />
			
				<g:sortableColumn property="expirationDate" title="${message(code: 'post.expirationDate.label', default: 'Expiration Date')}" />
			
				<g:sortableColumn property="quantity" title="${message(code: 'post.quantity.label', default: 'Quantity')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${postInstanceList}" status="i" var="postInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${postInstance.id}">${fieldValue(bean: postInstance, field: "postType")}</g:link></td>
			
				<td>${fieldValue(bean: postInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: postInstance, field: "dosage")}</td>
			
				<td>${fieldValue(bean: postInstance, field: "unitOfMeasure")}</td>
			
				<td><g:formatDate date="${postInstance.expirationDate}" /></td>
			
				<td>${fieldValue(bean: postInstance, field: "quantity")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${postInstanceCount}" />
	</div>
</section>

</body>

</html>
