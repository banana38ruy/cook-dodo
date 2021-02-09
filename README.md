## アプリ名 cook do! do!

## 概要

- ログインしていないものでも作成されたレシピを閲覧できる
- ログインしているものはレシピを作成しそのレシピの作成者はレシピを削除することができる
- 料理のタイトル、料理の画像、材料と分量、調理イメージと調理方法を１ページでまとめて入力して保存することができる
- 材料と分量はチェックできるようになっており
 買い出しメモとして使うことができる

## 制作背景						

- よく料理をするのだけど買い出しをすると
つい必要な材料を買い忘れてしまうAさんをペルソナにして
材料の買い忘れをなくすという課題を解決するために
レシピとtodoが合体した材料のチェック機能がついたアプリが
あれば・・・という課題解決を目指しました

- 未ログイン

<a href="https://gyazo.com/b0d50ac10b8fe41a4e4391ee653489c6"><img src="https://i.gyazo.com/b0d50ac10b8fe41a4e4391ee653489c6.jpg" alt="Image from Gyazo" width="1438"/></a>

- ユーザー情報登録

<a href="https://gyazo.com/275993ecae658c93218df77ac273478c"><img src="https://i.gyazo.com/275993ecae658c93218df77ac273478c.png" alt="Image from Gyazo" width="1415"/></a>

- ログイン後レシピ閲覧

<a href="https://gyazo.com/ebad00b17ea74a812eeae7189375c1cb"><img src="https://i.gyazo.com/ebad00b17ea74a812eeae7189375c1cb.png" alt="Image from Gyazo" width="1420"/></a>

- 未ログイン者レシピ閲覧

<a href="https://gyazo.com/5f2e44f59f99690eed9c1d49d8f80912"><img src="https://i.gyazo.com/5f2e44f59f99690eed9c1d49d8f80912.gif" alt="Image from Gyazo" width="1000"/></a>

- 材料と分量の入力欄を増やし、調理法と調理イメージの入力欄を増やす

<a href="https://gyazo.com/d37048047ab245ad940a44ee9cd248ed"><img src="https://i.gyazo.com/d37048047ab245ad940a44ee9cd248ed.gif" alt="Image from Gyazo" width="1000"/></a>

- 料理名と料理のイメージ、材料と分量、調理法と調理イメージを１ページで入力しまとめて保存する

[![Image from Gyazo](https://i.gyazo.com/29e04d83b11d8011468d53a219153332.gif)](https://gyazo.com/29e04d83b11d8011468d53a219153332)

- 材料と分量をチェックできる

<a href="https://gyazo.com/6485d14e203c0cb11eae3fe3a0595582"><img src="https://i.gyazo.com/6485d14e203c0cb11eae3fe3a0595582.gif" alt="Image from Gyazo" width="1000"/></a>
					
## 実装予定の内容

- 編集機能
- ワンポイント作成機能
					
## DB設計	
## usersテーブル

| Column             | Type       | Options                  |
| ------------------ | ---------- | ------------------------ |
| email              | string     | null: false, unique:true |
| encrypted_password | string     | null: false              |
| nick_name          | string     | null: false              |

### Association

- has_many  :resipes

## recipesテーブル

| Column             | Type       | Options           |
| -------------------| ---------- | ------------------|
| title              | string     | null: false       |
| image              | string     | null: false       |
| user               | references | foreign_key: true |

### Association

- has_many  :materials
- belongs_to :user

## materialsテーブル

| Column             | Type       | Options           |
| -------------------| ---------- | ------------------|
| material_name      | string     | null: false       |
| quantity_name      | string     |                   |
| recipe             | references | foreign_key: true |

### Association

- has_many :cooks
- belongs_to :recipe

## cooksテーブル

| Column              | Type       | Options                        |
| --------------------|------------|--------------------------------|
| content             | text       | null: false                    |
| cooking_image       | string     | null: true                     |
| material            | references | null: false, foreign_key: true |

### Association

- belongs_to :material


