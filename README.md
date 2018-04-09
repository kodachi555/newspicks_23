## usersテーブル

|Column|Type|Options|
|------|----|-------|
|first_name|String|index: true, null: false|
|second_name|String|index: true, null: false|
|email|String|null: false, unique: true|
|icon|Text|
|company name|String|
|position|String|
|profile|String|

### Association
- has_many :picks
- has_many :follows
- has_many :likes


## followsテーブル

|Column|Type|Option|
|------|----|------|
|user_id|integer|foreign_key :true|
|follow_user_id|integer|foreign_key :true|

### Associpation
- belongs_to :user


## productsテーブル

|Column|Type|Option|
|------|----|------|
|title|String|index :true, null: false|
|image_url|String||
|page_url|String||
|category_id|integer|null: false, foreign_key :true|

### Association
- has_many :picks
- belongs_to :category


## picksテーブル

|Column|Type|Option|
|------|----|------|
|comment|text||
|product_id|integer|foreign_key :true|
|user_id|integer|foreign_key :true|

### Association
- belongs_to :user
- belongs_to :product
- has_many :likes

## Likesテーブル
|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false,foreign_key: true|
|pick_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :pick

## categorysテーブル
|Column|Type|Option|
|------|----|------|
|name|String|null: false|

### Association
- has_many :products
