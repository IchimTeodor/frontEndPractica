//
//  TabViewController.swift
//  PatientApp
//
//  Created by Practica on 8/29/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if(item.tag == 1) {
            NotificationCenter.default.post(name: Notification.Name("UserLoggedIn"), object: nil)
        }
        else if(item.tag == 2) {
            NotificationCenter.default.post(name: Notification.Name("UserLoggedIn"), object: nil)
        }
        
    }
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
