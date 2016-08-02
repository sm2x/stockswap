
<%@ page import="org.stockswap.Facility" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="custom" />
	<g:set var="entityName" value="${message(code: 'facility.label', default: 'Facility')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>

</head>

<body>

<section id="show-facility" class="first">

    <h1>${fieldValue(bean: facilityInstance, field: "name")}</h1>

	<table class="table">
		<tbody>

        <tr class="prop">
            <td valign="top" class="name"><g:message code="address.streetAddress1.label" default="Street address" /></td>

            <td valign="top" class="value">${fieldValue(bean: facilityInstance?.address, field: "streetAddress1")}</td>

        </tr>
        <tr class="prop">
            <td valign="top" class="name"><g:message code="address.streetAddress2.label" default="Street address 2" /></td>

            <td valign="top" class="value">${fieldValue(bean: facilityInstance?.address, field: "streetAddress2")}</td>

        </tr>
        <tr class="prop">
            <td valign="top" class="name"><g:message code="address.streetAddress3.label" default="Street address 3" /></td>

            <td valign="top" class="value">${fieldValue(bean: facilityInstance?.address, field: "streetAddress2")}</td>

        </tr>
        <tr class="prop">
            <td valign="top" class="name"><g:message code="address.townOrCity.label" default="Town/City" /></td>

            <td valign="top" class="value">${fieldValue(bean: facilityInstance?.address, field: "townOrCity")}</td>

        </tr>
        <tr class="prop">
            <td valign="top" class="name"><g:message code="address.stateOrProvince.label" default="State/Province" /></td>

            <td valign="top" class="value">${fieldValue(bean: facilityInstance?.address, field: "stateOrProvince")}</td>

        </tr>
        <tr class="prop">
            <td valign="top" class="name"><g:message code="address.postalCode.label" default="Postal Code" /></td>

            <td valign="top" class="value">${fieldValue(bean: facilityInstance?.address, field: "postalCode")}</td>

        </tr>
        <tr class="prop">
            <td valign="top" class="name"><g:message code="address.country.label" default="Country" /></td>

            <td valign="top" class="value">${fieldValue(bean: facilityInstance?.address, field: "country")}</td>

        </tr>
        <tr class="prop">
            <td valign="top" class="name"><g:message code="address.latitude.label" default="Latitude" /></td>

            <td valign="top" class="value">${fieldValue(bean: facilityInstance?.address, field: "latitude")}</td>

        </tr>
        <tr class="prop">
            <td valign="top" class="name"><g:message code="address.longitude.label" default="Longitude" /></td>

            <td valign="top" class="value">${fieldValue(bean: facilityInstance?.address, field: "longitude")}</td>

        </tr>


			<tr class="prop">
				<td valign="top" class="name"><g:message code="facility.dateCreated.label" default="Date Created" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${facilityInstance?.dateCreated}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="facility.lastUpdated.label" default="Last Updated" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${facilityInstance?.lastUpdated}" /></td>
				
			</tr>
		
		</tbody>
	</table>

    <g:link controller="dashboard" action="index" class="btn btn-primary">
        <g:message code="default.back.button" default="Back"/>
    </g:link>

</section>

</body>

</html>
