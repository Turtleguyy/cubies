class User < ActiveRecord::Base
  attr_accessible :avatar, :city, :first_name, :last_name, :phone,
                  :state, :team_id, :user_name, :zip_code, :student_id,
                  :email, :password, :password_confirmation

  has_secure_password
  validates_uniqueness_of :user_name, :student_id
  validates_presence_of :user_name, :password, :password_confirmation, :student_id
end
