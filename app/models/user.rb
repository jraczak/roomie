class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :zip, :dwelling_id
  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  before_create :create_remember_token
  
  belongs_to :dwelling
  has_many :properties, :class_name => "Dwelling", :foreign_key => "owner_id"
  
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: { :on => :create }, length: { minimum: 6, :on => :create }
  validates :password_confirmation, presence: { :on => :create }
  
  validates :zip, presence: true, length: { is: 5 }
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

end
