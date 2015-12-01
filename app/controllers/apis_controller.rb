class ApisController < ApplicationController


  def show
  	barbecue=Barbecue.find_by(id: params[:barbecue_id])
  	render json: barbecue
  end

  def create
  	barbecue=Barbecue.find_by(id: params[:barbecue_id])
  	if user_signed_in?
  		user_to_barbecue=barbecue.users.push current_user
  		# current_user.barbecues.push barbecue
	    render json: user_to_barbecue, status: :created
	end
  end
end
