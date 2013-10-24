# == Schema Information
#
# Table name: stages
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  time_range :string(255)
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stage < ActiveRecord::Base

  attr_accessible :name, :time_range, :order

  has_many :expression_profiles

end


