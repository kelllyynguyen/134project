//
//  OnboardingContactsViewController.swift
//  Assure
//
//  Created by Joshua Kuan on 2/22/20.
//  Copyright © 2020 Joshua Kuan. All rights reserved.
//

import UIKit

class OnboardingContactsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backButtonPress(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func manualContactPress(_ sender: UIButton) {
        let mvc = ContactAddViewController(nibName: "ContactAddViewController", bundle: nil)
        self.navigationController?.pushViewController(mvc, animated: true)
    }
    @IBAction func skipButtonPress(_ sender: UIButton) {
        let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        
        let tbc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
        window?.rootViewController = tbc
        window?.makeKeyAndVisible()
        self.navigationController?.popToRootViewController(animated: false)

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
