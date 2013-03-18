class Project < ActiveRecord::Base
  attr_accessible :clientID, :clientName, :dueDate, :primaryContactName,
                  :projectDescription, :projectName, :startDate, :status

  validates_presence_of :projectName, :status
end
