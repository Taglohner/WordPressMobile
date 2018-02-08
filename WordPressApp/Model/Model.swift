//
//  Model.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 08/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import Foundation

struct Category {
    var name: String?
    var business: [Business]?
    
    static func sampleCategories() -> [Category] {
        
        var businesses = [Business]()
        
        /* --------- new category --------- */
        var sponseredRestaurantCategory = Category()
        sponseredRestaurantCategory.name = "Sponsered Restaurant"
        
        var ippudo = Business()
        ippudo.id = 1
        ippudo.name = "Ippudo"
        ippudo.category = "Restaurants"
        ippudo.imageName = ""
        ippudo.description = "Ippudo is a Japanese style restaurant founded"
        businesses.append(ippudo)
        
        /* --------- end category --------- */
        
        
        /* --------- new category --------- */
        
        var sponseredPubsCategory = Category()
        sponseredPubsCategory.business = businesses
        
        var PubsCategory = Category()
        PubsCategory.name = "Pubs"
        
        var sherlock = Business()
        sherlock.id = 2
        sherlock.name = "Sherlock Pub"
        sherlock.category = "Pubs"
        sherlock.imageName = ""
        sherlock.description = "Sherlock was founded in 1982"
        businesses.append(sherlock)
        
        return [sponseredRestaurantCategory, sponseredPubsCategory]
        
    }
}

struct Business {
    var id: Int?
    var name: String?
    var category: String?
    var imageName: String?
    var description: String?
}
