class User < ActiveRecord::Base
  has_secure_password
  has_many :employees
  has_many :reviews
end
