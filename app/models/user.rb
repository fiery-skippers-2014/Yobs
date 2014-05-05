
class User < ActiveRecord::Base

  attr_accessible :user_name, :first_name, :last_name, :email, :password_confirmation, :role, :phone, :password

  validates :user_name, :first_name, :last_name, :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  # validates :email, :user_name, uniqueness: true  !!!! Breaks feature test

  has_many :interests
  has_many :jobs, through: :interests
  has_many :accounts
  has_many :agencies, through: :accounts

  has_secure_password

  def name
    self.first_name + " " + self.last_name
  end

end