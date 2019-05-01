//
//  HomeVC.swift
//  TabBarCoordinatePattern
//
//  Created by krAyon on 27.04.19.
//  Copyright © 2019 DocDevs. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    var coordinator: HomeCoordiantor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        title = "HomeVC"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let vc = MyCollectionViewController(layout: UICollectionViewFlowLayout())
        vc.collectionView.translatesAutoresizingMaskIntoConstraints = false
//        vc.collectionView.isUserInteractionEnabled = true
        add(vc)
        NSLayoutConstraint.activate([
            vc.collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            vc.collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            vc.collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            vc.collectionView.heightAnchor.constraint(equalToConstant: 300)
            ])
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        remove()
    }
}

extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
//        child.view.frame = view.bounds
        child.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        child.didMove(toParent: self)
    }
    
    func remove() {
        guard parent != nil else { return }
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
//
//extension UIView {
//    var heightConst: NSLayoutConstraint? {
//        get {
//            return constraints.first(where: {$0.firstAttribute == .height && $0.relation == .equal})
//        }
//        set { setNeedsLayout() }
//    }
//}


