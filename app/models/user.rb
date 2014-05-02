require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :user_name, :first_name, :last_name, :email, :password_hash

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end