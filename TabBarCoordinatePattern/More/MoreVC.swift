//
//  MoreVC.swift
//  TabBarCoordinatePattern
//
//  Created by krAyon on 27.04.19.
//  Copyright © 2019 DocDevs. All rights reserved.
//

import UIKit

class MoreVC: UIViewController {
    
    var coordiantor: MoreCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        
        title = "MoreVC"
        
        navigationItem.rightBarButtonItem = .init(barButtonSystemItem: .add, target: coordiantor.self, action: #selector(coordiantor!.handleAdd))
    }
}
