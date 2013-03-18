class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :projectID
      t.string :projectName
      t.string :clientName
      t.string :taskeeID
      t.string :assignedTo
      t.string :taskCreator
      t.string :taskName
      t.string :taskDescription
      t.string :status
      t.string :priority
      t.string :dueDate
      t.string :startDate

      t.timestamps
    end
  end
end
