class JobType < ActiveRecord::Base
  attr_accessible :name

  has_ancestry
end
