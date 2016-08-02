<%@ page import="org.stockswap.Post" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="custom" />
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>

</head>
<body>

<div class="container">
	<div class="row">

		<div class="col-md-3">
            <g:render template="../dashboard/sidebar"/>
		</div>


		<div class="col-md-9">
			<div class="row">
				<div class="col-md-4">

                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="false">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img class="img-responsive center-block" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Bottle_of_Ibuprofen_tablets_with_cap_removed_and_tablets_in_front.jpg/798px-Bottle_of_Ibuprofen_tablets_with_cap_removed_and_tablets_in_front.jpg" alt="Generic placeholder image">
                                <div class="carousel-caption">
                                    <h3>Ibuprofen 200mg</h3>
                                </div>
                            </div>
                            <div class="item">
                                <img class="img-responsive center-block" src="data:image/jpeg;base64,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" alt="Generic placeholder image">
                                <div class="carousel-caption">
                                    <h3>Ibuprofen 200mg</h3>
                                </div>
                            </div>
                            <div class="item">
                                <img class="img-responsive center-block" src="http://images.medscape.com/pi/features/drugdirectory/octupdate/PGO06040.jpg" alt="Generic placeholder image">
                                <div class="carousel-caption">
                                    <h3>Ibuprofen 200mg</h3>
                                </div>
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div> <!-- Carousel -->

				</div>

				<div class="col-md-8">
                    <h4>${post.title} <span class="label label-default">New</span></h4>
                    <h5>${post.product}</h5>
                    <p>${post.description}</p>
                    <p><label>Quantity Available</label>: ${post.quantity} ${post.unitOfMeasure}</p>

                    <form>
                        <button class="btn btn-primary" type="submit">Respond</button>
                    </form>

                </div>
			</div>
            <div class="row">
                <div class="col-md-12">
                    <p></p>
                    <ul class="nav nav-tabs" id="tabs">
                        <li class="active"><a href="#details" role="tab" data-toggle="tab">Details</a></li>
                        <li><a href="#postedBy" role="tab" data-toggle="tab">Posted By</a></li>
                        <li><a href="#reviews" role="tab" data-toggle="tab"><span class="badge badge-inverse">${0}</span> Reviews</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="details">
                            <p>
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                            </p>
                        </div>
                        <div class="tab-pane" id="postedBy">
                            <p>
                                Posted by ${post.facility?.name} on ${post.dateCreated}
                            </p>
                        </div>
                        <div class="tab-pane" id="reviews">
                            <p>
                                There are no reviews available at this time.
                            </p>
                        </div>
                    </div>

                </div>


            </div>

		</div>
	</div>
</div>


</body>
</html>

<%--
<%@ page import="org.stockswap.Post" %>
<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="custom" />
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-post" class="first">


    <h1>${post?.title}</h1>

    <table class="table">
        <tbody>

        <tr class="prop">
            <td valign="top" class="name"><g:message code="post.postType.label" default="Post Type" /></td>

            <td valign="top" class="value">${post?.postType?.encodeAsHTML()}</td>

        </tr>

        <tr class="prop">
            <td valign="top" class="name"><g:message code="post.product.label" default="Product" /></td>

            <td valign="top" class="value">${fieldValue(bean: post, field: "product")}</td>

        </tr>

        <tr class="prop">
            <td valign="top" class="name"><g:message code="post.dosage.label" default="Dosage" /></td>

            <td valign="top" class="value">${fieldValue(bean: post, field: "dosage")}</td>

        </tr>
        <tr class="prop">
            <td valign="top" class="name"><g:message code="post.quantity.label" default="Quantity" /></td>

            <td valign="top" class="value">${fieldValue(bean: post, field: "quantity")}</td>

        </tr>

        <tr class="prop">
            <td valign="top" class="name"><g:message code="post.unitOfMeasure.label" default="Unit Of Measure" /></td>

            <td valign="top" class="value">${fieldValue(bean: post, field: "unitOfMeasure")}</td>

        </tr>

        <tr class="prop">
            <td valign="top" class="name"><g:message code="post.expirationDate.label" default="Expiration Date" /></td>

            <td valign="top" class="value"><g:formatDate date="${post?.expirationDate}" format="MMM yyyy"/></td>

        </tr>


        <tr class="prop">
            <td valign="top" class="name"><g:message code="post.facility.label" default="Facility" /></td>

            <td valign="top" class="value"><g:link controller="facility" action="show" id="${post?.facility?.id}">${post?.facility?.encodeAsHTML()}</g:link></td>

        </tr>

        <tr class="prop">
            <td valign="top" class="name"><g:message code="post.dateCreated.label" default="Date Created" /></td>

            <td valign="top" class="value"><g:formatDate date="${post?.dateCreated}" /></td>

        </tr>

        <tr class="prop">
            <td valign="top" class="name"><g:message code="post.lastUpdated.label" default="Last Updated" /></td>

            <td valign="top" class="value"><g:formatDate date="${post?.lastUpdated}" /></td>

        </tr>

        </tbody>
    </table>

    <g:link controller="dashboard" action="index" class="btn btn-primary">
        <g:message code="default.back.button" default="Back"/>
    </g:link>


</section>

</body>

</html>
--%>