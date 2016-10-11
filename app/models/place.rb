class Place < ActiveRecord::Base
  has_many :plans
  has_many :sights

end
