//
//  ViewController.swift
//  ios-collectionview-section
//
//  Created by Eiji Kushida on 2017/02/06.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let dataSource = CollectionViewProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDataSource()
        setDelegate()
    }

    /// データソースを設定する
    private func setDataSource() {
        collectionView.dataSource = dataSource
    }

    /// デリゲードを設定する
    private func setDelegate() {
        collectionView.delegate = self
    }
}

//MARK:-UICollectionViewDelegate
extension ViewController: UICollectionViewDelegate {
    
    /// セルが選択されたときに呼び出される
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        print("indexPath: \(indexPath.section) - \(indexPath.row)")
    }
}

//MARK:-UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout {
     
    /// セルのサイズを設定する
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 128, height: 128)
    }
}
