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
import MaterialComponents

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginProgressBar: MDCActivityIndicator!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Hide the error label initially
        errorLabel.isHidden = true
        //Hide the progressbar initially
        loginProgressBar.stopAnimating()
        //loginProgressBar.sizeToFit()
        loginProgressBar.indicatorMode = .indeterminate
        loginProgressBar.cycleColors = [.red]
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        loginProgressBar.startAnimating()
        if isValid(email: email, password: password) {
            userLogin(email: email, password: password)
        }
    }
    
    //Check if fields are entered
    func isValid(email: String, password: String) -> Bool {
        if emailTextField.text == "" || passwordTextField.text == "" {
            Util.revealLabel(errorLabel)
            loginProgressBar.stopAnimating()
            errorLabel.text = "Please enter email and password"
            return false
        }
        return true
    }
    
    //Handle login using firebase authentication
    func userLogin(email: String, password: String) {
        let auth =  FirebaseAuthManager()
        auth.login(email: email, password: password, controller: self)
    }
    
    func startSegue() {
        self.performSegue(withIdentifier: "TabBarSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TabBarSegue" {
            let _ = segue.destination
        }
    }
    
    /// Reveals the error label and makes the progressbar disappear
    func showErrorLabel() {
        loginProgressBar.stopAnimating()
        Util.revealLabel(errorLabel)
        errorLabel.text = "Invalid email or password"
    }
    
    //Used to show error message
    /* func showToast(message : String) {
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
    } */
}
