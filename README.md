## usersテーブル

| Column             | Type       | Options                  |
| ------------------ | ---------- | ------------------------ |      
| encrypted_password | string     | null: false              |
| email              | string     | null: false, unique:true |
| nick_name          | string     | null: false              |

### Association

- has_many  :resipes
- has_many  :onepoints

## recipesテーブル

| Column             | Type       | Options           |
| -------------------| ---------- | ------------------|
| title              | string     | null: false       |
| content            | text       | null: false       |
| material_name      | string     | null: false       |
| quantity_name      | string     |                   |
| quantity_id        | integer    | null: false       |
| user               | references | foreign_key: true |

### Association

- has_one :onepoints
- belongs_to :user

## onepointsテーブル

| Column              | Type       | Options           |
| --------------------| ---------- | ----------------- |
| title               | text       | null: false       |
| content             | text       | null: false       |
| recipe              | references | foreign_key: true |
| user                | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :recipe 
