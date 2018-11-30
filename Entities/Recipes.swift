//
//  Recetas.swift
//  RecipeFinder
//
//  Created by PABLO GUARDADO ALVAREZ on 29/11/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import Foundation
class Recipes{
    
    var name :String!
    var imgUrl: String!
    var dificulty:String!
    var des : String!
    var howTo:String!
    var time:Int!
    var lat:Double!
    var lon:Double!
    
    init(name:String, imgUrl:String, des:String, dificulty:String, howTo:String,time:Int, lat:Double, lon:Double) {
        self.name=name
        self.imgUrl=imgUrl
        self.des=des
        self.dificulty = dificulty
        self.howTo = howTo
        self.time = time
        self.lat = lat
        self.lon = lon
        
    }
    
}
