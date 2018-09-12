//
//  RegisterServices.swift
//  PatientApp
//
//  Created by Practica on 9/12/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit
import Alamofire

class RegisterServices: NSObject {

    var details: UserAdditionalViewModel!
    let patientEncounter = "352"
    
    func getAccountInfo() {
        
        let urlString: String = getRegisterMetadataPath(encounterId: patientEncounter)
        Alamofire.request(urlString).responseJSON { response in
            
            guard response.result.error == nil else {
                
                print("error calling GET on /todos/1")
                print(response.result.error!)
                return
            }
            
            guard let json = response.result.value as? [String: Any] else {
                print("didn't get todo object as JSON from API")
                if let error = response.result.error {
                    print("Error: \(error)")
                }
                return
            }
            
            guard let todoTitle = json["FirstName"] as? String else {
                print("Could not get todo title from JSON")
                return
                
            }
            print("The title is: " + todoTitle)
        }
    }
    
    func getRegisterMetadataPath(encounterId: String) -> String{
        return String(format: "%@%@", serverAddress, GetPatientInfoForRegister, encounterId)
    }
}

