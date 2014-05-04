class Agency < ActiveRecord::Base
  attr_accessible :address, :name, :phone_number

  has_many :jobs

  has_many :accounts
  has_many :users, through: :accounts

  validates :name, :address, :phone_number, :presence => true
  validates :phone_number, length: { minimum: 10 }
end
