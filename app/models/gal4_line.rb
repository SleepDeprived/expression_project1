class Gal4Line < ActiveRecord::Base

  attr_accessible :name, :version, :p_element_backbone, :gene, :regulatory_sequence, :copynumber

  # has_many :chromosomes, :expression_profiles
  has_many :users, through: :collections
  has_many :collections

end
