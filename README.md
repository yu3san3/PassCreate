# Dobermann

#### 複雑なパスワードを簡単に生成できるiOSアプリです。

## アプリ概要
#### コンセプト
- パスワードを簡単に生成する

複雑なパスワードをワンタップで生成することができます。

また、

- パスワードの文字数を変更する
- 使用する文字の種類(大文字`A`、小文字`a`、数字`1`、記号`@`)を変更する

など、自分好みに生成されるパスワードをカスタマイズできる機能も搭載しています。

## 画面イメージ
<img src="https://user-images.githubusercontent.com/125545184/223353386-67188876-fa15-4879-8aa4-f800826b0bd9.png" width="240px">
<img src="https://user-images.githubusercontent.com/125545184/223353510-58eddd86-1903-4003-b8ba-dfbb878be8d5.png" width="240px">
<img src="https://user-images.githubusercontent.com/125545184/223353639-9ff9e7fa-12c7-44e1-af25-e2ab374f8ec2.png" width="240px">
<img src="https://user-images.githubusercontent.com/125545184/223353758-556ee9e1-dbc9-4633-9b85-ee9d13211372.png" width="240px">
<img src="https://user-images.githubusercontent.com/125545184/223353894-1f65f16e-cd39-4fa2-b8e9-436a0e5115fa.png" width="240px">

## 開発の背景
昔は、どのサイトでも共通のパスワードを使っていました。  
しかしやがて、「共通パスワードはセキュリティ的に非常によろしくない」という問題意識を持ち始めました。

ちょうどその頃は、大学生になり、Swiftを用いたiOSアプリ開発を始めようと思い立った頃でした。  
そこで、「パスワード生成アプリ」という題材であれば、簡単すぎず、難しすぎることもないと思い、初めてのアプリとして製作することにしました。

### 開発期間
- 約2ヶ月

### 使用技術

- Swift
- UIKit

## 今後の展望
- パスワードに含めたくない文字列を指定する機能を追加したいです。
- UI/UXの部分はまだまだ洗練することができると考えています。

## 機能一覧
- パスワードを生成する
- 生成したパスワードの履歴を見る
- 生成されたパスワードをコピーする
- パスワードの文字数を変更する
- パスワードに使用する文字の種類(大文字`A`、小文字`a`、数字`1`、記号`@`)を変更する

# こだわったポイント

## ローカライズ

より多くの人にアプリを使ってもらえるように、ローカライズを行いました。*(対応言語：日本語・英語)*

## パスワードの文字数を設定する画面

パスワードの文字数をワンタップで変更できるように、簡易設定を設けました。  
また、簡易設定の値以外の文字数を指定したい場合に対応できるよう、Stepperで値を指定することができる機能も用意しました。

## パスワードをコピーした際の振動

パスワードをコピーした際に触覚フィードバックを用いることで、「コピーをした」ということが伝わりやすいように工夫しました。
