package org.stockswap

/**
 * Address
 * A domain class describes the data object and it's mapping to the database
 */
class Address {

    String streetAddress1
    String streetAddress2
    String streetAddress3
    String townOrCity
    String stateOrProvince
    String postalCode
    String county
    String country

    Double latitude
    Double longitude

	Date	dateCreated
	Date	lastUpdated

//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 

    static mapping = {
    }

    static constraints = {
        streetAddress1(nullable:true)
        streetAddress2(nullable:true)
        streetAddress3(nullable:true)
        townOrCity(nullable:true)
        postalCode(nullable:true)
        stateOrProvince(nullable:true)
        county(nullable:true)
        country(nullable:false)
        latitude(nullable:true)
        longitude(nullable:true)

    }

    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${streetAddress1}";
	}
}
