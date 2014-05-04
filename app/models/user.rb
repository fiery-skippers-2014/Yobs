
class User < ActiveRecord::Base

  attr_accessible :user_name, :first_name, :last_name, :email, :password_confirmation, :role, :phone, :password

  validates :user_name, :first_name, :last_name, :email, :password, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, :user_name, uniqueness: true
#check if password-confirmation is still necessary

  has_many :interests
  has_many :jobs, through: :interests
  has_many :accounts
  has_many :agencies, through: :accounts

  has_secure_password

end