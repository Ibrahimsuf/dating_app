# app/models/ability.rb
class Ability
    include CanCan::Ability
  
    def initialize(user)
      user ||= User.new # guest user (not logged in)
  
      # Users can read any profile
      can :read, Profile
  
      # Users can edit their own profile
      can :update, Profile, user_id: user.id
    end
  end
  