package org.stockswap

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional



/**
 * PostController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Secured(["IS_AUTHENTICATED_ANONYMOUSLY"])
@Transactional(readOnly = true)
class PostController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        redirect(action: "list")
    }


//    def list() {
//        redirect(controller:"dashboard", action: "index")
//    }

//	def index(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        respond Post.list(params), model:[postInstanceCount: Post.count()]
//    }
//
	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Post.list(params), model:[postInstanceCount: Post.count()]
    }

    def show(Post postInstance) {
        log.info "Show post: " + postInstance

        respond postInstance
    }

    def create() {
        Post postInstance = new Post(params)
        postInstance.description = "test description"
        respond ([postInstance:postInstance])
    }

    @Transactional
    def save(Post postInstance) {
        if (postInstance == null) {
            notFound()
            return
        }

        if (postInstance.hasErrors()) {
            respond postInstance.errors, view:'create'
            return
        }

        postInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'postInstance.label', default: 'Post'), postInstance.id])
                redirect postInstance
            }
            '*' { respond postInstance, [status: CREATED] }
        }
    }

    def edit(Post postInstance) {
        respond postInstance
    }

    @Transactional
    def update(Post postInstance) {
        if (postInstance == null) {
            notFound()
            return
        }

        if (postInstance.hasErrors()) {
            respond postInstance.errors, view:'edit'
            return
        }

        postInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Post.label', default: 'Post'), postInstance.id])
                redirect postInstance
            }
            '*'{ respond postInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Post postInstance) {

        if (postInstance == null) {
            notFound()
            return
        }

        postInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Post.label', default: 'Post'), postInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'postInstance.label', default: 'Post'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
