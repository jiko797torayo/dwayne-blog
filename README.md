# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false unique: true|
|nickname|string|null: false, add_index|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :articles

## articlesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false unique: true|
|body|text|null: false, add_index|
|user_id|integer|null: false, references :user, foreign_key: true|
### Association
- belongs_to :user
