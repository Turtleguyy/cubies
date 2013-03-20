class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.string :client_id
      t.string :project_name
      t.string :project_description
      t.string :status
      t.string :due_date
      t.string :start_date
      t.string :client_name
      t.string :primary_contact_name
      t.string :student_id

      t.timestamps
    end
  end

  def down
    drop_table :projects
  end
end
