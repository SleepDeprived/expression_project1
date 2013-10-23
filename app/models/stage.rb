class Stage < ActiveRecord::Base

  attr_accessible :name, :time_range, :order

  belongs_to :expression_profiles

end


