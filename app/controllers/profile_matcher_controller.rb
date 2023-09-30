class ProfileMatcherController < ApplicationController
    before_action :authenticate_user!
    def index
        redirect_to profile_path(current_user.next_match_id)
    end
end
