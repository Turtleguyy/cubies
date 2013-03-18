class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :teamID
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :avatar

      t.timestamps
    end
  end
end
