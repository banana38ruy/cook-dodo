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
| image              | string     | null: false       |
| user               | references | foreign_key: true |

## materialsテーブル

| Column             | Type       | Options           |
| -------------------| ---------- | ------------------|
| material_name      | string     | null: false       |
| quantity_name      | string     |                   |
| material_id        | integer    | null: false       |
| recipe             | references | foreign_key: true |

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
