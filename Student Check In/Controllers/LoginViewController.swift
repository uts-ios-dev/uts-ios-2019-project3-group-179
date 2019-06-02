//
//  LoginViewController.swift
//  Student Check In
//
//  Created by Jacky Wang on 26/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        if isValid(email: email, password: password) {
            userLogin(email: email, password: password)
        }
    }
    
    func isValid(email: String, password: String) -> Bool {
        if emailTextField.text == "" || passwordTextField.text == "" {
            return false
        }
        return true
    }
    
    func userLogin(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            if error == nil {
                self.performSegue(withIdentifier: "TabBarSegue", sender: nil)
                print("Successfully logged in")
            } else {
                print("Failed to sign in: ")
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TabBarSegue" {
            let _ = segue.destination
        }
    }
}
