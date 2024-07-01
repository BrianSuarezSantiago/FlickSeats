//
//  CVFlowLayout_Onboarding.swift
//  FlickSeats
//
//  Created by Brian Suárez Santiago
//

import UIKit

class OnboardingFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        scrollDirection = .horizontal
        minimumInteritemSpacing = 0.0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepare() {
        super.prepare()
        guard let collectionView = collectionView else { return }
        itemSize = collectionView.bounds.size
    }
}
