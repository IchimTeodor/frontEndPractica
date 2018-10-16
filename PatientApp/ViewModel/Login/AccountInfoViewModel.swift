//
//  AccountInfoViewModel.swift
//  PatientApp
//
//  Created by Practica on 9/14/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class AccountInfoViewModel {
    
    private var account: AccountInfoModel!
    private var registerService: RegisterServices!
    
    var onDateUpdate: (() -> Void)?
    var validateFinished: ((Int) -> Void)?
    
    
    func getAccountInfo(uniqueCodeId: String){
        registerService = RegisterServices()
        registerService.getAccountInfo(uniqueCodeId: uniqueCodeId)
        registerService.getAccountInfoFinished = { [unowned self] (details: AccountInfoModel) -> Void in
            self.account = details
            self.onDateUpdate?()
        }
    }
    func validateAccountInfo(uniqueCodeId: String){
        registerService = RegisterServices()
        registerService.validateUnicodeId(unicodeId: uniqueCodeId)
        registerService.getStatusCode = { [unowned self] (status: Int!) -> Void in
            self.validateFinished!(status)
        }
    }
    func validateUniCodeId(uniCodeId: String){
        registerService = RegisterServices()
    }
    
    func getName() -> String {
        return account.firstName + " " + account.lastName
    }
    
    func getDateOfBirth() -> String {
        return account.dateOfBirth
    }
    
    func getPhoneNumber() -> String {
        if account.phone != nil {
            return account.phone!
        }else{
            return ""
        }
    }
    
    func getEmail() -> String {
        if account.email != nil{
            return account.email!
        }else{
            return ""
        }
    }
    
    func getGender() -> String {
        return account.gender
    }

}
