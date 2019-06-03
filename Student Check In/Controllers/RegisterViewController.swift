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

class RegisterViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Hide the error label initially
        errorLabel.isHidden = true
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let name = nameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        if isValid(email: email, name: name, password: password) {
            registerUser(email: email, name: name, password: password)
        }
    }
    
    //Register
    func registerUser(email: String, name: String, password: String) {
        let auth = FirebaseAuthManager()
        auth.register(email: email, name: name, password: password)
        if auth.logout() {
            dismiss(animated: true, completion: nil)
        }
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
        //showToast(message: "Enter a valid email address")
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
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    //Used to show toast error message
    /*
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
    } */
    
}
