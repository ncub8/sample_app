class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			#log user in
		else
			flash[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
	end
end