//
//  UserViewModel.swift
//  PatientApp
//
//  Created by Practica on 9/10/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class UserViewModel: NSObject {
    private var user: UserModel!
    
    override init(){
        user = UserModel()
    }
    
    func setUniqueCodeId(uniqueCode: String){
        user.UniqueCodeID = uniqueCode
    }
    
    func setPassword(password: String){
        user.Password = password
    }
}
