
<g:form class="form-search" role="form" controller="dashboard" action="search">
<div class="">
    <div class="row">
        <div class="col-lg-12">
            <div class="input-group">
                <span class="input-group-btn">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">Type:</li>
                        <li><a href="#">Offers</a></li>
                        <li><a href="#">Donations</a></li>
                        <li><a href="#">Requests</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Category</li>
                        <li><a href="#">Analgesics</a></li>
                        <li><a href="#">Antacids</a></li>
                        <li><a href="#">Antianxiety</a></li>
                        <li><a href="#">Antiarrhythmics</a></li>
                        <li><a href="#">Antibacterials</a></li>
                        <li><a href="#">Antibiotics</a></li>
                        <li><a href="#">Anticoagulants and Thrombolytics</a></li>
                        <li><a href="#">...</a></li>
                        <!--http://www.fda.gov/Drugs/DevelopmentApprovalProcess/HowDrugsareDevelopedandApproved/ApprovalApplications/InvestigationalNewDrugINDApplication/ucm176533.htm-->
                    </ul>
                </span><!-- /btn-group -->
                <input type="text" class="form-control" aria-label="..." name="query" value="${params.query}" placeholder="Search offers, requests, and donations">
                <span class="input-group-btn">
                    <button class="btn btn-primary" type="button">Search</button>
                </span>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
    </div>
</div>
</g:form>
