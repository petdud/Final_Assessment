class SessionsController < ApplicationController

	def new

	end

	def create
		byebug
	  user = User.authenticate(params[:session][:email], params[:session][:password])
	  if user
	    session[:user_id] = user.id
	    redirect_to bookmarks_path, :notice => "Logged in!"
	  else
	    render "new"
	  end
	end
end
