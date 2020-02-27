//
//  TabBarViewController.swift
//  Assure
//
//  Created by Joshua Kuan on 2/20/20.
//  Copyright © 2020 Joshua Kuan. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }

    func setup() {
        let liveTrackingVC = LiveTrackingInitialViewController(nibName: "LiveTrackingInitialViewController", bundle: nil)
        let liveTrackingNav = UINavigationController(rootViewController: liveTrackingVC)
        liveTrackingNav.navigationBar.prefersLargeTitles = true
        liveTrackingNav.setNavigationBarHidden(false, animated: false)
        liveTrackingVC.title = "Live Tracking"
        liveTrackingNav.tabBarItem.title = "Live Tracking"
        
        let communityVC = CommunityBoardViewController(nibName: "CommunityBoardViewController", bundle: nil)
        let communityNav = UINavigationController(rootViewController: communityVC)
        communityNav.navigationBar.prefersLargeTitles = true
        communityNav.setNavigationBarHidden(false, animated: false)
        communityVC.title = "Community Board"
        communityNav.tabBarItem.title = "Community Board"
        
        let incidentVC = IncidentsMainViewController(nibName: "IncidentsMainViewController", bundle: nil)
        let incidentNav = UINavigationController(rootViewController: incidentVC)
        incidentNav.navigationBar.prefersLargeTitles = true
        incidentNav.setNavigationBarHidden(false, animated: false)
        incidentVC.title = "Report an Incident"
        incidentNav.tabBarItem.title = "Incidents"
        self.viewControllers = [communityNav, liveTrackingNav, incidentNav]
        
        
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
