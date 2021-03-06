# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base

  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
  has_secure_password

  validates :email, :uniqueness => true
  validates :first_name, :last_name, :email, :password, :password_confirmation, :presence => true
  validates :password, :password_confirmation, :length => {in: 6..30}
  # OPTIMIZE the email validation to make sure that users actually input an email

  has_many :collections
  has_many :gal4_lines, through: :collections

end
