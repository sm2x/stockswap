package org.stockswap

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.Validateable

/**
 * SignupController
 *
 */
@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class SignupController {

    def signupService

    //static scaffold = true
	def index() {

        [signupCommand: new SignupCommand()]
    }

    def show() {

    }

    def save(SignupCommand signupCommand) {
        println "Saving user registration " + params

        signupService.registerUser(signupCommand)

        if (signupCommand.hasErrors()) {
            flash.message = "You have not registered yet"
            println signupCommand.errors
            render(view: "index", model: [signupCommand:signupCommand])
            //redirect(controller: 'signup', action: 'index')
            return
        }
        else {
            flash.message = "You have successfully registered"
            redirect(controller: "dashboard", action: "index")
        }

    }
}


class SignupCommand implements Validateable {

    String firstName
    String lastName
    String title
    String email
    String username
    String password
    String confirmPassword
    String telephone

    Boolean agreement

    String organization
    String facilityName
    String streetAddress1
    String streetAddress2
    String streetAddress3
    String cityOrTown
    String stateOrProvince
    String postalCode
    String county
    String country


    static constraints = {

        firstName blank: false
        lastName blank: false
        email blank: false
        username blank: false, unique: true
        password blank: false
        confirmPassword blank: false
        telephone nullable: true
        title nullable: true

        organization(nullable:false)
        facilityName(nullable:false)
        streetAddress1(nullable:true)
        streetAddress2(nullable:true)
        streetAddress3(nullable:true)
        cityOrTown(nullable:true)
        postalCode(nullable:true)
        stateOrProvince(nullable:true)
        county(nullable:true)
        country(nullable:false)

    }

}
