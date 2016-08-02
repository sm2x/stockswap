<html>
<head>
	<title><g:message code="springSecurity.denied.title"/></title>
	<meta name="layout" content="custom" />
</head>

<body>
	<content tag="header">
		<!-- Empty Header -->
	</content>

  	<section id="error" class="">
		<div class="big-message">
			<div class="panel panel-default">
				<div class="panel-heading">
					<g:message code="springSecurity.denied.title" default="Access Denied!"/>

				</div>
				<div class="panel-body">
					<p class="lead"><g:message code="springSecurity.denied.message" /></p>

					<div class="actions margin-top-large">
						<a href="${createLink(uri: '/')}" class="btn btn-large btn-primary">
							<i class="glyphicon glyphicon-chevron-left icon-white"></i>
							<g:message code="error.button.backToHome"/>
						</a>
						<a href="${createLink(uri: '/login')}" class="btn btn-large btn-success">
							<i class="glyphicon glyphicon-user"></i>
							<g:message code="error.button.Login"/>
						</a>
					</div>

				</div>
			</div>
		</div>
	</section>

<script type='text/javascript'>
	<!--
	(function() {
		//document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>

</body>
</html>
