require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :user_name, :first_name, :last_name, :email, :password_confirmation, :role, :phone, :password

  has_many :users_jobs
  has_many :jobs, :through => :users_jobs

  include BCrypt

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end



end