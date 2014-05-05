class User < ActiveRecord::Base

  attr_accessible :user_name, :first_name, :last_name, :email, :password_confirmation, :role, :phone, :password

#check if password-conforiation is still necessary

  has_many :interests

  has_many :accounts
  has_many :agencies, through: :accounts

  has_many :jobs, through: :interests

  has_secure_password

end