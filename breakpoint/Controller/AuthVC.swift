//
//  AuthVC.swift
//  breakpoint
//
//  Created by Yunus Emre ARSLAN on 14.03.2020.
//  Copyright © 2020 Yunus Emre ARSLAN. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signInWithEmailButtonPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(identifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    

    @IBAction func googleSignInButtonPressed(_ sender: Any) {
    }
    
    @IBAction func facebookSignInButtonPressed(_ sender: Any) {
    }
}
