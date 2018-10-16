//
//  UserAdditionalModel.swift
//  PatientApp
//
//  Created by Practica on 9/14/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import Foundation
import ObjectMapper

class UserAdditionalModel: Mappable {
    
    var uniqueCodeId: String!
    var password: String! 
    var email: String!
    var phone: String!
    
    required init?(map: Map) {
        
    }
    
    init(){
        
    }
    
    func mapping(map: Map) {
        uniqueCodeId <- map["UniqueCodeId"]
        password <- map["Password"]
        email <- map["Email"]
        phone <- map["Phone"]
    }
    
    func setUniqueCodeID(unicode: String) {
        self.uniqueCodeId = unicode
    }
    
    func setPassword(password: String) {
        self.password = password
    }
    
    func setEmail(email: String){
        self.email = email
    }
    
    func setPhone(phone: String) {
        self.phone = phone
    }
    
    
}

