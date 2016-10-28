class PagesController < ApplicationController
	
	def index
		route_to_redirect = if user_signed_in?
								user_path(current_user)
							else
								new_user_session
							end
		redirect_to(route_to_redirect)							
	end

end