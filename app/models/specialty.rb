class Specialty < ActiveRecord::Base
  has_ancestry

  attr_accessible :name
end
