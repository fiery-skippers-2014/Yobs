class Account < ActiveRecord::Base
  belongs_to :user
  belongs_to :agency

  attr_accessible :user_id, :agency_id

end