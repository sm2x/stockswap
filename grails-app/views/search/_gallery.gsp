<div class="row">
    <div class="col-md-12">

        <ul class="thumbnails list-inline list-unstyled">
            <g:each var="post" in="${posts}">
                <li class="col-md-4">
                    <div class="thumbnail">
                        <g:render template="post" model="[post:post]"/>
                    </div>
                </li>
            </g:each>
        </ul>

    </div>
</div>