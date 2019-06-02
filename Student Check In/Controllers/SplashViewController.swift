//
//  SplashViewController.swift
//  Student Check In
//
//  Created by Jacky Wang on 2/6/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit
import Firebase

class SplashViewController: UIViewController {

    var auth: FirebaseAuthManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        auth = FirebaseAuthManager()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        authenticateIfSignedIn()
    }
    
    func authenticateIfSignedIn() {
        if Auth.auth().currentUser != nil {
            performSegue(withIdentifier: "TabViewSegue", sender: nil)
            print("Is signed in")
        } else {
            performSegue(withIdentifier: "LoginSegue", sender: nil)
            print("Not signed in")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoginSegue" {
            let _ = segue.destination as! LoginViewController
        } else if segue.identifier == "TabViewSegue" {
            let _ = segue.destination as! UITabBarController
        }
    }
}
