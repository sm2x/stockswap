<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>2 column Google maps, foursquare (outer scroll)</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet"/>
    <!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
    <asset:stylesheet src="styles.css"/>

</head>
<body>
<!-- begin template -->
<div class="navbar navbar-custom navbar-fixed-top">
    <div class="navbar-header"><a class="navbar-brand" href="#"><asset:image src="logo-white.png" height="20"/></a>
        <a class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
    </div>
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>
            <li>&nbsp;</li>
        </ul>

        <form class="navbar-form">
            <div class="form-group" style="display:inline;">
                <div class="input-group">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-chevron-down"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="#">Any</a></li>
                            <li><a href="#">Offers</a></li>
                            <li><a href="#">Requests</a></li>
                            <li><a href="#">Stockouts</a></li>
                            <li><a href="#">Near Expiry</a></li>
                        </ul>
                    </div>
                    <input type="text" class="form-control" placeholder="What are searching for?">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span> </span>
                </div>
            </div>
        </form>
    </div>
</div>

<div id="map-canvas"></div>
<div class="container-fluid" id="main">
    <div class="row">
        <div class="col-xs-4" id="left">

            <h2>Needs</h2>

            <!-- item list -->

            <div class="panel panel-default">
                <div class="panel-heading"><a href=""><label>Need</label> Efavirenz 200mg</a>

                    <div class="btn-group">
                        <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="#">
                            Actions
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Flag</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Choice..</a></li>
                        </ul>
                    </div>

                </div>
                <div class="panel-body">

                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Medication</label>
                            <div class="col-sm-10 form-control-static">Efavirenz 200mg</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Quantity</label>
                            <div class="col-sm-10 form-control-static">1500 doses</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Date</label>
                            <div class="col-sm-10 form-control-static">8-Apr-2015</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Category</label>
                            <div class="col-sm-10 form-control-static">ARVs</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Facility</label>
                            <div class="col-sm-10 form-control-static">Cambridge Clinic</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10 form-control-static">04/08/2015 a case of out of stock treatment was received. Further information on the stock out could not be obtained after numerous attempts to contact the facility (Telephone rang to no avail). Case escalated to district pharmacist and manager. Next follow up date on e-mail 04/14/2015.</div>
                        </div>
                    </form>

                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading"><a href=""><label>Need</label> Pentaxine vaccine</a></div>
                <div class="panel-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Medication</label>
                            <div class="col-sm-10 form-control-static">Pentaxine vaccine</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Quantity</label>
                            <div class="col-sm-10 form-control-static">1000 doses</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Date</label>
                            <div class="col-sm-10 form-control-static">8-Apr-2015</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Category</label>
                            <div class="col-sm-10 form-control-static">Vaccine</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Facility</label>
                            <div class="col-sm-10 form-control-static">Cambridge Clinic</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10 form-control-static">04/08/2015 a case of out of stock treatment was received. Further information on the stock out could not be obtained after numerous attempts to contact the facility (Telephone rang to no avail). Case escalated to district pharmacist and manager. Next follow up date on e-mail 04/14/2015.</div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading"><a href=""><label>Need</label> Aluvia 200mg/50mg</a></div>

                <div class="panel-body">

                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Medication</label>
                            <div class="col-sm-10 form-control-static">Aluvia 200mg/50mg</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Quantity</label>
                            <div class="col-sm-10 form-control-static">13 doses</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Date</label>
                            <div class="col-sm-10 form-control-static">7-Apr-2015</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Category</label>
                            <div class="col-sm-10 form-control-static">ARVs</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Facility</label>
                            <div class="col-sm-10 form-control-static">Cambridge Clinic</div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10 form-control-static">04/07/2015 information on stock out case received. Stock out has been ongoing for 2 weeks. Last order for medication was placed on 03/23/2015, however, treatment was not delivered on 03/30/2015. Case escalated to district pharmacist and manager. Next follow up date 04/13/2015.</div>
                        </div>
                    </form>


                </div>
            </div>

            <!-- /item list -->


        </div>
        <div class="col-xs-8"><!--map-canvas will be postioned here--></div>

    </div>
</div>
<!-- end template -->

<!-- script references -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://maps.googleapis.com/maps/api/js?sensor=false&extension=.js&output=embed"></script>
<asset:javascript src="scripts.js"/>

</body>
</html>