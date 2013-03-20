class CreateTasks < ActiveRecord::Migration
  def up
    create_table :tasks do |t|
      t.string :project_id
      t.string :project_name
      t.string :client_name
      t.string :taskee_id
      t.string :assigned_to
      t.string :task_creator
      t.string :task_name
      t.string :task_description
      t.string :status
      t.string :priority
      t.string :due_date
      t.string :start_date

      t.timestamps
    end
  end

  def down
    drop_table :tasks
  end
end
