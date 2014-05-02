class User < ActiveRecord::Base
  attr_accessible :user_name, :first_name, :last_name, :email, :password
end
