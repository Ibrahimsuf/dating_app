class Match < ApplicationRecord
    has_one :user_1, class_name: 'User', foreign_key: 'user_1_id'
    has_one :user_2, class_name: 'User', foreign_key: 'user_2_id'
end