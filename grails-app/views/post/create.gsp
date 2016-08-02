<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="custom" />
	<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

	<section id="create-post" class="first">

		<g:hasErrors bean="${postInstance}">
			<div class="alert alert-danger">
				<g:renderErrors bean="${postInstance}" as="list" />
			</div>
		</g:hasErrors>

		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Create Post</h3>
			</div>
			<div class="panel-body">
				<g:form action="save" class="form-horizontal" role="form" >
					<g:render template="form"/>

					<div class="form-actions">
    				    <div class="col-lg-offset-3 col-lg-10">
                            <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
    					</div>
                    </div>
				</g:form>

			</div>
		</div>


	</section>

</body>

</html>
