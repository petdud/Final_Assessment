class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_parmas)
		  if @user.save
		    redirect_to bookmarks_path, :notice => "Signed up!"
		  else
		    render "new"
		  end
  end

  private
  def user_params
  	params.require(:user).permit(:email, :password)
  end

end
