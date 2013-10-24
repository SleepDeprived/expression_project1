# == Schema Information
#
# Table name: chromosomes
#
#  id           :integer          not null, primary key
#  location     :string(255)
#  gal4_line_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Chromosome < ActiveRecord::Base

  attr_accessible :location

  belongs_to :gal4_line

end
