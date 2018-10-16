//
//  UserEncounterIdModel.swift
//  PatientApp
//
//  Created by Practica on 9/18/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import Foundation
import ObjectMapper

class UserEncounterIdModel: Mappable {
    var encounterId: Int!
    
    required init?(map: Map) {
    }
    
    private init(){
        
    }
    
    func mapping(map: Map) {
        encounterId <- map["EncounterId"]
    }
    
}
