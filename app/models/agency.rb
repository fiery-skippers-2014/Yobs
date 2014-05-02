class Agency < ActiveRecord::Base
  attr_accessible :address, :name, :phone_number
  has_many :jobs

  validates :name, :address, :phone_number, :presence => true
  validates :phone_number, length: { minimum: 10 }
end
