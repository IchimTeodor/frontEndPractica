//
//  MyprofileViewModel.swift
//  PatientApp
//
//  Created by Practica on 9/20/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class MyProfileViewModel {

    private var myProfileModel: MyProfileModel!
    var myProfileServices: MyProfileServices!
    
    var onMyProfileFinished: (() -> Void)?
    
    init(){}
    
    func getMyProfile() {
        myProfileServices = MyProfileServices()
        myProfileServices.getMyProfile()
        myProfileServices.getMyProfileFinished = { [unowned self] (response) -> Void in
            self.myProfileModel = response
            self.onMyProfileFinished!()
        }
    }
    
    func getName() -> String{
        return myProfileModel.firstName + " " + myProfileModel.lastName
    }
    func getDateOfBirth() -> String {
        return myProfileModel.dateOfBirth
    }
    func getDateOfHospitalization() -> String{
        return  myProfileModel.encounterDetails.dateOfHospitalization
    }
    func getAddress() -> String{
        return myProfileModel.adress
    }
    func getEmail() -> String{
        return myProfileModel.email
    }
    func getInsurance() -> Bool{
        return myProfileModel.isEnsured
    }
    func getBloodType() -> String{
        return myProfileModel.bloodType
    }
    func getDepartament() -> String{
        return myProfileModel.encounterDetails.departament
    }
    func getPhone() -> String{
        return myProfileModel.phone
    }
    func getRoomNumber() -> String {
        return myProfileModel.encounterDetails.room
    }
    //TODO: getters

}
