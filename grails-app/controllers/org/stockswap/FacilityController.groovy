package org.stockswap

import grails.plugin.springsecurity.annotation.Secured
import org.stockswap.Facility

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * FacilityController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Secured(["ROLE_USER"])
@Transactional(readOnly = true)
class FacilityController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    
	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Facility.list(params), model:[facilityInstanceCount: Facility.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Facility.list(params), model:[facilityInstanceCount: Facility.count()]
    }

    def show(Facility facilityInstance) {
        respond facilityInstance
    }

    def create() {
        respond new Facility(params)
    }

    @Transactional
    def save(Facility facilityInstance) {
        if (facilityInstance == null) {
            notFound()
            return
        }

        if (facilityInstance.hasErrors()) {
            respond facilityInstance.errors, view:'create'
            return
        }

        facilityInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'facilityInstance.label', default: 'Facility'), facilityInstance.id])
                redirect facilityInstance
            }
            '*' { respond facilityInstance, [status: CREATED] }
        }
    }

    def edit(Facility facilityInstance) {
        respond facilityInstance
    }

    @Transactional
    def update(Facility facilityInstance) {
        if (facilityInstance == null) {
            notFound()
            return
        }

        if (facilityInstance.hasErrors()) {
            respond facilityInstance.errors, view:'edit'
            return
        }

        facilityInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Facility.label', default: 'Facility'), facilityInstance.id])
                redirect facilityInstance
            }
            '*'{ respond facilityInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Facility facilityInstance) {

        if (facilityInstance == null) {
            notFound()
            return
        }

        facilityInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Facility.label', default: 'Facility'), facilityInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'facilityInstance.label', default: 'Facility'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
