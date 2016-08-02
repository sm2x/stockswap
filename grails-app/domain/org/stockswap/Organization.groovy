package org.stockswap

class Organization extends Party {

    static hasMany = [facilities:Facility]

    static constraints = {
    }
}
