class Task < ActiveRecord::Base
  attr_accessible :assigned_to, :client_name, :due_date, :priority, :project_id,
                  :project_name, :start_date, :status, :task_creator,
                  :task_description, :task_name, :taskee_id

  validates_presence_of :project_id, :task_name, :status
end
