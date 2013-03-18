class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :clientID
      t.string :projectName
      t.string :projectDescription
      t.string :status
      t.string :dueDate
      t.string :startDate
      t.string :clientName
      t.string :primaryContactName

      t.timestamps
    end
  end
end
