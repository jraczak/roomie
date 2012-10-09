class Dwelling < ActiveRecord::Base
  attr_accessible :street_address, :city, :state, :zip, :nickname
  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  has_many :roomies, :class_name => "User"
  has_many :bills
  
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  
end
