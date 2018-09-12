//
//  MedicalSplitViewController.swift
//  PatientApp
//
//  Created by Practica on 9/5/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class MedicalSplitViewController: UISplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredDisplayMode = .allVisible
        navigationController?.isNavigationBarHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
