//
//  RegisterViewController.swift
//  
//
//  Created by Jacky Wang on 26/5/19.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
import MaterialComponents

class RegisterViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var progressBar: MDCActivityIndicator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Hide the error label initially
        progressBar.stopAnimating()
        //loginProgressBar.sizeToFit()
        progressBar.indicatorMode = .indeterminate
        progressBar.cycleColors = [.red]
        // Do any additional setup after loading the view.
        errorLabel.isHidden = true
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //End editing if we tap outside of controls and the keyboard
        self.view.endEditing(true)
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let name = nameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        errorLabel.text = ""
        if isValid(email: email, name: name, password: password) {
            progressBar.startAnimating()
            registerUser(email: email, name: name, password: password)
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //Register
    func registerUser(email: String, name: String, password: String) {
        let auth = FirebaseAuthManager()
        auth.register(email: email, name: name, password: password, controller: self)
    }
    
    //Check if name, email and password fields are entered properly and
    //also prints error message if not
    func isValid(email: String, name: String, password: String) -> Bool {
        if name == "" {
            Util.revealLabel(errorLabel)
            errorLabel.text = "Enter a name"
            //showToast(message: "Enter a name")
            return false
        }
        if !isValidEmail(email: email) {
            return false
        }
        if !isValidPassword(password: password) {
            return false
        }
        
        return true
    }
    
    /// Determines if the email address is valid
    ///
    /// - Parameter email: the email to determine it's validity
    /// - Returns: true if the email is valid otherwise falsa
    func isValidEmail(email: String) -> Bool {
        if email != "" && email.contains("@") && email.contains(".com") {
            return true
        }
        Util.revealLabel(errorLabel)
        errorLabel.text = "Enter a valid email address"
        return false
    }
    
    /// Determines if the password meets the valid requirements
    ///
    /// - Parameter password: the password to determine it's validity
    /// - Returns: true if the password is valid otherwise false
    func isValidPassword(password: String) -> Bool {
        if password != "" && password.count >= 6 {
            return true
        }
        Util.revealLabel(errorLabel)
        errorLabel.text = "Password must be longer than 6 characters"
        //showToast(message: "Password must be longer than 6 characters")
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case nameTextField:
            emailTextField.becomeFirstResponder()
        case emailTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            passwordTextField.resignFirstResponder()
        default:
            break
        }
        return true
    }
    
    func failedToRegister() {
        progressBar.stopAnimating()
        errorLabel.text = "Failed to register, please try again"
    }
}
