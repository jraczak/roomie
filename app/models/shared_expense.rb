class SharedExpense < ActiveRecord::Base
  attr_accessible :dwelling_id, :last_purchased, :name, :stocked, :user_id
  
  belongs_to :dwelling
  #belongs_to :owner, class_name: 'User'
  belongs_to :user


end
