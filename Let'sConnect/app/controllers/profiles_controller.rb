class ProfilesController < ApplicationController
 	layout 'profileLayout'

  before_action :authenticate_user!
 


def index
   # @profile = current_user.id
  # abort(current_user.profile.inspect)
end

def new
 @profile =  Profile.new
end

def create
	@profile = Profile.new(profile_params)
	@profile.user_id =current_user.id if current_user
	if @profile.save
		redirect_to profiles_path
	else
		redirect_to addPhoto_path
	end
end
def edit
	
end

def update
	#abort(params[:user_id].inspect)
      @profile = Profile.find_or_create_by(user_id: profile_params[:user_id])
    
     if @profile.update(profile_params)
			redirect_to profiles_url 
		else
			render_html "error"
	end
end



def delete
	@profile.image.purge
end
  
private

# Use strong_parameters for attribute whiteemaillisting
# Be sure to update your create() and update() controller methods.

def profile_params
	params.require(:profile).permit(:image,:user_id)
end


end





