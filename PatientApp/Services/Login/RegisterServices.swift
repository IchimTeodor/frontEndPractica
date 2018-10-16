//
//  RegisterServices.swift
//  PatientApp
//
//  Created by Practica on 9/12/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import SwiftyJSON

class RegisterServices {
    
    var getAccountInfoFinished: ((AccountInfoModel) -> Void)?
    var getEncounterIdFinished: ((UserEncounterIdModel) -> Void)?
    var getStatusCode: ((Int) -> Void)?
    
    func validateUnicodeId(unicodeId: String) {
        let urlValidate: String = postRegisterMetadataPathValidate(encounterId: unicodeId)
        
        Alamofire.request(urlValidate).responseString{[unowned self] response in
            self.getStatusCode!((response.response?.statusCode)!)
        }
    }
    
    func getAccountInfo(uniqueCodeId: String) {
        let urlString: String = getRegisterMetadataPath(encounterId: uniqueCodeId)
        
        Alamofire.request(urlString).responseObject { [unowned self] (response: DataResponse<AccountInfoModel>) in
            if response.result.value != nil {
                let details: AccountInfoModel = response.result.value!
                self.getAccountInfoFinished?(details)
            }
        }
    }
    
    func postUserAdditional(userAdditional: UserAdditionalModel) {
        let parameters = userAdditional.toJSON()
        let urlString: String = postRegisterMetadataPath()
        
        Alamofire.request(urlString, method: .post, parameters: parameters, encoding: JSONEncoding.default).responseObject { [unowned self] (response: DataResponse<UserEncounterIdModel>) in
            if response.result.value != nil {
                self.getEncounterIdFinished?(response.result.value!)
            }
        }
    }
    
    func getRegisterMetadataPath(encounterId: String) -> String{
        return String(format: "%@%@%@", serverAddress, GetPatientInfoForRegister, encounterId)
    }
    
    func postRegisterMetadataPath() -> String{
        return String(format: "%@%@", serverAddress, RegisterPatient)
    }
    
    func postRegisterMetadataPathValidate(encounterId: String) -> String {
        return String(format: "%@%@%@", serverAddress, ValidatePatientForRegister, encounterId)
    }
}

