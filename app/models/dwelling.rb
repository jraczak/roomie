class Dwelling < ActiveRecord::Base
  attr_accessible :street_address, :city, :state, :zip, :nickname
  
  searchable do
    text :nickname
    text :street_address
  end
  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  has_many :roomies, :class_name => "User"
  
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  
   def self.search(q)
     @search = Sunspot.search(Dwelling) do
       fulltext q 
     end
   end
  
end
