class Admins::RegistrationsController < Devise::RegistrationsController
  	
  	def after_sign_in_path_for(admins)
	  	new_tour_program_path
  	end

end



