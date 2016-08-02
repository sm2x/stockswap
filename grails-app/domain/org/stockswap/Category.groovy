package org.stockswap

class Category {

    String name
    String parentCategory

    Integer sortOrder


    Date dateCreated
    Date lastUpdated

    static constraints = {
        name(nullable:false)
    }
}
