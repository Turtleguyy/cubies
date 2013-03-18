class User < ActiveRecord::Base
  attr_accessible :avatar, :city, :first_name, :last_name, :phone,
                  :state, :teamID, :user_name, :zipcode,
                  :email, :password, :password_confirmation

  has_secure_password
  validates_uniqueness_of :user_name
  validates_presence_of :user_name, :password, :password_confirmation
end
