//
//  SecondVC.swift
//  TabBarCoordinatePattern
//
//  Created by krAyon on 28.04.19.
//  Copyright © 2019 DocDevs. All rights reserved.
//

import UIKit

class SecondVC: UIViewController, CustomBackNavigationButton {    

    var coordiantor: MoreCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
        let title = navigationController?.getPreviousViewController()?.title
        createBackNaviagtionButton(title: title ?? "Nope", target: self, action: #selector(handleBack), color: .yellow)
    }
    
    @objc func handleBack() {
        navigationController?.navigationBar.barTintColor = .blue
        navigationController?.popViewController(animated: true)
    }
}

extension UINavigationController {
    func getPreviousViewController() -> UIViewController? {
        return viewControllers.count > 1 ? viewControllers[viewControllers.count - 2] : nil
    }
}

