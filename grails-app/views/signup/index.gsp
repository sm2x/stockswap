<html>

<head>
    <title><g:message code="default.signup.title"/></title>
    <meta name="layout" content="custom" />
    <content tag="subtitle">It's free!</content>

</head>

<body>


<g:hasErrors bean="${signupCommand}">
    <div class="alert alert-danger">
        <g:renderErrors bean="${signupCommand}" as="list" />
    </div>
</g:hasErrors>

<section id="additional">
    <div class="panel panel-default">

        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.signup.title"/> </h3>
        </div>
        <div class="panel-body">
            <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                <g:form controller="signup" action="save" class="form-horizontal" method="post" name="register_form" role="form" lpformnum="1" _lpchecked="1">
                    <div class="form-group">
                        <input class="form-control" name="title" id="title" type="text" value="${signupCommand.title}"
                               placeholder="${message(code: 'security.title.label', default: 'Title')}"  tabindex="1">
                    </div>
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="firstName" id="firstName" class="form-control input-md" required="required" value="${signupCommand.firstName}"
                                       placeholder="${message(code: 'security.firstname.label', default: 'First name')}" tabindex="2" >
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="lastName" id="lastName" class="form-control input-md" required="required" value="${signupCommand.lastName}"
                                       placeholder="${message(code: 'security.lastname.label', default: 'Last name')}" tabindex="3">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" id="email" class="form-control input-md" value="${signupCommand.email}"
                               placeholder="Email Address" required="required" tabindex="4">
                    </div>
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="password" name="password" id="password" class="form-control input-md"
                                       value="${signupCommand.password}"
                                       required="required" placeholder="Password" tabindex="5" >
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="password" name="confirmPassword" id="confirmPassword" class="form-control input-md"
                                       value="${signupCommand.confirmPassword}" required="required"
                                       placeholder="${message(code: 'security.password.confirm.label', default: 'Confirm')}" tabindex="6" >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input class="form-control" name="telephone" id="telephone" type="tel" value="${signupCommand.telephone}"
                               placeholder="${message(code: 'security.telephone.label', default: 'Telephone')}" tabindex="7">
                    </div>
                    <hr/>

                    <div class="form-group">
                        <input class="form-control" name="organization" id="organization" type="text" value="${signupCommand.organization}"
                               placeholder="${message(code: 'security.organization.label', default: 'Organization')}" tabindex="8">
                    </div>
                    <div class="form-group">
                        <input class="form-control" name="facilityName" id="facilityName" type="text" value="${signupCommand.facilityName}"
                               placeholder="${message(code: 'security.facilityName.label', default: 'Facility Name')}" tabindex="9">
                    </div>
                    <div class="form-group">
                        <input class="form-control" name="streetAddress1" id="streetAddress1" type="text" value="${signupCommand.streetAddress1}"
                               placeholder="${message(code: 'address.streetAddress1.label', default: 'Address 1')}" tabindex="10">
                    </div>
                    <div class="form-group">
                        <input class="form-control" name="streetAddress2" id="streetAddress2" type="text" value="${signupCommand.streetAddress2}"
                               placeholder="${message(code: 'address.streetAddress2.label', default: 'Address 2')}" tabindex="11">
                    </div>
                    <div class="row">
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="form-group">
                                <input class="form-control" name="cityOrTown" id="cityOrTown" type="text" value="${signupCommand.cityOrTown}"
                                       placeholder="${message(code: 'address.cityOrTown.label', default: 'City/Town')}" tabindex="12">
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="form-group">
                                <input class="form-control" name="stateOrProvince" id="stateOrProvince" type="text" value="${signupCommand.stateOrProvince}"
                                       placeholder="${message(code: 'address.stateOrProvince.label', default: 'State/Province')}" tabindex="13">
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="form-group">
                                <input class="form-control" name="postalCode" id="postalCode" type="text" value="${signupCommand.postalCode}"
                                       placeholder="${message(code: 'address.postalCode.label', default: 'Postal Code')}" tabindex="14">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <g:countrySelect name="country" id="country" class="form-control" value="${signupCommand.country}"
                                         placeholder="${message(code: 'address.country.label', default: 'Country')}" noSelection="['':'Country']" tabindex="15"/>
                    </div>

                    <div class="row">

                        <div class="form-group">
                            <div class="col-lg-12">

                                <div class="checkbox">
                                    <label for="agreement">
                                        <g:checkBox name="agreement" id="agreement" value="${true}" checked="${signupCommand.agreement}"/>

                                        ${message(code: 'security.agreement.label', default: 'I have read and agree with the Terms of Use.')}
                                        By clicking <strong class="label label-primary">Register</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a> set out by this site, including our Cookie Use.
                                    </label>
                                </div>
                            </div>
                        </div>

                    </div>

                    <hr class="colorgraph">
                    <div class="row">
                        <div class="col-xs-6 col-md-6"><input type="submit" value="Register" class="btn btn-primary btn-block btn-md" tabindex="7"></div>
                        <div class="col-xs-6 col-md-6"><a href="#" class="btn btn-success btn-block btn-md">Sign In</a></div>
                    </div>
                </g:form>
            </div>
        </div>


    </div>
</section>

</body>

</html>
