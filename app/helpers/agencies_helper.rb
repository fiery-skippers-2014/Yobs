module AgenciesHelper

def get_interest(userId, jobId)
  interest = Interest.where("user_id = ? AND job_id = ?", userId, jobId).first
end

end