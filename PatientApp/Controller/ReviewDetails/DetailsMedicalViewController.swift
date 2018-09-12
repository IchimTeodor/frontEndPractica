//
//  TableDetailsViewController.swift
//  PatientApp
//
//  Created by Practica on 9/5/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class DetailsMedicalViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftNavController = self.splitViewController?.viewControllers.first as? UINavigationController
        let masterViewController = leftNavController?.topViewController as? MasterMedicalTableViewController
        masterViewController?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension DetailsMedicalViewController: MedicalSelectionDelegate {
    
    func staffSelected(name: String) {
        testLabel.text = name
        // facut requestul pt get details info
        // refresh content
    }
}
