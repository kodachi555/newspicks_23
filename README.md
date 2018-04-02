## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|String|index: true, null: false|
|email|String|null: false, unique: true|

### Association
- has_many :picks
- has_many :follows


## followsテーブル

|Column|Type|Option|
|------|----|------|
|user_id|integer|foreigh_key :true|
|follow_user_id|integer|foreign_keu :true|

### Associpation
- belongs_to :user


## productsテーブル

|Column|Type|Option|
|------|----|------|
|title|String|index :true, null: false|
|image_urg|String||
|page_url|String||

### Association
- has_many :picks


##picksテーブル

|Column|Type|Option|
|------|----|------|
|comment|text||
|news_id|integer|foreign_key :true|
|user_id|integer|foreign_key :true|

### Association
- belongs_to :user
- belongs_to :product
