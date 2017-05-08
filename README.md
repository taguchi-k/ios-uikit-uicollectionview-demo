# UICollectionView

## 概要
UICollectionViewは、タイル上にビューを配置するときに利用します。

![UICollectionViewのイメージ](https://github.com/stv-ekushida/ios-uikit-uicollectionview-demo/wiki/images/cv.png)

## 関連クラス
UICollectionViewCell、UICollectionReusableView、UICollectionViewController、UIScrollView
　
## 実装手順
1. StoryboardにUICollectionViewを配置します。
2. UIViewControllerとStoryboardのUICollectionViewを関連けます。
3. UICollectionViewの上にUICollectionViewCellを配置します。
4. UICollectionViewCellを継承したサブクラスを定義します。
5. UICollectionViewCellのサブクラスととStoryboardのUICollectionViewCellを関連付けます。
6. StoryboardのUICollectionViewCellのCollection Reusable ViewのIdentifierにクラス名と同名のIDを付加します。
7. UIViewControllerにUICollectionViewDataSourceを実装します。
8. dataSourceにUIViewControllerのインスタンスを設定します。
9. UICollectionViewDataSourceを実装するに当たり必須のメソッドをオーバーライドします。

## セルのロングタップで編集メニューを表示する
1. shouldShowMenuForItemAt・canPerformAction・performAction 左記UICollectionViewDelegateプロトコルのメソッドを実装する
2. メニュー表示可能なセル（shouldShowMenuForItemAtで設定）をロングタップする
3. 編集メニューが表示される（canPerformActionで設定されたメニューが表示される）
4. 実行したい編集メニューをタップする
5. 選択した編集メニューが実行される（performActionで設定）
 
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
|shouldShowMenuForItemAt | 編集メニューを表示するかどうかをBoolで返す | - |
|canPerformAction | どのメニューを表示するのかをBoolを返して指定する | - |
|performAction | 各メニューがタップされたときの処理 | - |

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
