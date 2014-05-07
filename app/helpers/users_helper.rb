module UsersHelper

  def youth?(user)
    user.role != 'agency'
  end

end
