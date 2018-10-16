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
    var loginService: LoginServices!
    
    var onLogInFinished: ((Int) -> Void)?
    var onLogInFailed: (() -> Void)?
    
    
    override init(){
    }
    
    func setUser(logDetails: UserModel) {
        self.user = logDetails
    }

    func postUser() {
        loginService = LoginServices()
        loginService.postLogIn(user: user)
        loginService.getLogInFinished = {[unowned self] (responseJSON) -> Void in
            self.onLogInFinished?(responseJSON.encounterId)
        }
        loginService.getLogInFailed = {[unowned self] () -> Void in
            self.onLogInFailed?()
    }
    }
}
