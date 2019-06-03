//
//  FirebaseAuthManager.swift
//  Student Check In
//
//  Created by Jacky Wang on 2/6/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation
import Firebase

class FirebaseAuthManager {
    
    var ref: DatabaseReference!
    
    init() {
        ref = Database.database().reference()
    }
    
    func register(email: String, name: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password)
        { user, error in
            if error == nil{
                print("User created")
            } else {
                print("Failed to register: ", error!.localizedDescription)
            }
            
            guard let userId = user?.user.uid else { return }
            let values = ["email": email, "name": name]
            
            self.ref.child("users").child(userId).updateChildValues(values,
                                                withCompletionBlock: { error, ref in
                
                if error == nil {
                    print("Successfully registered)")
                } else {
                    print("Failed to update: ", error!.localizedDescription)
                    return
                }
            })
        }
    }
    
    func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            if error == nil {
                print("Successfully logged in")
            } else {
                print(error!.localizedDescription)
            }
        }
    }
    
    func logout() -> Bool {
        do {
            try Auth.auth().signOut()
            print("Successfully signed out")
            return true
        } catch let logoutError as NSError {
            print("Error signing out: ", logoutError)
        }
        
        return false
    }
    
    func getUserId() -> String {
        if isSignedIn() {
            return Auth.auth().currentUser!.uid
        }
        return ""
    }
    
    func getUserFirstName() -> String {
        let manager = FirebaseRepoManager()
        return ""
    }
    
    func isSignedIn() -> Bool {
        if Auth.auth().currentUser != nil {
            return true
        }
        return false
    }
}
