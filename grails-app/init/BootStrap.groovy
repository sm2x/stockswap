import org.stockswap.Address
import org.stockswap.Category
import org.stockswap.Facility
import org.stockswap.Post
import org.stockswap.PostType
import org.stockswap.Product
import org.stockswap.Role
import org.stockswap.User
import org.stockswap.UserRole

class BootStrap {


    def grailsApplication
    def springSecurityService

    def init = { servletContext ->

        def superuserRole = Role.findByAuthority("ROLE_SUPERUSER") ?: new Role(authority: "ROLE_SUPERUSER").save(flush: true)
        def userRole = Role.findByAuthority("ROLE_USER") ?: new Role(authority: "ROLE_USER").save(flush: true)
        def adminRole = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: "ROLE_ADMIN").save(flush: true)

        def admin = User.findByUsername("admin")
        if (!admin) {
            admin = new User(username: "admin", password: "password", firstName: "Mister", lastName: "Manager", email: "admin@stockswap.org").save(failOnError:true);
        }
        if (!admin.authorities.contains(adminRole)) { UserRole.create(admin, adminRole, true) }

        def jmiranda = User.findByUsername("jmiranda")
        if (!jmiranda) {
            jmiranda = new User(username: "jmiranda", password: "password", firstName: "Justin", lastName: "Miranda", email: "justin@stockswap.org").save(failOnError:true);
        }
        if (!jmiranda.authorities.contains(userRole)) { UserRole.create(jmiranda, userRole, true) }

        //UserRole.create user, adminRole

        UserRole.withSession {
            it.flush()
            it.clear()
        }

        assert User.count() == 2
        assert Role.count() == 3
        assert UserRole.count() == 2


        // Facilities

        def address1 = new Address(streetAddress1:"55 Fruit St", townOrCity: "Boston", stateOrProvince: "Massachusetts", postalCode: "02114", country: "United States", latitude: 42.3626483, longitude: -71.069045).save(failOnError: true)
        def address2 = new Address(streetAddress1:"300 Longwood Avenue", townOrCity: "Boston", stateOrProvince: "Massachusetts", postalCode: "02115", country: "United States", latitude: 42.3372737, longitude: -71.1057043).save(failOnError: true)
        def address3 = new Address(streetAddress1:"75 Francis St", townOrCity: "Boston", stateOrProvince: "Massachusetts", postalCode: "02114", country: "United States", latitude: 42.3430347, longitude: -71.1189754).save(failOnError: true)
        def address4 = new Address(streetAddress1:"300 Brookline Ave", townOrCity: "Boston", stateOrProvince: "Massachusetts", postalCode: "02215", country: "United States", latitude: 42.3449219, longitude: -71.110891).save(failOnError: true)
        def address5 = new Address(streetAddress1:"840 Harrison Ave", townOrCity: "Boston", stateOrProvince: "Massachusetts", postalCode: "02118", country: "United States", latitude: 42.3553248, longitude: -71.0950123).save(failOnError: true)

        assert Address.count() == 5

        def facilityA = new Facility(name: "Mass General Hospital", address: address1).save(failOnError: true)
        def facilityB = new Facility(name: "Boston Children's", address: address2).save(failOnError: true)
        def facilityC = new Facility(name: "Brigham & Woman's", address: address3).save(failOnError: true)
        def facilityD = new Facility(name: "Beth Israel Deaconess Medical Center", address: address4).save(failOnError: true)
        def facilityE = new Facility(name: "Boston Medical Center", address: address5).save(failOnError: true)

        assert Facility.count() == 5

//        new Product(name: "acetylsalicylic acid").save(failOnError: true)
//        new Product(name: "ibpuprofen").save(failOnError: true)
//        new Product(name: "paracetamol").save(failOnError: true)
//        new Product(name: "codeine").save(failOnError: true)
//        new Product(name: "morphine").save(failOnError: true)
//        new Product(name: "ketamine").save(failOnError: true)
//        new Product(name: "loratadine").save(failOnError: true)
//
//        assert Product.count() == 7

        // Need posts
        new Post(title: "Need ibuprofen", product: "ibuprofen", postType: PostType.NEED, quantity: 1000, dosage: "200mg", unitOfMeasure: "tablet", facility: facilityA).save(failOnError: true)
        new Post(title: "Stockout!!! Help!", product: "ibuprofen", postType: PostType.NEED, quantity: 100, dosage: "200mg", unitOfMeasure: "tablet", facility: facilityA).save(failOnError: true)
        new Post(title: "We need stuff", product: "ibuprofen", postType: PostType.NEED, quantity: 400, dosage: "200mg", unitOfMeasure: "tablet", facility: facilityA).save(failOnError: true)
        new Post(title: "Needed: Ibuprofen 200mg tablet x 700", product: "ibuprofen", postType: PostType.NEED, quantity: 700, dosage: "200mg", unitOfMeasure: "tablet", facility: facilityA).save(failOnError: true)
        new Post(title: "Need ibuprofen", product: "ibuprofen", postType: PostType.NEED, quantity: 100, dosage: "200mg", unitOfMeasure: "tablet", facility: facilityA).save(failOnError: true)

        // Offer posts
        new Post(title: "Ibuprofen available!", product: "ibuprofen", postType: PostType.OFFER, quantity: 100, dosage: "200mg", unitOfMeasure: "tablet", expirationDate: new Date() + 90, facility: facilityB).save(failOnError: true)
        new Post(title: "Expiring ibuprofen", product: "ibuprofen", postType: PostType.OFFER, quantity: 900, dosage: "200mg", unitOfMeasure: "tablet", expirationDate: new Date() + 100, facility: facilityC).save(failOnError: true)
        new Post(title: "Need ibuprofen?  We have extra, willing to barter ...", product: "ibuprofen", postType: PostType.OFFER, quantity: 900, dosage: "200mg", unitOfMeasure: "tablet", expirationDate: new Date() + 300, facility: facilityD).save(failOnError: true)
        new Post(title: "You ... you gots what I need", description: "but you say he's just a friend.", product: "ibuprofen", postType: PostType.OFFER, quantity: 900, dosage: "200mg", unitOfMeasure: "tablet", expirationDate: new Date() + 30, facility: facilityD).save(failOnError: true)
        new Post(title: "Offer for drugs", product: "ibuprofen", postType: PostType.OFFER, quantity: 1000, dosage: "200mg", unitOfMeasure: "tablet", expirationDate: new Date() + 150, facility: facilityD).save(failOnError: true)

        assert Post.count() == 10

        new Category(name: 'Affecting Water & Electrolytes').save()
        new Category(name: 'Analgesic & Anesthesia').save()
        new Category(name: 'Anthelmintics & Antiparasitics').save()
        new Category(name: 'Antibiotic').save()
        new Category(name: 'Antidotes & Emetics').save()
        new Category(name: 'Antifungal').save()
        new Category(name: 'Antimalarial').save()
        new Category(name: 'Antineoplastic/Chemo').save()
        new Category(name: 'Tuberculosis (TB)').save()
        new Category(name: 'Antiviral').save()
        new Category(name: 'Autonomic Nervous System').save()
        new Category(name: 'Cardiovascular').save()
        new Category(name: 'Contrast Media').save()
        new Category(name: 'Dermatology').save()
        new Category(name: 'Gastrointestinal').save()
        new Category(name: 'Hematologic').save()
        new Category(name: 'Hormones & Hormone Antagonists').save()
        new Category(name: 'Immunomodulating').save()
        new Category(name: 'NSAIDs & Other Central Nervous System').save()
        new Category(name: 'Nutrition').save()
        new Category(name: 'Other Anti Infective').save()
        new Category(name: 'Psychiatric & Antiepileptic').save()
        new Category(name: 'Respiratory & Antihistamine').save()
        new Category(name: 'Vaccines Antigens & Toxoids').save()
        new Category(name: 'Opthalmic').save()
        new Category(name: 'OB/GYN').save()
        new Category(name: 'Ophthalmic').save()
        new Category(name: 'Tuberculosis(TB)').save()
        new Category(name: 'Respiratory').save()

        assert Post.count() == 29



        Long startupDateInMillis = grailsApplication.mainContext.startupDate
        Date startupDate = new Date(startupDateInMillis)
        grailsApplication.metadata.put('app.startupDate', startupDate)

    }
    def destroy = {
    }
}
