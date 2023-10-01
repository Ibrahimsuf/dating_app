class Match < ApplicationRecord
    belongs_to :matching_user, class_name: 'User', foreign_key: 'matching_user_id'
    belongs_to :matched_with_user, class_name: 'User', foreign_key: 'matched_with_user_id'
 end   