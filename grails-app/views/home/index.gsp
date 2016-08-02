<html>

<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="custom" />
    <script type='text/javascript' src='https://www.google.com/jsapi'></script>
    <script type='text/javascript'>
        google.load('visualization', '1', {'packages': ['geomap']});
        google.setOnLoadCallback(drawMap);

        function drawMap() {
            var data = google.visualization.arrayToDataTable([
                ['City', 'Available items'],
                ['Nairobi', 200],
                ['Dar el Salam', 300],
                ['Tanzania', 400],
                ['Kigali', 400],
                ['Kampala', 500],
                ['Gaborone', 600],
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

<section id="intro" class="first">

    <div class="row">
        <div class="col-md-6">
            <h2>Welcome to the Stock Exchange</h2>
            <p>
                StockExchange is a mobile, web-based application that provides stock management capabilities and
                facilitates the collection and exchange of expiring and overstocked health commodities among government
                medical stores, clinics, hospitals, and other health facilities in low-income countries.
            </p>
            <button href="#RegisterModal" class="btn btn-lg btn-primary" role="button" data-toggle="modal" title="${message(code: 'security.register.label', default: 'Register')}">
                <i class="glyphicon glyphicon-step-forward"></i>
                Get Started!
            </button>


            <g:link class="btn btn-lg btn-info" controller="about" role="button">
                <i class="glyphicon glyphicon-info-sign"></i>
                More Info ...
            </g:link>
            <%--
            <g:link class="btn btn-large btn-primary" controller="nextSteps">Next Steps</g:link>
            --%>
        </div>
        <div class="col-md-6">
            <div id='map_canvas'></div>
        </div>
    </div>
</section>


<%--
	<section id="info">
		<div class="row">
	    	<div class="col-md-4">
		    	<div class="center">
					<img class="frontpageImage" src="${resource(plugin: 'kickstart', dir: 'images/frontpage',file: 'bs-docs-twitter-github.png')}" />
					<h3>Bootstrap 3.0.3</h3>
				</div>
				<p>Kickstart uses <a href ="http://twitter.github.com/bootstrap/">Bootstrap</a> to render the web pages. 
				Bootstrap is made by Mark Otto (<a href="http://twitter.com/mdo">@mdo</a>) and Billy Gates (<a href="http://twitter.com/fat">@fat</a>).
				Bootstrap is designed to help people of all skill levels as a complete kit or to start something more complex.
				</p>
			</div>
	    	<div class="col-md-4">
		    	<div class="center">
					<img class="frontpageImage" src="${resource(plugin: 'kickstart', dir: 'images/frontpage',file: 'browser_logos.png')}" />
					<h3>Browser support</h3>
				</div>
				<p>Bootstrap is tested and supported in major modern browsers like Chrome 14, Safari 5+, Opera 11, Internet Explorer 7, and Firefox 5.</p>
			</div>
	    	<div class="col-md-4">
		    	<div class="center">
					<img class="frontpageImage" src="${resource(plugin: 'kickstart', dir: 'images/frontpage',file: 'html5css3js8.png')}"/>
					<h3>Tech Foundation</h3>
				</div>
				<p>Bootstrap is based on elements of HTML 5, CSS 3, Javascript 1.8, and jQuery 1.7 with progressively enhanced 
				components to enable a responsive design of the website.
				Kickstart is built using Groovy 2.x and Java 7 integrated into the Grails 2.3.x framework. 
				</p>
			</div>
	    </div>
	</section>

	<section id="info2">
		<div class="row">
	    	<div class="col-md-4">
		    	<div class="center">
					<img class="" src="${resource(plugin: 'kickstart', dir: 'images/frontpage',file: 'Datepicker.png')}" />
					<h3>Datepicker</h3>
				</div>
				<p>Kickstart uses the <a href ="https://github.com/eternicode/bootstrap-datepicker">Datepicker for Bootstrap</a> by Stefan Petre and Andrew Rowls</p>
			</div>
	    	<div class="col-md-4">
		    	<div class="center">
					<img class="" src="${resource(plugin: 'kickstart', dir: 'images/frontpage',file: 'flags_preview_large.png')}" />
					<h3>Language Selector</h3>
				</div>
				<p>Kickstart contains a language selector that uses the <a href="http://www.famfamfam.com/lab/icons/flags/">FamFamFam flag icons</a> by Mark James.
				It automatically detects which languages are available and offers them in a dropdown menu.</p>
			</div>
	    	<div class="col-md-4">
		    	<div class="center">
					<img class="" height="100" src="${resource(plugin: 'kickstart', dir: 'images/frontpage',file: 'empty.png')}" />
					<h3>Other Features</h3>
				</div>
				<p>Kickstart contains several pages as starting points for the average website such as an About Page, Contact Page, 404, etc.</p>
			</div>
	    </div>
	</section>
--%>
</body>

</html>
