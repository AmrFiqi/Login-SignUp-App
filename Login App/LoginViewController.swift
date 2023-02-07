//
//  LoginViewController.swift
//  Login App
//
//  Created by Amr El-Fiqi on 06/02/2023.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        guard let emailText = email.text else {return}
        guard let passwordText = password.text else {return}
        
        Auth.auth().signIn(withEmail: emailText, password: passwordText) { firebaseResult, error  in
            if let e = error {
                print("error")
            }
            else{
                self.performSegue(withIdentifier: "goToNext", sender: self)
            }
        }

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
