## アプリ名 cook do! do!
https://cook-dodo.herokuapp.com/

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

- 未ログイン時、レシピ閲覧

![69cd919fde22043a7efbee2f07e9b193](https://user-images.githubusercontent.com/75560910/109419912-2ba2f800-7a13-11eb-90cc-1b2eeed83175.gif)

- ユーザー情報登録

<img width="1423" alt="94e6dcf01a1909a1138176c6df6366cb" src="https://user-images.githubusercontent.com/75560910/109391664-8e38bd00-795b-11eb-8073-429bd850ddf5.png">


- ログイン後レシピ閲覧

<img width="1403" alt="755bb47f22a6feeec8107a7b8ae034cc" src="https://user-images.githubusercontent.com/75560910/109394000-0c9b5c00-7968-11eb-8ab7-5e51a2ddc2ad.png">

- 料理のイメージを選択後プレビューする
 
 ![a725e9d5b6eb3e2f3a284228e321eeb2](https://user-images.githubusercontent.com/75560910/109247982-482f0c80-7828-11eb-8adc-f10e4630a773.gif)

- 材料と分量の入力欄を増やし、調理法と調理イメージの入力欄を増やす

![6d6943709fa93f0523d3c9b3a3313e19](https://user-images.githubusercontent.com/75560910/109391236-719b8580-7959-11eb-84cc-8c2f95accc47.gif)

- 材料と分量の入力欄を増やし、調理法と調理イメージの入力欄を増やす(携帯端末表示)

![90864cb19361c493da781e27a39b34d3](https://user-images.githubusercontent.com/75560910/109391395-32b9ff80-795a-11eb-850b-e0fc0d0bad18.gif)


- 料理名と料理のイメージ、材料と分量、調理法と調理イメージを１ページで入力しまとめて保存する

![8fe8dcd8e4d94b6137f2f830df5317d8](https://user-images.githubusercontent.com/75560910/109392726-18375480-7961-11eb-8892-50c6122f5120.gif)

- 材料と分量をチェックできる

![3eabcc58590cc7cda7506dbe36f06cc8](https://user-images.githubusercontent.com/75560910/109392838-c04d1d80-7961-11eb-82dc-2f89d20679fe.gif)

![ddcb316d0e09eede0fd5d5f4edcf48a1](https://user-images.githubusercontent.com/75560910/109394250-65b7bf80-7969-11eb-90ad-711794557d7b.gif)

## 実装予定の内容

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
- has_many  :cooks
- belongs_to :user

## materialsテーブル

| Column             | Type       | Options           |
| -------------------| ---------- | ------------------|
| name               | string     | null: false       |
| quantity           | string     | null: false       |
| recipe             | references | foreign_key: true |

### Association

- belongs_to :recipe

## cooksテーブル

| Column              | Type       | Options                        |
| --------------------|------------|--------------------------------|
| content             | text       | null: false                    |
| cooking_image       | string     | null: true                     |
| recipe              | references | null: false, foreign_key: true |

### Association

- belongs_to :recipe


