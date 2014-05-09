class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :jobs

  validates :name,	:presence => true,
     				:length => {:minimum => 3, :maximum => 24}

end
