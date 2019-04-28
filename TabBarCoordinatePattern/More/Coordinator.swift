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
