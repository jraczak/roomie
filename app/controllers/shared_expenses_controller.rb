class SharedExpensesController < ApplicationController

  def new
    @shared_expense = SharedExpense.new
  end
  
  def create
    @shared_expense = SharedExpense.create(params[:shared_expense])
    @shared_expense.dwelling_id = current_user.dwelling.id
    if @shared_expense.save
      flash[:success] = "Your new shared expense has been successfully saved."
      redirect_to current_user.dwelling
    else
      render 'new'
    end
  end
  
  def change_owner
    @shared_expense = SharedExpense.find(params[:id])
    current_owner = @shared_expense.user
    roomies = @shared_expense.dwelling.roomies.sort_by { |roomie| roomie.id }
    next_owner_index = roomies.index {|roomie| roomie.id == current_owner.id} + 1
    next_owner = roomies[next_owner_index]
    @shared_expense.user = next_owner
    redirect_to current_user.dwelling
  end
    


end
