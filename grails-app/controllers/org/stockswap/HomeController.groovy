package org.stockswap
/**
 * HomeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class HomeController {

    def springSecurityService

    def index() {

        // If logged in, go to dashboard
        if(springSecurityService.principal) {
            redirect(controller:"dashboard")
        }
    }



}
