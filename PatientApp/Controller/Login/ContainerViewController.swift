//
//  ContainerViewController.swift
//  PatientApp
//
//  Created by Practica on 8/27/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, UITabBarDelegate {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var encounterIDLabel: UILabel!
    @IBOutlet weak var roomNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let patient = PatientBannerViewModel()
//        firstNameLabel.text = patient.getFirstName()
//        lastNameLabel.text = patient.getLastName()
//        encounterIDLabel.text = String(patient.getEncounterID())
//        roomNumberLabel.text = String(patient.getRoomNumber())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self,selector: #selector(observerMethod), name: NSNotification.Name(rawValue: "userLoggedIn"), object: nil)
    }
    
    @objc func observerMethod() {
        let patient = PatientBannerViewModel()
        lastNameLabel.text = patient.getLastName()
    }
}
