//
//  DynamicCell.swift
//  TabBarCoordinatePattern
//
//  Created by krAyon on 01.05.19.
//  Copyright © 2019 DocDevs. All rights reserved.
//

import UIKit

class DynamicCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static var cellID: String {
        return String(describing: self)
    }
}
