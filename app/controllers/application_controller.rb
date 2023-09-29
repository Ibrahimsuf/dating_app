class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        if resource.is_a?(User)
          profile_path(resource.profile) # Redirect to the user's profile show page
        else
          super
        end
    end
end
