//
//  Globals.swift
//  PatientApp
//
//  Created by Practica on 8/30/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

func localize(_ key:String!) -> String{
    if key == nil {
        return ""
    }
    return NSLocalizedString(key, comment: "")
}
