class Dwelling < ActiveRecord::Base
  attr_accessible :address, :nickname, :user_ids
  
  has_many :users
end
