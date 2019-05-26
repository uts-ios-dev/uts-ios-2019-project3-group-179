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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let name = nameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        if isValid(email: email, name: name, password: password) {
            registerUser(email: email, name: name, password: password)
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    func registerUser(email: String, name: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password)
        { user, error in
            if error == nil{
                print("User created")
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = name
                changeRequest?.commitChanges { error in
                    if error == nil {
                        print("Name changed")
                    }
                }
            } else {
                print("Failed to register: ", error!.localizedDescription)
            }
            
            guard let userId = user?.user.uid else { return }
            let values = ["email": email, "name": name]
            
            Database.database().reference().child("users").child(userId).updateChildValues(values, withCompletionBlock: { error, ref in
                
                if error == nil {
                    print("Successfully registered)")
                } else {
                    print("Failed to update: ", error!.localizedDescription)
                    return
                }
            })
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    func isValid(email: String, name: String, password: String) -> Bool {
        if nameTextField.text == "" || emailTextField.text == "" || passwordTextField.text == "" {
            return false
        }
        return true
    }
    

}
