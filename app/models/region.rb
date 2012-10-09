# coding: utf-8

class Region < ActiveRecord::Base
  has_ancestry

  attr_accessible :name
end
