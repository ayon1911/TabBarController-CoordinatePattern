//
//  MainTabBarController.swift
//  TabBarCoordinatePattern
//
//  Created by krAyon on 27.04.19.
//  Copyright © 2019 DocDevs. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let home = HomeCoordiantor()
    let more = MoreCoordinator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            home.navigationController, more.navigationController
        ]
    }
}
