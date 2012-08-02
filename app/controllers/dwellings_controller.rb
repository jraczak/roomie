class DwellingsController < ApplicationController
  
  before_filter :signed_in_user

  def show
    @dwelling = Dwelling.find(params[:id])
  end
  
  def new
    @dwelling = Dwelling.new
  end
  
  def create
    @dwelling = current_user.build_dwelling(params[:dwelling])
    if @dwelling.save
      flash[:success] = "Woohoo! Your dwelling has been created. Welcome home!"
      redirect_to current_user
    else
      render 'new'
    end
  end
  
  def destroy
  end

end
