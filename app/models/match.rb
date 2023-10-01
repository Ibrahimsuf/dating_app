class Match < ApplicationRecord
    has_one :user_1, class_name: 'User', foreign_key: 'matching_user_id'
    has_one :user_2, class_name: 'User', foreign_key: 'matched_with_user_id'
end