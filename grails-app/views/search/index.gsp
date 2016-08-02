<%@ page import="org.stockswap.PostType" %>
<html>

<head>
    <title><g:message code="default.welcome.title" args="[meta(name:'info.app.name')]"/> </title>
    <meta name="layout" content="custom" />
    <g:set var="layout_nosecondarymenu" value="${true}" scope="request"/>
    <script type='text/javascript' src='https://www.google.com/jsapi'></script>
    <script type='text/javascript'>
        google.load('visualization', '1', {'packages': ['geomap']});
        google.setOnLoadCallback(drawMap);

        function drawMap() {
            var data = google.visualization.arrayToDataTable([
                ['City', 'Available items'],
                ['Nairobi', 1],
                ['Dar el Salam', 300],
                ['Tanzania', 400],
                ['Kigali', 400],
                ['Kampala', 500],
                ['Gaborone', 600],
                ['Boston', 200],
                ['Maputo', 700]
            ]);

            var options = {};
            options['region'] = '002';
            options['colors'] = [0xFF8747, 0xFFB581, 0xc06000]; //orange colors
            options['dataMode'] = 'markers';

            var container = document.getElementById('map_canvas');
            var geomap = new google.visualization.GeoMap(container);
            geomap.draw(data, options);
        };

    </script>
</head>
<body>

<section id="dashboard">

    <div class="row">

        <div class="col-md-3">
            <g:render template="sidebar" model="[:]"/>
        </div>

        <div class="col-md-9">
            <div class="pull-right">

                <g:link controller="post" action="create" params="[postType: PostType.OFFER]" class="btn btn-default">
                    <g:message code="default.create.label" args="['Offer']"/>
                </g:link>
                <g:link controller="post" action="create" params="[postType: PostType.NEED]" class="btn btn-default">
                    <g:message code="default.create.label" args="['Need']"/>
                </g:link>

                <div class="btn-group">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        View
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu1">
                        <li><g:link controller="dashboard" action="index" params="[viewType:'gallery']">Gallery</g:link></li>
                        <li><g:link controller="dashboard" action="index" params="[viewType:'list']">List</g:link></li>
                        <li><g:link controller="dashboard" action="index" params="[viewType:'map']">Map</g:link></li>
                    </ul>
                </div>
            </div>


            <ul class="nav nav-pills">
                <li class="active"><a href="#tab1" data-toggle="tab">Offers by facility</a></li>
                <li class=""><a href="#tab2" data-toggle="tab">Needs by facility</a></li>
            </ul>

            <div class="tab-content">

                <div class="tab-pane active" id="tab1" >

                    <div class="row">
                        <div class="col-md-12">

                            <g:if test="${viewType=='gallery'}">
                                <g:render template="gallery" model="[posts:offers]"/>
                            </g:if>
                            <g:elseif test="${viewType=='map'}">
                                <g:render template="map" model="[posts:offers]"/>
                            </g:elseif>
                            <g:else>
                                <g:render template="table" model="[posts:offers]"/>
                            </g:else>

                        </div>
                    </div>

                </div>
                <div class="tab-pane fade" id="tab2">

                    <div class="row">
                        <div class="col-md-12">
                            <g:if test="${viewType=='gallery'}">
                                <g:render template="gallery" model="[posts:needs]"/>
                            </g:if>
                            <g:elseif test="${viewType=='map'}">
                                <g:render template="map" model="[posts:needs]"/>
                            </g:elseif>
                            <g:else>
                                <g:render template="table" model="[posts:needs]"/>
                            </g:else>


                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



</section>


</body>

</html>
