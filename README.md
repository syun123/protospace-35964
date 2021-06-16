

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| profile            | text   | null: false |
|occupation          | text   | null: false |
|position            | text   | null: false |
### Association

- has_many :connents
- has_many :prototypes


## comments テーブル

| Column    | Type      | Options     |
| ------    | --------  | ----------- |
| text      | text      | null: false |
| user      | reference |             |
| prptotype | reference |             |

### Association

- belongs_to :users
- belongs_to :prototypes


## prototypes テーブル

| Column    | Type       |            
  Options                        
| ------    | ----------    | ------------------------------ 
| user      | references    |                               |
| title     | string        | null: false                   |
| catch_copy| text          | null: false                   |
| concept   | text          | null: false                   |
| image     | ActiveStorage |                               |

### Association

- has_many :comments
- belongs_to :users


