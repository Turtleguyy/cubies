class CreateClients < ActiveRecord::Migration
  def up
    create_table :clients do |t|
      t.string :contact_name
      t.string :primary_contact
      t.string :phone
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :website
      t.string :email

      t.timestamps
    end
  end

  def down
    drop_table :clients
  end
end
