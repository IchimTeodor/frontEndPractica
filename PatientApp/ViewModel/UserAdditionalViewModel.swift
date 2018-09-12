//
//  UserAdditionalViewModel.swift
//  PatientApp
//
//  Created by Practica on 9/10/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class UserAdditionalViewModel: NSObject {
    
    private var patient: UserAdditionalModel
    
    override init(){
        patient = UserAdditionalModel()
    }
    
    func setUniqueCodeID(unicode: String) {
        patient.UniqueCodeID = unicode
    }
    
    func setPassword(password: String) {
        patient.Password = password
    }
    
    func setEmail(email: String){
        patient.Email = email
    }
    
    func setPhone(phone: String) {
        patient.Phone = phone
    }
}
