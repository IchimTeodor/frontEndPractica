//
//  PatientViewController.swift
//  PatientApp
//
//  Created by Practica on 8/21/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class PatientViewController: UIViewController {
    @IBOutlet weak var uniqueCodeId: UITextField!
    
    @IBOutlet weak var buttonNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uniqueCodeId.delegate = self
        buttonNext.isEnabled = false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func nextAction(_ sender: Any)
    {
       
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
extension PatientViewController : UITextFieldDelegate {
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        let text = uniqueCodeId.text
        if !(text?.isEmpty)!
        {
            buttonNext.isEnabled = true
        }
        else{
            buttonNext.isEnabled = false
        }
        return true
    }
}
