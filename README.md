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

![cook dodoトップ画面](https://user-images.githubusercontent.com/75560910/107724252-c5d22300-6d26-11eb-99b2-771ab4481119.jpg)

- ユーザー情報登録

<img width="1415" alt="ユーザー登録画面" src="https://user-images.githubusercontent.com/75560910/107727359-7263d300-6d2e-11eb-93e6-a8a1afe9cccc.png">

- ログイン後レシピ閲覧

<img width="1420" alt="ログイン後詳細画面" src="https://user-images.githubusercontent.com/75560910/107727482-c66eb780-6d2e-11eb-9c93-8fbe8b4137b2.png">

- 未ログイン者レシピ閲覧

![5f2e44f59f99690eed9c1d49d8f80912](https://user-images.githubusercontent.com/75560910/107727621-03d34500-6d2f-11eb-9c13-ed33f1de17af.gif)

- 材料と分量の入力欄を増やし、調理法と調理イメージの入力欄を増やす

![d37048047ab245ad940a44ee9cd248ed](https://user-images.githubusercontent.com/75560910/107727778-75ab8e80-6d2f-11eb-9bc3-b723274fd3e9.gif)

- 料理名と料理のイメージ、材料と分量、調理法と調理イメージを１ページで入力しまとめて保存する

![d5dccf1837d39b63cac944a6d838e657](https://user-images.githubusercontent.com/75560910/107728269-f5862880-6d30-11eb-877d-00f79f2503aa.gif)

- 材料と分量をチェックできる

![6485d14e203c0cb11eae3fe3a0595582](https://user-images.githubusercontent.com/75560910/107727852-b2778580-6d2f-11eb-8f65-2bf7fcac4afc.gif)

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


