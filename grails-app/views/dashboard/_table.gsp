<div class="table-responsive">
    <table class="table table-bordered table-striped table-hover">
        <thead>
        <tr>
            <th>
                Title
            </th>
            <th>
                Facility
            </th>
            <th>
                Product
            </th>
            <th>
                Dosage
            </th>
            <th>
                Units
            </th>
            <th>
                Expiry
            </th>
            <th>
                Quantity
            </th>
            <th>
                Actions
            </th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${posts}" var="post">
            <tr>
                <td>
                    <g:link controller="post" action="show" id="${post.id}">
                        ${post.title}
                    </g:link>
                </td>
                <td>
                    <g:link controller="facility" action="show" id="${post.facility.id}">
                        ${post.facility.name}
                    </g:link>
                </td>
                <td>
                    ${post.product}
                </td>
                <td>
                    ${post.dosage}
                </td>
                <td>
                    ${post.unitOfMeasure}
                </td>
                <td>
                    <g:formatDate date="${post.expirationDate}" format="MMM yyyy"/>
                </td>
                <td>
                    ${post.quantity} ${post.unitOfMeasure}
                </td>
                <td>
                    <g:link controller="post" action="show" class="btn btn-primary" id="${post.id}">Show</g:link>
                </td>
            </tr>
        </g:each>
        <g:unless test="${posts}">
            <tr>
                <td colspan="8">
                    <div class="text-center text-muted text-info">No posts matching your search criteria </div>
                </td>
            </tr>
        </g:unless>
        </tbody>

    </table>
</div>

<nav>
    <ul class="pagination">
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
            </a>
        </li>
        <li class="page-item"><span>1</span></li>
        <li class="page-item"><a href="#">2</a></li>
        <li class="page-item"><a href="#">3</a></li>
        <li class="page-item"><a href="#">4</a></li>
        <li class="page-item"><a href="#">5</a></li>
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
            </a>
        </li>

    </ul>
</nav>
