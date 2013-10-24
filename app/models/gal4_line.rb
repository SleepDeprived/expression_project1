# == Schema Information
#
# Table name: gal4_lines
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  version             :integer
#  p_element_backbone  :string(255)
#  regulatory_sequence :text
#  gene                :string(255)
#  copynumber          :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Gal4Line < ActiveRecord::Base

  attr_accessible :name, :version, :p_element_backbone, :gene, :regulatory_sequence, :copynumber

  # has_many :chromosomes, :expression_profiles
  has_many :users, through: :collections
  has_many :collections
  has_many :expression_profiles

end
