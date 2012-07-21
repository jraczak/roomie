class Dwelling < ActiveRecord::Base
  attr_accessible :address, :nickname, :user_ids
  
  has_and_belongs_to_many :users
end
