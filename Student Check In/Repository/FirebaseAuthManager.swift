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
    
    //Registers user into firebase authentication and also creates user profile
    //in database for storing of users data
    func register(email: String, name: String, password: String, controller: RegisterViewController) {
        //Creates a user account through firebase authentication 
        Auth.auth().createUser(withEmail: email, password: password)
        { user, error in
            if error == nil{
                print("User created")
            } else {
                print("Failed to register: ", error!.localizedDescription)
            }
            
            //Get created user's id and create user info to be put into database
            guard let userId = user?.user.uid else { return }
            let values = ["email": email, "name": name]
            
            //Put user values into firebase database under their user id
            self.ref.child("users").child(userId).updateChildValues(values,
                                                withCompletionBlock: { error, ref in
                if error == nil {
                    print("Successfully registered)")
                    //Once registered, sign user out so they are not logged in and
                    //go back to login screen
                    self.logout()
                    controller.dismiss(animated: false, completion: nil)
                } else {
                    print("Failed to update: ", error!.localizedDescription)
                    controller.failedToRegister()
                }
            })
        }
    }
    
    func login(email: String, password: String, controller: LoginViewController) {
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            if error == nil {
                print("Successfully logged in")
                controller.startSegue()
            } else {
                print(error!.localizedDescription)
                controller.showErrorLabel()
            }
        }
    }
    
    func logout() {
        do {
            try Auth.auth().signOut()
            print("Successfully signed out")
        } catch let logoutError as NSError {
            print("Error signing out: ", logoutError)
        }
    }
    
    func getUserId() -> String {
        if isSignedIn() {
            return Auth.auth().currentUser!.uid
        }
        return ""
    }
    
    //Sets the user's name as title of navigation bar in respective controller
    func setHomeNavTitle(controller: HomeViewController){
        ref.child("users").child(getUserId()).observeSingleEvent(of: .value, with: { (snapshot) in
            let value = snapshot.value as? NSDictionary
            let name = value?["name"] as? String ?? ""
            controller.navigationBar.topItem?.title = "\(name)'s Repository"
        })
    }
    
    func setTaskNavTitle(controller: TaskViewController){
        ref.child("users").child(getUserId()).observeSingleEvent(of: .value, with: { (snapshot) in
            let value = snapshot.value as? NSDictionary
            let name = value?["name"] as? String ?? ""
            controller.navigationBar.topItem?.title = "\(name)'s Repository"
        })
    }
    
    func setFileNavTitle(controller: FileViewController){
        ref.child("users").child(getUserId()).observeSingleEvent(of: .value, with: { (snapshot) in
            let value = snapshot.value as? NSDictionary
            let name = value?["name"] as? String ?? ""
            controller.navigationBar.topItem?.title = "\(name)'s Repository"
        })
    }
    
    //Check to see if user is signed in
    func isSignedIn() -> Bool {
        if Auth.auth().currentUser != nil {
            return true
        }
        return false
    }
}
