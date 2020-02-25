//
//  CreateProfileViewController.swift
//  Assure
//
//  Created by Joshua Kuan on 2/22/20.
//  Copyright © 2020 Joshua Kuan. All rights reserved.
//

import UIKit

class CreateProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backButtonPress(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func continueButtonPress(_ sender: UIButton) {
        let onboardingSettings = OnboardingSettingsViewController(nibName: "OnboardingSettingsViewController", bundle: nil)
        self.navigationController?.pushViewController(onboardingSettings, animated: true)
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
