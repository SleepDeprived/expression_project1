class ExpressionProfile < ActiveRecord::Base

  attr_accessible :assessed_by

  has_many :stages
  belongs_to :gal4_line
  has_and_belongs_to_many :locations

end
