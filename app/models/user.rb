class User < ActiveRecord::Base
<<<<<<< HEAD
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



=======
  attr_accessible :user_name, :first_name, :last_name, :email, :password

  has_secure_password

>>>>>>> 570bdfff03cae4d4b9214d03d2ca4f154bf673b4
end