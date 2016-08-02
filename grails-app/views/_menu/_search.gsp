<li>
    <g:form controller="dashboard" action="search" method="post" class="navbar-form">
        <div class="input-group">
            <%--
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
            </span>
            --%><!-- /btn-group -->
            <input name="query" type="text" class="form-control" placeholder="${message(code: 'search.navbar.placeholder', default: 'I\'m looking for ...')}" value="${params.query}"/>
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
    </g:form>

</li>





