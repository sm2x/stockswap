<div class="row">
    <div class="col-md-6">
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover">
                <tr>
                    <th>
                        City
                    </th>
                    <th>
                        Country
                    </th>
                    <th>
                        Facilities
                    </th>
                    <th></th>
                </tr>
                <g:each var="stat" in="${stats}">
                    <tr>
                        <td>${stat.city}</td>
                        <td>${stat.country}</td>
                        <td>${stat.facilities}</td>
                        <td><g:link class="btn btn-large btn-primary" controller="viewStock">View Stock</g:link></td>
                    </tr>
                </g:each>
            </table>
            <%--
            <ul class="pagination">
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
            --%>

        </div>
        <%--
        <div class="button-container">
            <a href="" class="btn btn-primary" role="btn">Signup</a>

        </div>
        --%>
    </div>
    <div class="col-md-6">
        <div id='map_canvas'></div>
    </div>
</div>