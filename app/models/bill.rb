class Bill < ActiveRecord::Base
  attr_accessible :due_date, :name, :provider, :total_due, :user_id, :dwelling_id, :paid
  
  belongs_to :user
  belongs_to :dwelling
  
end
