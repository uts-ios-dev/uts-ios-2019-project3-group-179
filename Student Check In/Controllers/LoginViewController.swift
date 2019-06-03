//
//  LoginViewController.swift
//  Student Check In
//
//  Created by Jacky Wang on 26/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//
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
            showToast(message: "Please enter email and password")
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
                print("Failed to sign in: ", error!.localizedDescription)
                self.showToast(message: "Invalid email or password")
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TabBarSegue" {
            let _ = segue.destination
        }
    }
    
    //Used to show error message
    func showToast(message : String) {
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 170, y: self.view.frame.size.height-100, width: 350, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 10.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 3.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}
