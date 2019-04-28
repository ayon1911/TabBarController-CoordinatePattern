//
//  MoreCoordiantor.swift
//  TabBarCoordinatePattern
//
//  Created by krAyon on 28.04.19.
//  Copyright © 2019 DocDevs. All rights reserved.
//

import UIKit

class MoreCoordinator: Coordinator {
    var navigationController: CoordiantedNavigationController
    init(nav: CoordiantedNavigationController = CoordiantedNavigationController()) {
        self.navigationController = nav
        navigationController.coordinator = self
                
        let moreVC = MoreVC()
        moreVC.coordiantor = self
        navigationController.viewControllers = [moreVC]
    }
    
    @objc func handleAdd() {
        let firstVC = FirstVC()
        firstVC.coordiantor = self
        navigationController.pushViewController(firstVC, animated: true)
    }
    
    @objc func handleAction() {
        let secondVC = SecondVC()
        secondVC.coordiantor = self
        navigationController.pushViewController(secondVC, animated: true)
    }
}
