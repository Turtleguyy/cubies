class Client < ActiveRecord::Base
  attr_accessible :address, :city, :email, :phone, :primary_contact, :state,
                  :website, :zip_code, :client_name

  validates_presence_of :client_name
end
