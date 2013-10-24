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

  belongs_to :gal4_line
  has_and_belongs_to_many :locations

  accepts_nested_attributes_for :locations

  @stages = {
  name: ["1",     "0 "                   ],
  name: ["2",     "15 - 70 min AEL"      ],
  name: ["3",     "70 - 90 min AEL"      ],
  name: ["4",     "90 - 130 min AEL"     ],
  name: ["5",     "130 - 180 min AEL"    ],
  name: ["6",     "180 - 195 min AEL"    ],
  name: ["7",     "195- 200 min AEL"     ],
  name: ["8",     "200 - 230 min AEL"    ],
  name: ["9",     "230 - 260 min AEL"    ],
  name: ["10",    "260 - 320 min AEL"    ],
  name: ["11",    "320 - 440 min AEL"    ],
  name: ["12",    "440 - 580 min AEL"    ],
  name: ["13",    "560 - 620 min AEL"    ],
  name: ["14",    "620 - 680 min AEL"    ],
  name: ["15",    "680 - 800 min AEL"    ],
  name: ["16",    "800 - 900 min AEL"    ],
  name: ["17",    "15 - 22 hours AEL"    ],
  name: ["L1",    "24 - 49 hours AEL"    ],
  name: ["L2",    "49 - 72 hours AEL"    ],
  name: ["L1",    "3 - 5 days AEL"       ],
  name: ["P1",    "0 - 1 hours APF"      ],
  name: ["P2",    "1 - 3 hours APF"      ],
  name: ["P3",    "3 - 6.5 hours APF"    ],
  name: ["P4",    "6.5 - 12.5 hours APF" ],
  name: ["P5",    "12.5 - 25 hours APF"  ],
  name: ["P6",    "25 - 43 hours APF"    ],
  name: ["P7",    "43 - 47 hours APF"    ],
  name: ["P8",    "47 - 57 hours APF"    ],
  name: ["P9",    "57 - 69 hours APF"    ],
  name: ["P10",   "69 - 73 hours APF"    ],
  name: ["P11",   "73 - 78 hours APF"    ],
  name: ["P12",   "73 - 78 hours APF"    ],
  name: ["P13",   "78 - 87 hours APF"    ],
  name: ["P14",   "87 - 90 hours APF"    ],
  name: ["P15",   "90 - 103 hours APF"   ],
  name: ["Adult", ">103 hours APF"       ],
}


end

