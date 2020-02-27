//
//  IncidentsMainViewController.swift
//  Assure
//
//  Created by Joshua Kuan on 2/22/20.
//  Copyright © 2020 Joshua Kuan. All rights reserved.
//

import UIKit

class IncidentsMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func createNewReportPress(_ sender: UIButton) {
        let createNewReport = CreateNewReportViewController(nibName: "CreateNewReportViewController", bundle: nil)
        self.navigationController?.pushViewController(createNewReport, animated: true)
    }
    

    @IBAction func createFromLoggedIncidentPress(_ sender: UIButton) {
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
