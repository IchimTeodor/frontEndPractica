//
//  PatientBannerViewModel.swift
//  PatientApp
//
//  Created by Practica on 8/28/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class PatientBannerViewModel: NSObject {

    private var patient: PatientBannerModel!
    var patientBannerService: PatientBannerServices!
    
    var onBannerFinished: (() -> Void)?
    
    override init(){}
    
    func getPatientBanner(encounterID: Int) {
        patientBannerService = PatientBannerServices()
        patientBannerService.getBanner(encounterId: encounterID)
        patientBannerService.getBannerFinished = { [unowned self] (responseBanner) -> Void in
            self.patient = responseBanner
            self.onBannerFinished!()
        }
    }
    
    func getEncounterID() -> Int {
        return self.patient.encounterID
    }
    
    func getPatientID() -> Int {
        return self.patient.patientID
    }
   
    func getFirstName() -> String{
        return self.patient.firstName
    }
    
    func getLastName() -> String{
        return self.patient.lastName
    }
    
    func getDepartament() -> String{
        return self.patient.departament
    }
    
    func getRoomNumber() -> Int {
        return self.patient.roomNumber
    }
}
