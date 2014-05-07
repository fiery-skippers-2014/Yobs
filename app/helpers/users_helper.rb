module UsersHelper

  def agency?(user)
    user.role == 'agency'
  end

end
