class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :profile
  after_create :create_user_profile

  private
  def create_user_profile
    Profile.create(user: self)
  end
end
