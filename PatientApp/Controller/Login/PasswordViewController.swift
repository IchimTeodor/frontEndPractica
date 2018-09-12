//
//  PasswordViewController.swift
//  PatientApp
//
//  Created by Practica on 8/27/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        signUpButton.isEnabled = false;
        // Do any additional setup after loading the view.
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
    
    @IBAction func signUpAction(_ sender: Any) {
        if !(passwordTextField.text == confirmPasswordTextField.text)
        {
            let alert = UIAlertController(title: "Error Message", message: "Passwords don't match", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                
            }))
            self.present(alert, animated: true, completion: nil)
        }
            
        else{
            performSegue(withIdentifier: "TestSwipe", sender: self)
            
         
        }
    }
        
    }

extension PasswordViewController : UITextFieldDelegate {
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        let text = passwordTextField.text
        let text2 = confirmPasswordTextField.text
        if ((text?.isEmpty)!) && ((text2?.isEmpty)!)
        {
            signUpButton.isEnabled = false
        }
        else{
            signUpButton.isEnabled = true
        }
        return true
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


