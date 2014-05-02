class Job < ActiveRecord::Base
  belongs_to :agency
  belongs_to :category

  attr_accessible :agency, :category, :heading, :description, :location, :date

  validates :agency, :category, :heading, :description, :location, :date, :presence => true
  validates :heading, :location, :date, length: { maximum: 65 }
  validates :description, length: { maximum: 600 }
end