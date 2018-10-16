//
//  UserMap.swift
//  PatientApp
//
//  Created by Practica on 9/13/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import Foundation
import ObjectMapper

class UserModel: Mappable {
    
    var uniqueCodeID: String!
    var password: String!
    
    required init?(map: Map) {}
    init() {}
    
    func mapping(map: Map) {
        uniqueCodeID <- map["UniqueCodeID"]
        password <- map["Password"]
    }
    
    func setUniqueCodeId(uniqueCode: String) {
        self.uniqueCodeID = uniqueCode
    }
    
    func setPassword(password: String) {
        self.password = password
    }
}
