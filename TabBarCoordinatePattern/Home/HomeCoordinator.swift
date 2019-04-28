//
//  HomeCoordinator.swift
//  TabBarCoordinatePattern
//
//  Created by krAyon on 28.04.19.
//  Copyright © 2019 DocDevs. All rights reserved.
//

import UIKit

class HomeCoordiantor: Coordinator {
    
    var navigationController: CoordiantedNavigationController
    
    init(nav: CoordiantedNavigationController = CoordiantedNavigationController()) {
        self.navigationController = nav
        navigationController.coordinator = self
        
        let vc = HomeVC()
        vc.coordinator = self
        
        navigationController.viewControllers = [vc]
    }
    
}
