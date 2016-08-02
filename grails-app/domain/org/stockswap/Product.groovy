package org.stockswap

/**
 * Product
 * A domain class describes the data object and it's mapping to the database
 */
class Product {

    String name
    String dosage
    String units
    Date expirationDate
    Integer quantity

	Date	dateCreated
	Date	lastUpdated
	
	static	hasMany		= [images:Image]

//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping
	
    static	mapping = {
    }
    
	static	constraints = {
        name(blank:false)
        dosage(blank:false)
        units(blank:false)
        expirationDate(nullable:true)
        quantity(nullable:false)

    }
	
	/*
	 * Methods of the Domain Class
	 */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${name} ${dosage} ${units}";
	}
}
