class VisitsController < ApplicationController

  def show
    @visit = Visit.find(params[:id])
  end
  
  def new
    @visit = Visit.new
  end
  
  def create
    @visit = Visit.create(params[:visit])
    @visit.user_id = current_user.id
    if @visit.save
      flash[:success] = "Alright, your visit is scheduled. Enjoy it!"
      redirect_to current_user.dwelling
    else
      render 'new'
    end
  end
  
  def destroy
    @visit = Bill.find(params[:id])
    @visit.destroy
    redirect_to current_user.dwelling
  end
  
  

end
