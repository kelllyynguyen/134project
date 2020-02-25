//
//  IntroViewController.swift
//  Assure
//
//  Created by Joshua Kuan on 2/20/20.
//  Copyright © 2020 Joshua Kuan. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var introNum = 0
    
    let labelTexts = ["Be aware of your surroundings", "Live Tracking + Check-Ins", "Connect. Heal. Learn from the Community", "Inform the community and report the incident"]
    let images: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)

        label.text = labelTexts[0]
    }

    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        introNum = 0
        let timer = Timer.scheduledTimer(withTimeInterval: 1.8, repeats: true) { (timer) in
            DispatchQueue.main.async {
                self.label.text = self.labelTexts[self.introNum]
            }
            self.introNum += 1
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
            timer.invalidate()
            let lvc = LoginViewController(nibName: "LoginViewController", bundle: nil)
            self.navigationController?.pushViewController(lvc, animated: true)
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
