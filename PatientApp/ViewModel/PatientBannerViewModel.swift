//
//  PatientBannerViewModel.swift
//  PatientApp
//
//  Created by Practica on 8/28/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class PatientBannerViewModel: NSObject {

    private var patient: PatientBannerModel
    override init(){
        patient = PatientBannerModel()
    }
    
    func getEncounterID() -> Int {
        return self.patient.EncounterID
    }
    
    func getPatientID() -> Int {
        return self.patient.PatientID
    }
    
    func getPatient() -> PatientBannerModel{
        return patient
    }
   
    func getFirstName() -> String{
        return self.patient.FirstName
    }
    
    func getLastName() -> String{
        return self.patient.LastName
    }
    
    func getDepartamentName() -> String{
        return self.patient.DepartamentName
    }
    
    func getRoomNumber() -> Int {
        return self.patient.RoomNumber
    }
}
