module UsersHelper

  def youth?(user)
    user.role != 'agency'
  end

  def user_interested?(job, user)
  	job.users.exists?(user)
  end

end
