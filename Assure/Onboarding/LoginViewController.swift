//
//  LoginViewController.swift
//  Assure
//
//  Created by Joshua Kuan on 2/20/20.
//  Copyright © 2020 Joshua Kuan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        let tapGesture = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        self.view.addGestureRecognizer(tapGesture)
    }


    @IBAction func signUpButtonPress(_ sender: UIButton) {
        
    }
    
    @IBAction func loginButtonPress(_ sender: UIButton) {
        //let tbc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
        let createProfile = CreateProfileViewController(nibName: "CreateProfileViewController", bundle: nil)
        self.navigationController?.pushViewController(createProfile, animated: true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
