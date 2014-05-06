
class User < ActiveRecord::Base

  attr_accessible :user_name, :first_name, :last_name, :email, :password_confirmation, :role, :phone, :password

  # validates :user_name, :first_name, :last_name, :email, presence: true
  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  # validates :email, :user_name, uniqueness: true

  has_many :interests
  has_many :jobs, through: :interests
  has_many :accounts
  has_many :agencies, through: :accounts

# has_secure_password

############# added the below method for facebook auth ##########

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!(validations: false)
    end
  end

###################################################################

  def full_name # changed name away from 'name' to avoid conflict with line 23 above...
    self.first_name + " " + self.last_name
  end

end