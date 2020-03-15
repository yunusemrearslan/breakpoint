//
//  LoginVC.swift
//  breakpoint
//
//  Created by Yunus Emre ARSLAN on 14.03.2020.
//  Copyright © 2020 Yunus Emre ARSLAN. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet var emailField: InSetTextField!
    @IBOutlet var passwordField: InSetTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }
    

   
    @IBAction func signInButtonPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, withPassword: passwordField.text!) { (success, LoginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: LoginError?.localizedDescription))
                }
                AuthService.instance.registerUser(withEmail: self.emailField.text!, withPassword: self.passwordField.text!) { (success, registrationError) in
                    if success {
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, withPassword: self.passwordField.text!) { (success, nil) in
                            print("Successfully registered!")
                            self.dismiss(animated: true, completion: nil)
                        }
                    } else {
                        print(String(describing: registrationError?.localizedDescription))
                    }
                }
            }
        }
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
extension LoginVC: UITextFieldDelegate { }
