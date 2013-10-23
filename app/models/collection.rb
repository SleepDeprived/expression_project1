class Collection < ActiveRecord::Base

  attr_accessible :name

  belongs_to :user, :dependent => :destroy
  belongs_to :gal4_lines

end
