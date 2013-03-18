class Task < ActiveRecord::Base
  attr_accessible :assignedTo, :clientName, :dueDate, :priority, :projectID,
                  :projectName, :startDate, :status, :taskCreator,
                  :taskDescription, :taskName, :taskeeID

  validates_presence_of :projectID, :taskName, :status
end
