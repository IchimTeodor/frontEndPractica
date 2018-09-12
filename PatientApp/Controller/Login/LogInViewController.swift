//
//  LogInViewController.swift
//  PatientApp
//
//  Created by Practica on 8/21/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit
//import Alamofire

class LogInViewController: UIViewController {

    @IBOutlet weak var uniqueCodeId: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var rememberUser: UIButton!
    var remember: Bool!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        let ceva = RegisterServices()
        ceva.getAccountInfo()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func getUniqueCodeId () -> String{
        return uniqueCodeId.text!
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginAction(_ sender: Any) {
    }
    
    @IBAction func registerAction(_ sender: Any) {
    }
    @IBAction func rememberUserAction(_ sender: Any) {
        if remember == false {
            rememberUser.setImage(#imageLiteral(resourceName: "Checkedbox"), for: .normal )
            remember = true
        }
        else{
            rememberUser.setImage(#imageLiteral(resourceName: "Uncheckedbox"), for: .normal)
            remember = false
        }
    }
    
}
