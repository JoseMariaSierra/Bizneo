class PagesController < ApplicationController
    def index
        route_to_redirect = if user_signed_in?
                                user_path(current_user)
                            else
                                new_user_registration_path
                            end
        
        redirect_to(route_to_redirect)
    end
end