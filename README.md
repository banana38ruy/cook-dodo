## アプリ名 cook do! do!

## 概要

- ログインしていないものでも作成されたレシピを閲覧できる
- ログインしているものはレシピを作成し編集削除することができる
- 料理のタイトル、料理の画像、材料と分量、調理イメージと調理方法を１ページでまとめて入力して保存することができる
- 材料と分量はチェックできるようになっており
 買い出しメモとして使うことができる

## 制作背景						
 						
・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)						
⇒できている範囲で貼り付けましょう。						
・実装予定の内容						
					



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


[![Image from Gyazo](https://i.gyazo.com/29e04d83b11d8011468d53a219153332.gif)](https://gyazo.com/29e04d83b11d8011468d53a219153332)