class Client < ActiveRecord::Base
  attr_accessible :address, :city, :email, :phone, :primaryContact, :state,
                  :website, :zipcode, :clientName

  validates_presence_of :clientName
end
