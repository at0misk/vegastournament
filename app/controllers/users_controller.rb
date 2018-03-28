class UsersController < ApplicationController
	def create
		@user = User.new(team: params['team'], first: params['first'], last: params['last'], email: params['email'], phone: params['phone'], tournament_type: params['tournament_type'], agree: true)
		respond_to do |format|
			if @user.save
				# UserMailer.reg_email(@user).deliver_now
				format.json do 
					render json: @user
				end
			else
				format.json do
					render json: {"Error": "Did not save."}
				end
			end
		end
	end
end
