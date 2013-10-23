class Chromosome < ActiveRecord::Base

  attr_accessible :location

  belongs_to :gal4_line

end
