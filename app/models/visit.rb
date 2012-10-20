class Visit < ActiveRecord::Base
  attr_accessible :description, :end_date, :number_of_guests, :start_date
end
