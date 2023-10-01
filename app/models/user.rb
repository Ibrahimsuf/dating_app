class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :profile
  has_and_belongs_to_many :seen_profiles, join_table: "seen_profiles", class_name: "Profile"
  has_many :matches
  after_create :create_user_profile

  def full_name
    self.first_name + " " + self.last_name
  end

  def next_match_id
    unseen_profiles = Profile.where.not(id: self.seen_profiles.pluck(:id))
    unseen_profiles.sample.id
  end

  private
  def create_user_profile
    Profile.create(user: self)
  end

  def people_matched_with_user
    Match.where(matched_with_user_id: self.id)
  end
end
