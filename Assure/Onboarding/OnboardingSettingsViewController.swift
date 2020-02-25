//
//  OnboardingSettingsViewController.swift
//  Assure
//
//  Created by Joshua Kuan on 2/22/20.
//  Copyright © 2020 Joshua Kuan. All rights reserved.
//

import UIKit

class OnboardingSettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func backButtonPress(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func continueButtonPress(_ sender: UIButton) {
        let ec = OnboardingContactsViewController(nibName: "OnboardingContactsViewController", bundle: nil)
        self.navigationController?.pushViewController(ec, animated: true)
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        switch(sender.tag) {
        case 0:
            // ask for location access
            break
        case 1:
            // ask for notification access
            break
        default:
            break
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
