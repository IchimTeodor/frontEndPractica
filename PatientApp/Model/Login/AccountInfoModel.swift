//
//  AccountInfoMap.swift
//  PatientApp
//
//  Created by Practica on 9/13/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import Foundation
import ObjectMapper

class AccountInfoModel: Mappable {
    
    var firstName: String!
    var lastName: String!
    var dateOfBirth: String!
    var gender: String!
    var phone: String?
    var email: String?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        firstName <- map["FirstName"]
        lastName <- map["LastName"]
        dateOfBirth <- map["DateOfBirth"]
        gender <- map["Gender"]
        phone <- map["Phone"]
        email <- map["Email"]
    }
    
}
