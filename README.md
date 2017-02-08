# UICollectionView

## 概要
UICollectionViewは、タイル上にビューを配置するときに利用します。

![UICollectionViewのイメージ](https://github.com/stv-ekushida/ios-uikit-uicollectionview-demo/wiki/images/cv.png)

## 関連クラス
UICollectionViewCell、UICollectionReusableView、UICollectionViewController、UIScrollView

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|delegate | delegateを指定する <br>UICollectionViewDelegateを利用するため | collectionView.delegate = self |
|dataSource | dataSourceを指定する <br>UICollectionViewDataSource | collectionView.dataSource = self |

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|reloadData | 再読込する | collectionView.reloadData() |

### UICollectionViewDelegateプロトコルのメソッド

|メソッド名|説明|必須|
|---|---|---|
|didSelectItemAt | セルが選択されたときに呼び出される | - |

### UICollectionViewDataSourceプロトコルのメソッド

|メソッド名|説明|必須|
|---|---|---|
|numberOfSections | セクション数を返す | - |
|numberOfItemsInSection | セクションごとのセル数を返す | ◯ |
|viewForSupplementaryElementOfKind | ヘッダーまたは、フッターに値を設定する | - |
|cellForItemAt | セルに値を設定する | ◯ |

### UICollectionViewDelegateFlowLayoutプロトコルのメソッド

|メソッド名|説明|必須|
|---|---|---|
|collectionViewLayout | セルのサイズを設定する | - |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS6.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uicollectionview
https://developer.apple.com/reference/uikit/uicollectionviewcell
https://developer.apple.com/reference/uikit/uicollectionreusableView
