//
//  AccountModelInfo.swift
//  PatientApp
//
//  Created by Practica on 9/10/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class AccountModelInfo: NSObject {
    
    private var account: AccountInfoModel!

    override init(){
        account = AccountInfoModel()
    }
    func getFirstName() -> String{
        return account.FirstName
    }
    func getLastName() -> String{
        return account.LastName
    }
    func getDateOfBirth() -> String{
        return account.DateOfBirth
    }
    func getGender() -> String{
        return account.Gender
    }
    func getEmail() -> String{
        return account.Email
    }
    func getPhone() -> String{
        return account.Phone
    }
    
    func setFirstName(name: String){
        account.FirstName = name
    }
    func setLastName(name: String){
        account.LastName = name
    }
    func setDateOfBirth(date: String){
        account.DateOfBirth = date
    }
    func setGender(gender: String){
        account.Gender = gender
    }
    func setEmail(email: String){
        account.Email = email
    }
    func setPhone(phone: String){
        account.Phone = phone
    }
        
}
