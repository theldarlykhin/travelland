class Admins::SessionsController < Devise::SessionsController
  	
  	layout "backend"
  	def after_sign_in_path_for(admins)
		new_tour_program_path
	end

end
