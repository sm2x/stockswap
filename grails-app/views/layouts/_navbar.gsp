<nav>
    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/#">
                        <asset:image src="logo-black.png" height="24"/>
                    </a>
                </div>
                <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                    <ul class="nav navbar-nav">
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <g:pageProperty name="page.nav" />
                        <g:render template="/_menu/user"/>
                        <%--<g:render template="/_menu/admin"/>--%>
                        <g:render template="/_menu/search"/>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>
