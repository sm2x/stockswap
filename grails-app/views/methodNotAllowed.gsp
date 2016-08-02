<!doctype html>
<html>
    <head>
        <title>Method Not Allowed</title>
        <meta name="layout" content="custom">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <body>
        <ul class="errors">
            <li>Error: Method Not Allowed (405)</li>
            <li>Path: ${request.forwardURI}</li>
        </ul>
    </body>
</html>
