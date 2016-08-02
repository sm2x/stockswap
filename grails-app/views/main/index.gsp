<!doctype html>
<html>
<head>
    <meta name="layout" content="custom"/>
    <title>Welcome to Stock Swap</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dashboard <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
    </content>
    <!--
    <header id="main-header" class="jumbotron">
        <h1>Welcome to StockSwap!</h1>
        <h2>Swap meds, avoid stockouts, reduce waste</h2>
        <p>StockSwap is a web & mobile platform that will allow health facilities to swap essential medicines in order to avoid stock outs and reduce stock wastages due to expiry and overstock.</p>
        <p>
            <a class="btn btn-primary btn-large">Call to action!</a>
        </p>
    </header>
    -->
    <div class="container-fluid">

        <!-- Heading Row -->
        <div class="row">
            <!-- /.col-md-8 -->
            <div class="col-md-4">
                <div class="well">
                    <p class="lead">
                        <b>StockSwap</b> is a web & mobile platform that allows health facilities to swap essential medicines in
                    order to avoid stock outs and reduce stock waste due to expiry and overstock.
                    </p>
                </div>
                <%--
                <g:link controller="signup" action="index" class="btn btn-primary" href="#">Signup</g:link>
                <g:link controller="auth" action="index" class="btn btn-default" href="#">Login</g:link>
                <g:link controller="dashboard" action="index" class="btn btn-default" href="#">Browse</g:link>
                --%>
            </div>
            <div class="col-md-8">
                <asset:image src="bg-1.jpg" class="img-responsive img-rounded"/>
            </div>
            <!-- /.col-md-4 -->
        </div>
        <!-- /.row -->
        <hr/>

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Make Offers</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe rem nisi accusamus error velit animi non ipsa placeat. Recusandae, suscipit, soluta quibusdam accusamus a veniam quaerat eveniet eligendi dolor consectetur.</p>
                        <a class="btn btn-default" href="#">Create an Offer</a>
                        <a class="btn btn-default" href="#">View Offers</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Donate Goods</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe rem nisi accusamus error velit animi non ipsa placeat. Recusandae, suscipit, soluta quibusdam accusamus a veniam quaerat eveniet eligendi dolor consectetur.</p>
                        <a class="btn btn-default" href="#">Donate a Good</a>
                        <a class="btn btn-default" href="#">View Donations</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Request Goods</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe rem nisi accusamus error velit animi non ipsa placeat. Recusandae, suscipit, soluta quibusdam accusamus a veniam quaerat eveniet eligendi dolor consectetur.</p>
                        <a class="btn btn-default" href="#">Create a Request</a>
                        <a class="btn btn-default" href="#">View Requests</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7 col-md-push-5">
                <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
            </div>
            <div class="col-md-5 col-md-pull-7">
                <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
            </div>
        </div>

        <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

    </div>
</body>
</html>