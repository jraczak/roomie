class BillsController < ApplicationController

  def show
    @bill = Bill.find(params[:id])
  end
  
  def new
    @bill = Bill.new
  end
  
  def create
    @bill = Bill.create(params[:bill])
    @bill.dwelling_id = current_user.dwelling.id
    if @bill.save
      flash[:success] = "Success! We've added your new bill."
      redirect_to current_user.dwelling
    else
      render 'new'
    end
  end
  
  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.create(params[:bill])
    @bill.dwelling_id = current_user.dwelling.id
    if @bill.save
      flash[:success] = "Success! We've added your new bill."
      redirect_to current_user.dwelling
    else
      render 'new'
    end
  end
  
  def mark_as_paid
    @bill = Bill.find(params[:id])
    @bill.paid = true
    @bill.save
    redirect_to current_user.dwelling
  end

end
