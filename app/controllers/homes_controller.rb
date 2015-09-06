class HomesController < ApplicationController
	 
	  def index
 	  end

 	  def about
	  end

	  def program
	  end

	  def contact
		@home = Home.new
	  end

	  def create
	    @home = Home.new(params[:home])
	    @home.request = request
	    if @home.deliver
	      flash.now[:error] = nil
	      flash[:notice] = 'Thank you for your message!'
	      redirect_to contact_path
	    else
	      flash[:error] = 'Cannot send message.'
	      redirect_to contact_path
	    end
	  end



end
