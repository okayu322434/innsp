# README

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| id       | string | null: false |
| password | string | null: false |
| email1   | string | null: false |
| email2   | string | null: false |
| email3   | string | null: false |

### Association
- has_many :rooms
- has_many :comments
- has_many :answers
- has_many :bath_inspections
- has_many :bed_inspections
- has_many :room_inspections



## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| users  | references | null: false |
| room_no| integer| null: false |

### Association
- has_many :comments
- belongs_to :users
- belongs_to :answers
- belongs_to :bath_inspections
- belongs_to :bed_inspections
- belongs_to :room_inspections
- belongs_to :bath_answers
- belongs_to :bed_answers
- belongs_to :room_answers



## bath_answers テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| rooms   | references | null: false, foreign_key: true |
| users   | references | null: false |
| q1      | boolean   | null: false |
| q2      | boolean   | null: false |
| q3      | boolean   | null: false |
| q4      | boolean   | null: false |
| q5      | boolean   | null: false |
| q6      | boolean   | null: false |
| q7      | boolean   | null: false |
| q8      | boolean   | null: false |
| q9      | boolean   | null: false |
| q10     | boolean   | null: false |
| q11     | boolean   | null: false |
| q12     | boolean   | null: false |
| q13     | boolean   | null: false |
| q14     | boolean   | null: false |
| q15     | boolean   | null: false |
| comment | text      | null: false |

### Association

- belongs_to :rooms
- belongs_to :users
- belongs_to :bath_inspections



## room_answers テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| rooms   | references | null: false, foreign_key: true |
| users   | references | null: false |
| q1      | boolean   | null: false |
| q2      | boolean   | null: false |
| q3      | boolean   | null: false |
| q4      | boolean   | null: false |
| q5      | boolean   | null: false |
| q6      | boolean   | null: false |
| q7      | boolean   | null: false |
| q8      | boolean   | null: false |
| q9      | boolean   | null: false |
| q10     | boolean   | null: false |
| q11     | boolean   | null: false |
| q12     | boolean   | null: false |
| q13     | boolean   | null: false |
| q14     | boolean   | null: false |
| q15     | boolean   | null: false |
| comment | text      | null: false |

### Association

- belongs_to :rooms
- belongs_to :users
- belongs_to :room_inspections



## bed_answers テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| rooms   | references | null: false, foreign_key: true |
| users   | references | null: false |
| q1      | boolean   | null: false |
| q2      | boolean   | null: false |
| q3      | boolean   | null: false |
| q4      | boolean   | null: false |
| q5      | boolean   | null: false |
| q6      | boolean   | null: false |
| q7      | boolean   | null: false |
| q8      | boolean   | null: false |
| q9      | boolean   | null: false |
| q10     | boolean   | null: false |
| q11     | boolean   | null: false |
| q12     | boolean   | null: false |
| q13     | boolean   | null: false |
| q14     | boolean   | null: false |
| q15     | boolean   | null: false |
| comment | text      | null: false |

### Association

- belongs_to :users
- belongs_to :rooms
- belongs_to :bed_inspections



## bath_inspections テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| q1     | text   | null: false |
| q2     | text   | null: false |
| q3     | text   | null: false |
| q4     | text   | null: false |
| q5     | text   | null: false |
| q6     | text   | null: false |
| q7     | text   | null: false |
| q8     | text   | null: false |
| q9     | text   | null: false |
| q10    | text   | null: false |
| q11    | text   | null: false |
| q12    | text   | null: false |
| q13    | text   | null: false |
| q14    | text   | null: false |
| q15    | text   | null: false |

### Association

- belongs_to :user
- belongs_to :room



## room_inspections テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| q1     | text   | null: false |
| q2     | text   | null: false |
| q3     | text   | null: false |
| q4     | text   | null: false |
| q5     | text   | null: false |
| q6     | text   | null: false |
| q7     | text   | null: false |
| q8     | text   | null: false |
| q9     | text   | null: false |
| q10    | text   | null: false |
| q11    | text   | null: false |
| q12    | text   | null: false |
| q13    | text   | null: false |
| q14    | text   | null: false |
| q15    | text   | null: false |

### Association

- belongs_to :user
- belongs_to :room



## bed_inspections テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| q1     | text   | null: false |
| q2     | text   | null: false |
| q3     | text   | null: false |
| q4     | text   | null: false |
| q5     | text   | null: false |
| q6     | text   | null: false |
| q7     | text   | null: false |
| q8     | text   | null: false |
| q9     | text   | null: false |
| q10    | text   | null: false |
| q11    | text   | null: false |
| q12    | text   | null: false |
| q13    | text   | null: false |
| q14    | text   | null: false |
| q15    | text   | null: false |

### Association

- belongs_to :user
- belongs_to :room



## comments テーブル

| Column  | Type    | Options                        |
| ------- |  ------- | ------------------------------ |
| content    | string  |
| user | references | null: false, foreign_key: true |
| room | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :rooms
