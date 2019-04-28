//
//  Coordinator.swift
//  TabBarCoordinatePattern
//
//  Created by krAyon on 27.04.19.
//  Copyright © 2019 DocDevs. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: CoordiantedNavigationController { get set }
}

class CoordiantedNavigationController: UINavigationController {
    weak var coordinator: Coordinator?
}

protocol CustomBackNavigationButton {
    func createBackNaviagtionButton(title: String, target: Any, action: Selector, color: UIColor)
}

extension CustomBackNavigationButton where Self: UIViewController {
    func createBackNaviagtionButton(title: String, target: Any, action: Selector, color: UIColor) {
        let backButton = UIBarButtonItem(title: title, style: .plain, target: target, action: action)
        self.navigationItem.leftBarButtonItem = backButton
        self.navigationItem.hidesBackButton = true
        self.navigationController?.navigationBar.barTintColor = color
    }
}
