//
//  Extension+CollectionView.swift
//  FlickSeats
//
//  Created by Brian Suárez Santiago
//

import Foundation
import UIKit

extension UICollectionView {
    func setup(_ nibName: String, _ flowLayout: UICollectionViewFlowLayout) {
        self.register(UINib(nibName: nibName, bundle: nil), forCellWithReuseIdentifier: nibName)
        self.collectionViewLayout = flowLayout
    }
}
