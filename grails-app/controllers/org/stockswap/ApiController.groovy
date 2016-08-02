package org.stockswap

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

/**
 * DashboardController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
//@Secured(["ROLE_USER","ROLE_ADMIN"])
class ApiController {


    def createPost() {
        println "create post " + params


        render ([message: "success"] as JSON)
    }





}
