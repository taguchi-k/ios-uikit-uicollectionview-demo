//
//  ItemCollectionView.swift
//  ios-uikit-collectionview-demo
//
//  Created by Eiji Kushida on 2017/02/06.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

final class ItemCollectionView: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    static var identifier: String {
        get {
            return String(describing: self)
        }
    }
}
