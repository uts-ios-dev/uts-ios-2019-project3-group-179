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
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TabBarSegue" {
            let _ = segue.destination
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //End editing if we tap outside of controls and the keyboard
        self.view.endEditing(true)
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        loginProgressBar.startAnimating()
        if isValid(email: email, password: password) {
            userLogin(email: email, password: password)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            passwordTextField.resignFirstResponder()
        default:
            break
        }
        return true
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

    /// Reveals the error label and makes the progressbar disappear
    func showErrorLabel() {
        loginProgressBar.stopAnimating()
        Util.revealLabel(errorLabel)
        errorLabel.text = "Invalid email or password"
    }
    
}
