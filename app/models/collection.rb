class Collection < ActiveRecord::Base

  attr_accessible :name

  belongs_to :user, :dependent => :destroy
  has_many :gal4_lines

end
