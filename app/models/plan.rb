class Plan < ActiveRecord::Base
  belongs_to :place
  belongs_to :user
  has_many :sights

end
