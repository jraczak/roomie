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


end
