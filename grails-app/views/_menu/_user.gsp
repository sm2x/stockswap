<%--<ul class="nav pull-right">--%>



	<sec:ifNotLoggedIn>
		<li><g:link controller="login" action="index">Login</g:link></li>
		<li><g:link controller="signup" action="index">Signup</g:link></li>



		<%--
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">
			<!-- TODO: integrate Springsource Security etc. and show User's name ... -->
			<i class="glyphicon glyphicon-user"></i>
			<g:message code="security.signin.label"/><b class="caret"></b>
		</a>

		<ul class="dropdown-menu" role="menu">
			<li class="form-container">
				<g:form uri="/login/authenticate" method="post" accept-charset="UTF-8">
					<input class="form-control" style="margin-bottom: 15px;" type="text" placeholder="Username" id="username" name="username">
					<input class="form-control" style="margin-bottom: 15px;" type="password" placeholder="Password" id="password" name="password">
					<!--
					<input style="float: left; margin-right: 10px;" type="checkbox" name="remember-me" id="remember-me" value="1">
					<label class="string optional" for="user_remember_me"> Remember me</label>-->
					<input class="btn btn-primary btn-block" type="submit" id="sign-in" value="Sign In">
				</g:form>
			</li>
			<li class="divider"></li>
			<li class="button-container">
				<!-- NOTE: the renderDialog MUST be placed outside the NavBar (at least for Bootstrap 2.1.1): see bottom of main.gsp -->
				<g:render template="/_common/modals/registerTextLink"/>
			</li>
		</ul>
		--%>

	</sec:ifNotLoggedIn>
	<sec:ifLoggedIn>
		<li class="dropdown">

			<a class="dropdown-toggle" role="button" data-toggle="dropdown" data-target="#" href="#">
				<!-- TODO: Only show menu items based on permissions (e.g., Guest has no account page) -->
				<i class="glyphicon glyphicon-user icon-white"></i>
				<sec:loggedInUserInfo field="username"/>
				<%--
				<g:message code="default.user.unknown.label" default="Guest"/> <b class="caret"></b>
				--%>
			</a>
			<ul class="dropdown-menu" role="menu">
				<!-- TODO: Only show menu items based on permissions -->
				<li class="">
					<g:link controller="dashboard" action="index" id="${sec.loggedInUserInfo(field: "id")}">
						<i class="glyphicon glyphicon-list-alt"></i> <g:message code="listing.list.label"/>
					</g:link>
				</li>
				<li class="">
					<g:link controller="user" action="show" id="${sec.loggedInUserInfo(field: "id")}">
						<i class="glyphicon glyphicon-user"></i> <g:message code="user.show.label"/>
					</g:link>
				</li>
				<li class="">
					<a href="${createLink(uri: '/')}">
						<i class="glyphicon glyphicon-cog"></i> <g:message code="user.settings.change.label"/>
					</a>
				</li>

				<li class="divider"></li>
				<li class="">
					<a href="${createLink(uri: '/logout')}">
						<i class="glyphicon glyphicon-off"></i> <g:message code="security.signoff.label"/>
					</a>
				</li>

			</ul>
		</li>

	</sec:ifLoggedIn>

<%--</ul>--%>

<noscript>
<ul class="nav pull-right">
	<li class="">
		<g:link controller="user" action="show"><g:message code="default.user.unknown.label"/></g:link>
	</li>
</ul>
</noscript>
