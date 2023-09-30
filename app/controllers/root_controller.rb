class RootController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user
      redirect_to(profile_path(current_user.profile))
    end
  end
end
