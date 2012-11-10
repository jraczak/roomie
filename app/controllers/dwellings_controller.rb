class DwellingsController < ApplicationController
  
  before_filter :signed_in_user
  
  def show
    @dwelling = Dwelling.find(params[:id])
  end
  
  def new
    @dwelling = Dwelling.new
  end
  
  def create
    @dwelling = current_user.properties.build(params[:dwelling])
    
    if @dwelling.save
      current_user.dwelling = @dwelling
      if current_user.save
        flash[:success] = "Woohoo! Your dwelling has been created. Welcome home!"
      else
      flash[:notice] = "You have successfully created a dwelling, but something prevented us from adding you as a roomie. Please email support so we can try to correct this for you."
      end
      redirect_to current_user
      else
      render 'new'
    end
  end
  
  def destroy
  end
  
  # Methods related to Roomies
  
end