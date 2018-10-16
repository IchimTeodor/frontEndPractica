//
//  EncounterID.swift
//  PatientApp
//
//  Created by Practica on 9/17/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class SelectedPatient {
    static let shared = SelectedPatient()
    var id = 0
    var date: String!
    private init() {}
    
    func getDate() -> Date {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale!
        let date = dateFormatter.date(from: self.date)!

    }
}

