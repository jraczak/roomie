class UsersController < ApplicationController

  before_filter :signed_in_user, only: [:edit, :update]
  before_filter :correct_user, only: [:edit, :update]
  
  def index
    @users = User.search(params[:email])
  end
  
  def show
    @user = User.find(params[:id])
  end
 
  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "We've successfully created your account. Welcome to Roomie!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Your account has been successfully updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def find_user
    @user = User.where(params[:email])
    flash[:success] = "You searched for #{:email}"
    redirect_to current_user.dwelling
  end
  
  private
  
    def signed_in_user
    unless signed_in?
    store_location
      redirect_to signin_path, notice: "Woops. You need to be signed in to continue with this. Please sign in before continuing."
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
    
  end

end
