# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation


## tasksテーブル
|Column|Tyoe|Options|
|------|----|-------|
|title|string|null: false|
|detail|text||
|user_id|integer|null: false, foreign_key: true|
|type_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :task_type
- has_many :progress_records


## task_typesテープル
|Column|Type|Options|
|------|----|-------|
|type_name|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many :tasks
- belongs_to :user

## progress_recordsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: folse|
|user_id|integer|null: false|
|task_id|integer|null: false|

### Association
- belongs_to :task
- belongs_to :user


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :tasks
- has_many :task_types
- has_many :progress_records



* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

