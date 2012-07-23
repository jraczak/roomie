class DwellingsController < ApplicationController

  def show
    @dwelling = Dwelling.find(params[:id])
  end
  
  def new
    @dwelling = Dwelling.new
  end
  
  def create
  end

end
