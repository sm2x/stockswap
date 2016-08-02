package org.stockswap

import grails.transaction.Transactional

@Transactional
class SignupService {

    void registerUser(SignupCommand signupCommand) {

        signupCommand.username = signupCommand.email


//        if (signup.validate() && user.save(flush:true)) {
//            flash.message = "You have successfully registered"
//            redirect(controller: "dashboard", action: "index")
//        }

        signupCommand.validate()

    }
}
