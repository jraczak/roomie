class Dwelling < ActiveRecord::Base
  attr_accessible :street_address, :city, :state, :zip, :nickname
  
  belongs_to :user
  
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :user_id, presence: true
  
end
