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
