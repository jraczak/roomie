class Dwelling < ActiveRecord::Base
  attr_accessible :address, :nickname, :user_ids
  
  belongs_to :user
end
