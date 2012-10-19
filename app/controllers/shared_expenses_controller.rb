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
  
  # Updates the "user" of the object to the next user in the array of roomies via user_id
  def change_owner
    @shared_expense = SharedExpense.find(params[:id])
    current_owner = @shared_expense.user
    roomies = @shared_expense.dwelling.roomies.sort_by { |roomie| roomie.id }
    next_owner_index = roomies.index {|roomie| roomie.id == current_owner.id} + 1
    
    if roomies[next_owner_index] != nil
      @shared_expense.user_id = roomies[next_owner_index].id
    else
      @shared_expense.user_id = roomies[0].id
    end
    
    @shared_expense.last_purchased = Time.now.to_date
    @shared_expense.save
    redirect_to current_user.dwelling
  end
    


end
