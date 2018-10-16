//
//  PatientBannerServices.swift
//  PatientApp
//
//  Created by Practica on 9/20/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class PatientBannerServices {
    
    var getBannerFinished: ((PatientBannerModel) -> Void)?
    
    func getBanner(encounterId: Int) {

        let urlString: String = postBannerMetadataPath(encounter: encounterId)
        
        Alamofire.request(urlString).responseObject { [unowned self] (response: DataResponse<PatientBannerModel>) in
            if response.result.value != nil {
                let details: PatientBannerModel = response.result.value!
                self.getBannerFinished!(details)
            }
        }
    }
    
    func postBannerMetadataPath(encounter: Int) -> String {
        return String(format: "%@%@%@", serverAddress, BannerUrl, String(encounter))
    }
}

