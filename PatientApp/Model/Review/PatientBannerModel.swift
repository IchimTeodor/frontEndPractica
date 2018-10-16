//
//  PatientBannerMap.swift
//  PatientApp
//
//  Created by Practica on 9/13/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import Foundation
import ObjectMapper

class PatientBannerModel: Mappable {
    var patientID: Int!
    var encounterID: Int!
    var firstName: String!
    var lastName: String!
    var departament: String!
    var roomNumber: Int!
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        patientID <- map["PatientId"]
        encounterID <- map["EncounterId"]
        firstName <- map["FirstName"]
        lastName <- map["LastName"]
        departament <- map["DepartmentName"]
        roomNumber <- map["RoomNr"]
    }
}
