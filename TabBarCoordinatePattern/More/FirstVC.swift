//
//  FirstVC.swift
//  TabBarCoordinatePattern
//
//  Created by krAyon on 28.04.19.
//  Copyright © 2019 DocDevs. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, CustomBackNavigationButton {
    
    var coordiantor: MoreCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        
        title = "First VC"
                
        navigationItem.rightBarButtonItem = .init(title: "Go To Second", style: .plain, target: coordiantor!.self, action: #selector(coordiantor?.handleAction))
        
        createBackNaviagtionButton(title: navigationController?.getPreviousViewController()!.title ?? "", target: self, action: #selector(handleBack), color: .blue)
    }
    
    @objc func handleBack() {
        navigationController?.navigationBar.barTintColor = nil
        navigationController?.popViewController(animated: true)
    }
 
}
