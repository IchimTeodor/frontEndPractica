//
//  SplitContainerViewController.swift
//  PatientApp
//
//  Created by Practica on 9/6/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class SplitContainerViewController: UIViewController {
    
    var index: IndexPath!
    
    @IBOutlet weak var splitContainer: SplitContainerView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        guard let locationController = childViewControllers.first as? LocationTableViewController else  {
//            fatalError("Check storyboard for missing LocationTableViewController")
//        }
       // splitView = childViewControllers.first as? MedicalSplitViewController
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationVC = segue.destination as! MedicalSplitViewController
//        let splitNC = destinationVC.childViewControllers.first as! SplitViewNavigationController
//        let masterTC = splitNC.childViewControllers.first as! MasterMedicalTableViewController
//        masterTC.index = self.index
        if segue.identifier == "SplitEmbed" {
            let destinationVC = segue.destination as! MedicalSplitViewController
            let splitNC = destinationVC.viewControllers[0] as! SplitViewNavigationController
            let masterVC = splitNC.viewControllers.first as! MasterMedicalTableViewController
            masterVC.index = index
        }
    }
}
