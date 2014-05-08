class Interest < ActiveRecord::Base

	attr_accessible :id, :user_id, :job_id, :response

	belongs_to :user
	belongs_to :job

  validates :user_id, :job_id, presence: true
  validates_uniqueness_of :job_id, :scope => :user_id
end
