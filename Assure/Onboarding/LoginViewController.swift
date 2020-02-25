//
//  LoginViewController.swift
//  Assure
//
//  Created by Joshua Kuan on 2/20/20.
//  Copyright © 2020 Joshua Kuan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }


    @IBAction func signUpButtonPress(_ sender: UIButton) {
        
    }
    
    @IBAction func loginButtonPress(_ sender: UIButton) {
        //let tbc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
        let createProfile = CreateProfileViewController(nibName: "CreateProfileViewController", bundle: nil)
        self.navigationController?.pushViewController(createProfile, animated: true)
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
