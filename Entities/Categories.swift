//
//  Categories.swift
//  RecipeFinder
//
//  Created by PABLO GUARDADO ALVAREZ on 28/11/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import Foundation

class Categories {
    
    var name :String!
    var imgUrl: String!
    var recipes:[Recipes]!
    
    
    init(name:String, imgUrl:String,recipes:[Recipes]) {
        self.name=name
        self.imgUrl=imgUrl
        self.recipes = recipes
    }
    
}
