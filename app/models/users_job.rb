class UsersJob < ActiveRecord::Base

	attr_accessible :user_id, :job_id

	belongs_to :user
	belongs_to :job
end
