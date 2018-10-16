//
//  LoginServices.swift
//  PatientApp
//
//  Created by Practica on 9/12/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import SwiftyJSON

class LoginServices {
    
    var getLogInFinished: ((UserEncounterIdModel) -> Void)?
    var getLogInFailed: (() -> Void)?
    
    func postLogIn(user: UserModel) {
        let parameters = user.toJSON()
        let urlString: String = postLogInMetadataPathValidate()
        
        Alamofire.request(urlString, method: .post, parameters: parameters, encoding: JSONEncoding.default).responseObject { [unowned self] (response: DataResponse<UserEncounterIdModel>) in
            if response.result.value != nil && response.response?.statusCode == 200 {
                self.getLogInFinished?(response.result.value!)
            }
            else{
                self.getLogInFailed!()
            }
        }
    }
    
    func postLogInMetadataPathValidate() -> String {
        return String(format: "%@%@", serverAddress, LogInPatient)
    }
}
