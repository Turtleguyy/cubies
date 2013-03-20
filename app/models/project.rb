class Project < ActiveRecord::Base
  attr_accessible :client_id, :client_name, :due_date, :primary_contact_name,
                  :project_description, :project_name, :start_date, :status, :user_id

  validates_presence_of :project_name, :status
end
