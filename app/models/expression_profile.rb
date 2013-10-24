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

  attr_accessible :gal4_line_id, :start_stage_id, :end_stage_id, :assessed_by, :locations_attributes, :comments

  # belongs_to :start_stage_id, :class_name => "Stage", :foreign_key => :stage_id
  # belongs_to :end_stage_id, :class_name => "Stage", :foreign_key => :stage_id

  belongs_to :stage
  belongs_to :gal4_line
  has_and_belongs_to_many :locations

  accepts_nested_attributes_for :locations

#   def self.stages
#     @stages
#   end

#   @stages = {
# e1:     "0 "                   ,
# e2:     "15 - 70 min AEL"      ,
# e3:     "70 - 90 min AEL"      ,
# e4:     "90 - 130 min AEL"     ,
# e5:     "130 - 180 min AEL"    ,
# e6:     "180 - 195 min AEL"    ,
# e7:     "195- 200 min AEL"     ,
# e8:     "200 - 230 min AEL"    ,
# e9:     "230 - 260 min AEL"    ,
# e10:    "260 - 320 min AEL"    ,
# e11:    "320 - 440 min AEL"    ,
# e12:    "440 - 580 min AEL"    ,
# e13:    "560 - 620 min AEL"    ,
# e14:    "620 - 680 min AEL"    ,
# e15:    "680 - 800 min AEL"    ,
# e16:    "800 - 900 min AEL"    ,
# e17:    "15 - 22 hours AEL"    ,
# L1:    "24 - 49 hours AEL"    ,
# L2:    "49 - 72 hours AEL"    ,
# L1:    "3 - 5 days AEL"       ,
# P1:    "0 - 1 hours APF"      ,
# P2:    "1 - 3 hours APF"      ,
# P3:    "3 - 6.5 hours APF"    ,
# P4:    "6.5 - 12.5 hours APF" ,
# P5:    "12.5 - 25 hours APF"  ,
# P6:    "25 - 43 hours APF"    ,
# P7:    "43 - 47 hours APF"    ,
# P8:    "47 - 57 hours APF"    ,
# P9:    "57 - 69 hours APF"    ,
# P10:   "69 - 73 hours APF"    ,
# P11:   "73 - 78 hours APF"    ,
# P12:   "73 - 78 hours APF"    ,
# P13:   "78 - 87 hours APF"    ,
# P14:   "87 - 90 hours APF"    ,
# P15:   "90 - 103 hours APF"   ,
# Adult: ">103 hours APF"       ,
# }


end

