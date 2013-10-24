# == Schema Information
#
# Table name: expression_profiles
#
#  id             :integer          not null, primary key
#  gal4_line_id   :integer
#  start_stage_id :integer
#  end_stage_id   :integer
#  assessed_by    :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ExpressionProfile < ActiveRecord::Base

  attr_accessible :assessed_by

  has_many :stages
  belongs_to :gal4_line
  has_and_belongs_to_many :locations

end
