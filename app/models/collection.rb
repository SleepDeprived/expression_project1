# == Schema Information
#
# Table name: collections
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  gal4_line_id :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Collection < ActiveRecord::Base

  attr_accessible :name, :gal4_line_id, :user_id

  belongs_to :user, :dependent => :destroy
  belongs_to :gal4_line

end
