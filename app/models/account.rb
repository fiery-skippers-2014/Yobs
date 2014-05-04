class Account < ActiveRecord::Base
  belongs_to :user
  belongs_to :agency

  attr_accessible :user_id, :agency_id

  validates :user_id, :agency_id, presence: true

end