<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#">
   		<i class="glyphicon glyphicon-wrench"></i>
		<g:message code="default.config.label"/><b class="caret"></b>
	</a>
	<ul class="dropdown-menu">
		<li class="">
			<a tabindex="-1" href="#"><b>Technical Admin</b></a>
		</li>
		<g:if env="development">
		<li class="">
			<a href="${createLink(uri: '/dbconsole')}">
				<i class="glyphicon glyphicon-dashboard"></i>
				<g:message code="default.dbconsole.label"/>
			</a>
		</li>
		</g:if>
		<li class="">
			<a href="${createLink(uri: '/systeminfo')}">
				<i class="glyphicon glyphicon-info-sign"></i>
				<g:message code="default.systeminfo.label"/>
			</a>
		</li>
        <li class="divider"></li>
        <li class="">
            <a href="${createLink(uri: '/facility')}">
                <i class="glyphicon glyphicon-leaf"></i>
                <g:message code="default.facilities.label"/>
            </a>
        </li>
        <li class="">
            <a href="${createLink(uri: '/product')}">
                <i class="glyphicon glyphicon-book"></i>
                <g:message code="default.products.label"/>
            </a>
        </li>
        <li class="">
            <a href="${createLink(uri: '/post')}">
                <i class="glyphicon glyphicon-fire"></i>
                <g:message code="default.posts.label"/>
            </a>
        </li>
        <li class="">
            <a href="${createLink(uri: '/user')}">
                <i class="glyphicon glyphicon-user"></i>
                <g:message code="default.users.label"/>
            </a>
        </li>
	</ul>
</li>
