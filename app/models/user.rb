class User < ActiveRecord::Base

  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
  # has_secure_password

  # validates :email, :uniqueness => true
  # validates :email, :password, :password_confirmation, :presence => true
  # validates :password, :password_confirmation, :length => {in: 6..30}

  has_many :collections
  has_many :gal4_lines, through: :collections

end

