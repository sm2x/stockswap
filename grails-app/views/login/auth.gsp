<html>
<head>
	<title><g:message code="default.login.label"/></title>
	<meta name="layout" content="custom" />
</head>

<body>


    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.login.label"/> </h3>
        </div>
        <div class="panel-body">


            <div class="row grid-divider">
                <div class="col-md-6">

                    <div class="col-padding">
                        <h4>Use your Facebook or Google account to verify your identify.</h4>

                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <p></p>
                                <button class="btn btn-primary btn-block" type="submit">
                                    Login with Facebook
                                </button>
                                <button class="btn btn-primary btn-block" type="submit">
                                    Login with Google
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-padding">

                        <h4>Use your StockSwap account.</h4>


                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <form role="form" id='loginForm2' class='form-horizontal' action='${postUrl}' method='POST' autocomplete='off'>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-user"></i></span>
                                            <input type="text" class="form-control" name="username" placeholder="Username" aria-describedby="basic-addon1">
                                        </div>


                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon2"><i class="glyphicon glyphicon-lock"></i></span>
                                            <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
                                        </div>

                                    </div>
                                    <%--
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" value="remember-me"> Remember me
                                        </label>
                                    </div>
                                    --%>
                                    <button class="btn btn-primary btn-block" type="submit">Sign in</button>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


<%--
<section id="login" class="first">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><g:message code="springSecurity.login.header"/> </h3>
				</div>
				<div class="panel-body">




					<form role="form" id='loginForm' class='form-horizontal' action='${postUrl}' method='POST' autocomplete='off'>
						<div class="form-group">
							<label for='username' class="control-label"><g:message code="springSecurity.login.username.label"/>:</label>
							<div class="controls">
								<input type='text' class='form-control col-md-4' name='username' id='username'/>
							</div>
						</div>

						<div class="form-group">
							<label for='password' class="control-label"><g:message code="springSecurity.login.password.label"/>:</label>
							<div class="controls">
								<input type='password' class='form-control col-md-4' name='password' id='password'/>
							</div>
						</div>
						<div id="remember_me_holder" class="form-group">
							<label for='remember_me' class="control-label"><g:message code="springSecurity.login.remember.me.label"/></label>
							<div class="controls">
								<g:checkBox class="form-control col-md-4" name="${rememberMeParameter}" value="${hasCookie}" />
							</div>
						</div>
						<div class="form-group">
							<input type='submit' id="submit" class="btn btn-success" value='${message(code: "springSecurity.login.button")}'/>
							<g:link controller="signup" class="btn btn-link">${message(code:'springSecurity.signup.button', default:'Or signup as a new user')}</g:link>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
</section>
--%>

<script type='text/javascript'>
	<!--
	(function() {
		//document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>

</body>
</html>
