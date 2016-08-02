<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="application.css"/>
    <asset:link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <g:layoutHead/>
</head>
<body>

<g:render template="/layouts/navbar"/>

<div class="container">

    <g:render template="/layouts/breadcrumbs"/>
    <%--<g:render template="/layouts/header"/>--%>
    <g:layoutBody/>
</div>

<!-- Enable to overwrite Footer by individual page -->
<g:if test="${ pageProperty(name:'page.footer') }">
    <g:pageProperty name="page.footer" />
</g:if>
<g:else>
    <g:render template="/layouts/footer"/>
</g:else>


<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>


<asset:javascript src="application.js"/>

<script type="text/javascript">
    $('.navbar-lower').affix({
        offset: {top: 50}
    });

</script>
</body>
</html>
