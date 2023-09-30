class Profile < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :viewers, join_table: "seen_profiles", class_name: "User"
end
