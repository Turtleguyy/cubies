class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :primaryContact
      t.string :phone
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :website
      t.string :email

      t.timestamps
    end
  end
end
