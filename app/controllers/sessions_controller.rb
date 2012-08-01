class SessionsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      flash[:success] = "Welcome back, #{user.first_name}!"
      redirect_to user
    else
      flash.now[:error] = "Woops. Your email and password combination wasn't valid. Try again"
      render 'new'
    end
  end
  
  def destroy
    sign_out
    flash[:success] = "You've been successfully signed out. See you soon!"
    redirect_to root_path
  end

end
