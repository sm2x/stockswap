package org.stockswap
/**
 * Post
 * A domain class describes the data object and it's mapping to the database
 */
class Post {

    /* Default (injected) attributes of GORM */
//	Long	id
//	Long	version

    //Product product
    String title
    String description

    PostType postType
    String product
    String dosage
    String unitOfMeasure
    Date expirationDate
    Integer quantity
    Facility facility

    /* Automatic timestamping of GORM */
	Date	dateCreated
	Date	lastUpdated

//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 

    static mapping = {
    }

    static	constraints = {
        title(nullable:false)
        description(nullable:true)
        postType(nullable:false)
        product(blank:false)
        dosage(blank:false)
        unitOfMeasure(blank:false)
        expirationDate(nullable:true)
        quantity(nullable:false)
        facility(nullable:false)
    }


    /*
     * Methods of the Domain Class
     */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
