//
//  HealthProfessionalsModel.swift
//  PatientApp
//
//  Created by Practica on 9/20/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit
import ObjectMapper

class HealthProfessionalsModel: Mappable {
    
    var id: Int!
    var photo: String!
    var title: String!
    var name: String!
    var type: String!
    var departament: String!
    
    required init?(map: Map) {
    }
    
    init(){
    }
    
    func mapping(map: Map) {
        id <- map["Id"]
        photo <- map["Photo"]
        title <- map["Title"]
        name <- map["Name"]
        type <- map["Type"]
        departament <- map["Department"]
    }
    
    


}
