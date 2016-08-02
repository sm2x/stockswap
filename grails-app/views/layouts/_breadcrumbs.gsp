<ol class="breadcrumb">
    <li><a href="/">Home</a></li>
    <g:if test="${actionName!='index'}">
        <li><g:link controller="${controllerName}" action="index">${controllerName.capitalize()}</g:link></li>
    </g:if>
    <li class="active"><g:link controller="${controllerName}" action="${actionName}"><g:layoutTitle/></g:link></li>
</ol>
