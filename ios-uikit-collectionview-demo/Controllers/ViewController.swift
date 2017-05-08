//
//  ViewController.swift
//  ios-uikit-collectionview-demo
//
//  Created by Eiji Kushida on 2017/02/08.
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

    // MARk: - セルのロングタップで編集メニューを表示する

    /// 編集メニューを表示するかどうか
    func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {

        // rowが4のセルはメニューを表示しない
        if indexPath.row == 4 {
            return false
        }

        return true
    }

    /// どのメニューを表示するのかをBoolを返して指定する
    func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {

        // コピーとペーストを表示する
        if action == #selector(UIResponderStandardEditActions.copy(_:)) || action == #selector(UIResponderStandardEditActions.paste(_:)) {
            return true
        }

        return false
    }

    /// 各メニューがタップされたときの処理
    func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {

        if action == #selector(UIResponderStandardEditActions.copy(_:)) {
            print("コピーがタップされました indexPath: \(indexPath), sender: \(sender!)")
        } else if action == #selector(UIResponderStandardEditActions.paste(_:)) {
            print("ペーストがタップされました indexPath: \(indexPath), sender: \(sender!)")
        }
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
