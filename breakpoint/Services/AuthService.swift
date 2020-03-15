//
//  AuthService.swift
//  breakpoint
//
//  Created by Yunus Emre ARSLAN on 14.03.2020.
//  Copyright © 2020 Yunus Emre ARSLAN. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email: String,withPassword password: String,userCreationComplete: @escaping
        (_ status:Bool,_ error:Error?) ->()){
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            guard let user = user else{
                userCreationComplete(false,error)
                return
            }
            let userData = ["provider": user.user.providerID,"email": user.user.email]
            DataService.instance.createDBUser(uid: user.user.uid, userData: userData)
            userCreationComplete(true,nil)
        }
    }
    
    func loginUser(withEmail email: String,withPassword password: String,loginComplete: @escaping
        (_ status:Bool,_ error:Error?) ->()){
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if(error != nil){
                loginComplete(false,error)
                return
            }
            loginComplete(true,nil)
        }
    }
}
