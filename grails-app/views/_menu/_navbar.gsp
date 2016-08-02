<nav id="navbar" class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="${createLink(uri: '/')}" rel="home">
            <asset:image class="logo" src="logo.png" alt="${meta(name:'app.name')}" width="16px" height="16px"/>
            ${meta(name:'app.name')}
        </a>
    </div>

    <div class="collapse navbar-collapse navbar-ex1-collapse" role="navigation">
        <ul class="nav navbar-nav">
            <g:render template="/_menu/admin"/>
            <g:render template="/_menu/user"/>
            <%--
            <g:render template="/_menu/info"/>
            --%>
            <!-- NOTE: the renderDialog for the "Register" modal dialog MUST be placed outside the NavBar (at least for Bootstrap 2.1.1): see bottom of main.gsp -->
            <%--
            <g:render template="/_menu/language"/>
            --%>


        </ul>
    </div>
</nav>



