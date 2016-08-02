package org.stockswap

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.stockswap.PostType
import org.stockswap.Post

/**
 * DashboardController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
//@Secured(["ROLE_USER","ROLE_ADMIN"])

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class DashboardController {


    def index() {
        def stats = [
                [city: 'Nairobi', country: 'Kenya', facilities: 23, items: 200],
                [city: 'Dar el Salam', country: 'Egypt', facilities: 12, items: 300],
                [city: 'All', country: 'Tanzania', facilities: 105, items: 400],
                [city: 'Kigali', country: 'Rwanda', facilities: 42, items: 700],
                [city: 'Kampala', country: 'Uganda', facilities: 24, items: 500],
                [city: 'Gaborone', country: 'Botswana', facilities: 14, items: 600],
                [city: 'Maputo', country: 'Mozambique', facilities: 19, items: 700]
        ]

        def viewType = params.viewType?:'gallery'
        def posts = Post.list()
        def needs = Post.findAllByPostType(PostType.NEED)
        def offers = Post.findAllByPostType(PostType.OFFER)


        [stats:stats,posts:posts,needs:needs,offers:offers,viewType:viewType]
    }

    def search() {

        Integer quantityValue = params.int('query')

        def posts = Post.withCriteria {
            or {
                ilike("title", "%" + params.query + "%")
                ilike("description", "%" + params.query + "%")
                ilike("product", "%" + params.query + "%")
                facility{
                    ilike('name', "%" + params.query + "%")
                }
                ilike("unitOfMeasure", "%" + params.query + "%")
                ilike("dosage", "%" + params.query + "%")
                if (quantityValue) {
                    eq("quantity", quantityValue)
                }
            }
            join 'facility'	//eager load author association
            order 'product', 'asc'
        }

        def offers = posts.findAll { it.postType == PostType.OFFER }
        def needs = posts.findAll { it.postType == PostType.NEED }

        render(view:"index", model:[posts:posts,offers:offers,needs:needs])
    }


    @Secured(["IS_AUTHENTICATED_ANONYMOUSLY"])
    def createPost(Post post) {
        //def post = request.JSON

        log.info "create post " + post
        println "Type: " + post.postType
        println "Offer: " + post.postType == PostType.OFFER
        println "Need: " + post.postType == PostType.NEED
        println "Title: " + post.title
        println "Description: " + post.description
        println "Product: " + post.product
        println "Dosage: " + post.dosage
        println "UOM: " + post.unitOfMeasure
        println "Expiry: " + post.expirationDate
        println "Quantity: " + post.quantity
        println "Facility: " + post.facility

//        def facility = Facility.findByName(post.facility)
//        if (!facility) {
//            facility = new Facility(name: )
//            facility.save(flush:true)
//        }
//        post.facility = facility
        post.facility.save(flush:true)

        if (!post.hasErrors() && post.save()) {
            render ([success: true, message: "New post has been saved to database"] as JSON)
        }
        else {
            render ([success:false, errors: post.errors] as JSON)
        }
    }


}
