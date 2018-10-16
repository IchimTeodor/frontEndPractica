//
//  UserAdditionalViewModel.swift
//  PatientApp
//
//  Created by Practica on 9/10/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit
import ObjectMapper

class UserAdditionalViewModel: NSObject {
    
    private var patient: UserAdditionalModel!
    private var registerService: RegisterServices!
    var encounterId: Int!
    var onDateUpdate: ((Int) -> Void)?

    init(userAdditional: UserAdditionalModel){
        patient = userAdditional
    }
    
    func postUserAdditional() {
        registerService = RegisterServices()
        registerService.postUserAdditional(userAdditional: patient)
        registerService.getEncounterIdFinished = {[unowned self] (responseJSON) -> Void in
            self.encounterId = responseJSON.encounterId
            self.onDateUpdate?(self.encounterId)
        }
    }

}
